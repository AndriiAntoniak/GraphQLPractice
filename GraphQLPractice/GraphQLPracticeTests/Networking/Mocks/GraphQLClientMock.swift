//
//  GraphQLClientMock.swift
//  GraphQLPracticeTests
//
//  Created by a.antoniak on 11.04.2024.
//

@testable import GraphQLPractice
import Apollo
import Foundation

protocol GraphQLResultProtocol {
    associatedtype Data: RootSelectionSet
}

extension GraphQLResult: GraphQLResultProtocol { }

typealias GraphQLClientResult = Result<any GraphQLResultProtocol, Error>


final class GraphQLClientMock: GraphQLClientProtocol {
    var fetchResult: () -> GraphQLClientResult = { .failure(NetworkingError.fetchFailed) }
    
    func fetch<Query>(
        query: Query,
        cachePolicy: CachePolicy,
        contextIdentifier: UUID?,
        queue: DispatchQueue,
        resultHandler: GraphQLResultHandler<Query.Data>?
    ) -> Cancellable where Query : ApolloAPI.GraphQLQuery {
        switch fetchResult() {
        case .success(let result):
            if let graphQLResult = result as? GraphQLResult<Query.Data> {
                resultHandler?(.success(graphQLResult))
            } else {
                resultHandler?(.failure(NetworkingError.fetchFailed))
            }
        case .failure(let error):
            resultHandler?(.failure(error))
        }
        return EmptyCancellable()
    }
    
    func perform<Mutation>(
        mutation: Mutation,
        publishResultToStore: Bool,
        queue: DispatchQueue,
        resultHandler: GraphQLResultHandler<Mutation.Data>?
    ) -> Cancellable where Mutation : ApolloAPI.GraphQLMutation {
        // TODO: It needs to be configured. The algorithm is very similar to the fetch method.
        return EmptyCancellable()
    }
}
