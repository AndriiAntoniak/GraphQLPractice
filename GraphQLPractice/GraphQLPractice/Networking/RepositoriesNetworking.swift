//
//  RepositoriesNetworking.swift
//  GraphQLPractice
//
//  Created by a.antoniak on 31.03.2024.
//

import Apollo
import Foundation

typealias User = GraphQLSchema.GetUserQuery.Data.Viewer
typealias UserResult = Result<User, NetworkingError>

typealias Repository = GraphQLSchema.GetRepositoriesByUsernameQuery.Data.User.Repositories.Node
typealias RepositoriesResult = Result<[Repository], NetworkingError>

typealias MutationRepository = GraphQLSchema.AddNewRepositoryWithInputMutation.Data.CreateRepository.Repository
typealias CreateNewRepoResult = Result<MutationRepository, NetworkingError>

protocol RepositoriesNetworkingProtocol {
    var graphQLClient: GraphQLClientProtocol? { get }
    
    init(graphQLClient: GraphQLClientProtocol?)
    
    func fetchUser() async -> UserResult
    func fetchRepositories(username: String) async -> RepositoriesResult
    
    func createNewRepository(_ input: RepositoryInput) async -> CreateNewRepoResult
}

final class RepositoriesNetworking: RepositoriesNetworkingProtocol {
    var graphQLClient: GraphQLClientProtocol?
    
    init(graphQLClient: GraphQLClientProtocol?) {
        self.graphQLClient = graphQLClient
    }
    
    func fetchUser() async -> UserResult {
        guard let graphQLClient else {
            return .failure(.corruptedGraphQLClient)
        }
        
        return await withCheckedContinuation { continuation in
            graphQLClient.fetch(query: GraphQLSchema.GetUserQuery()) { result in
                switch result {
                case .success(let graphQLResult):
                    guard let user = graphQLResult.data?.viewer else {
                        print("⚠️ GraphQL result data is nil")
                        return continuation.resume(returning: .failure(.dataIsNil))
                    }
                    print("✅ Fetch user succeeded. User name - \(String(describing: user.name))")
                    return continuation.resume(returning: .success(user))
                case .failure(let error):
                    print("⚠️ Fetch user failed with error - \(error)")
                    return continuation.resume(returning: .failure(.fetchFailed))
                }
            }
        }
    }
    
    func fetchRepositories(username: String) async -> RepositoriesResult {
        guard let graphQLClient else {
            return .failure(.corruptedGraphQLClient)
        }
        
        return await withCheckedContinuation { continuation in
            graphQLClient.fetch(
                query: GraphQLSchema.GetRepositoriesByUsernameQuery(
                    username: username
                )
            ) { result in
                switch result {
                case .success(let graphQLResult):
                    guard let nodes = graphQLResult.data?.user?.repositories.nodes else {
                        print("⚠️ GraphQL result data is nil")
                        return continuation.resume(returning: .failure(.dataIsNil))
                    }
                    let repositories = nodes.compactMap({ $0 })
                    print("✅ Fetch repositories succeeded. Repos count - \(repositories.count)")
                    return continuation.resume(returning: .success(repositories))
                case .failure(let error):
                    print("⚠️ Fetch user failed with error - \(error)")
                    return continuation.resume(returning: .failure(.fetchFailed))
                }
            }
        }
    }
    
    func createNewRepository(_ input: RepositoryInput) async -> CreateNewRepoResult {
        guard let graphQLClient else {
            return .failure(.corruptedGraphQLClient)
        }
        
        return await withCheckedContinuation { continuation in
            graphQLClient.perform(
                mutation: GraphQLSchema.AddNewRepositoryWithInputMutation(
                    input: GraphQLSchema.CreateRepositoryInput(
                        description: input.description ?? nil,
                        hasIssuesEnabled: false,
                        hasWikiEnabled: true,
                        name: input.name,
                        template: false,
                        visibility: GraphQLEnum<GraphQLSchema.RepositoryVisibility>.init(
                            rawValue: input.visibility.rawValue
                        )
                    )
                )
            ) { result in
                switch result {
                case .success(let graphQLResult):
                    if let errors = graphQLResult.errors, errors.count > 0 {
                        print("⚠️ GraphQL result contains errors")
                        let messages = errors.compactMap { $0.message }
                        for (index, element) in messages.enumerated() {
                            print("⚠️ \(index + 1)) \(element)")
                        }
                        return continuation.resume(returning: .failure(.mutationFailed))
                    }
                    guard let newRepo = graphQLResult.data?.createRepository?.repository else {
                        print("⚠️ GraphQL result data is nil")
                        return continuation.resume(returning: .failure(.dataIsNil))
                    }
                    print("✅ New repository(name: \(newRepo.name) was successfully created.")
                    return continuation.resume(returning: .success(newRepo))
                case .failure(let error):
                    print("⚠️ Perform CreateNewRepository mutation failed with error - \(error)")
                    return continuation.resume(returning: .failure(.mutationFailed))
                }
            }
        }
    }
}
