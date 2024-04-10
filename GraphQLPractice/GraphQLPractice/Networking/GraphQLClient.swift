//
//  GraphQLClient.swift
//  GraphQLPractice
//
//  Created by a.antoniak on 31.03.2024.
//

import Apollo
import Foundation

protocol GraphQLClientProtocol: AnyObject {
    @discardableResult
    func perform<Mutation: GraphQLMutation>(
        mutation: Mutation,
        publishResultToStore: Bool,
        queue: DispatchQueue,
        resultHandler: GraphQLResultHandler<Mutation.Data>?
    ) -> Cancellable
    
    @discardableResult
    func fetch<Query: GraphQLQuery>(
        query: Query,
        cachePolicy: CachePolicy,
        contextIdentifier: UUID?,
        queue: DispatchQueue,
        resultHandler: GraphQLResultHandler<Query.Data>?
    ) -> Cancellable
}

final class GraphQLClient: GraphQLClientProtocol {
    private let apollo: ApolloClientProtocol
    
    init?() {
        guard let endpointURL = URL(string: AppConstants.Github.graphQLApiUrl) else {
            print("⚠️ Could not init GraphQL client. Incorrect URL")
            return nil
        }
        guard let token = AppConstants.Github.accessToken else {
            print("⚠️ Could not init GraphQL client. Missing Github access token")
            return nil
        }
        
        // ApolloStore is the cache used for GraphQL response data.
        // The default cache stores response data in-memory.
        // This data is not persisted between application runs.
        let store = ApolloStore()
        
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = [
            "authorization": "Bearer \(token)"
        ]
        
        let client = URLSessionClient(
            sessionConfiguration: configuration,
            callbackQueue: nil
        )
        
        let interceptor = CustomInterceptorProvider(
            client: client,
            store: store
        )
        
        // Passes a request through a chain of interceptors that can interact with
        // the request both before and after it's transmitted.
        // Uses standard HTTP requests to communicate with the server.
        let requestChainTransport = RequestChainNetworkTransport(
            interceptorProvider: interceptor,
            endpointURL: endpointURL
        )
        
        apollo = ApolloClient(
            networkTransport: requestChainTransport,
            store: store
        )
    }
    
    @discardableResult
    func fetch<Query: GraphQLQuery>(
        query: Query,
        cachePolicy: CachePolicy = .default,
        contextIdentifier: UUID? = nil,
        queue: DispatchQueue = .main,
        resultHandler: GraphQLResultHandler<Query.Data>? = nil
    ) -> Cancellable {
        return apollo.fetch(
            query: query,
            cachePolicy: .fetchIgnoringCacheCompletely,
            contextIdentifier: contextIdentifier,
            queue: queue,
            resultHandler: resultHandler
        )
    }
    
    @discardableResult
    func perform<Mutation: GraphQLMutation>(
        mutation: Mutation,
        publishResultToStore: Bool = true,
        queue: DispatchQueue = .main,
        resultHandler: GraphQLResultHandler<Mutation.Data>? = nil
    ) -> Cancellable {
        return apollo.perform(
            mutation: mutation,
            publishResultToStore: publishResultToStore,
            queue: queue,
            resultHandler: resultHandler
        )
    }
}

final class CustomInterceptorProvider: InterceptorProvider {
    private let client: URLSessionClient
    private let store: ApolloStore
    
    init(client: URLSessionClient = URLSessionClient(), store: ApolloStore) {
        self.client = client
        self.store = store
    }
    
    func interceptors<Operation: GraphQLOperation>(for operation: Operation) -> [ApolloInterceptor] {
        [
            // Pre-network interceptor. Reads data from the Apollo iOS cache before an operation
            // is executed on the server, according to that operation's cachePolicy.
            CacheReadInterceptor(store: store),
            // Network interceptor. Takes a URLSessionClient and uses it to send
            // the prepared HTTPRequest (or subclass thereof) to the GraphQL server.
            NetworkFetchInterceptor(client: client),
            // Post-network interceptor. Parses a GraphQL server's JSON response into 
            // a GraphQLResult object and attaches it to the HTTPResponse.
            JSONResponseParsingInterceptor(),
            // Network interceptor. A persisted query is a query string that's cached on the server side,
            // along with its unique identifier (always its SHA-256 hash).
            // Clients can send this identifier instead of the corresponding query string,
            // thus reducing request sizes dramatically (response sizes are unaffected).
            AutomaticPersistedQueryInterceptor(),
            // Post-network interceptor. Writes response data to the Apollo iOS cache after
            // an operation is executed on the server, according to that operation's cachePolicy.
            CacheWriteInterceptor(store: store)
        ]
    }
}
