//
//  UserViewModel.swift
//  GraphQLPractice
//
//  Created by a.antoniak on 01.04.2024.
//

import Foundation

@MainActor
protocol UserViewModelProtocol: ObservableObject {
    var user: User? { get }
    var repositories: [Repository] { get }
    
    func fetchUser()
    func fetchRepositories()
}

@MainActor
final class UserViewModel: UserViewModelProtocol {
    private let repositoriesNetworking: RepositoriesNetworkingProtocol
    
    @Published var user: User?
    @Published var repositories = [Repository]()
    
    init(repositoriesNetworking: RepositoriesNetworkingProtocol) {
        self.repositoriesNetworking = repositoriesNetworking
    }
    
    func fetchUser() {
        Task {
            let result = await repositoriesNetworking.fetchUser()
            switch result {
            case .success(let user):
                self.user = user
            case .failure(let error):
                print("⚠️ NetworkingError - \(error.localizedDescription)")
            }
        }
    }
    
    func fetchRepositories() {
        guard let username = user?.login else { return }
        Task {
            let result = await repositoriesNetworking.fetchRepositories(username: username)
            switch result {
            case .success(let repositories):
                self.repositories = repositories
            case .failure(let error):
                print("⚠️ NetworkingError - \(error.localizedDescription)")
            }
        }
    }
}
