//
//  CreateNewRepositoryViewModel.swift
//  GraphQLPractice
//
//  Created by a.antoniak on 02.04.2024.
//

import Apollo
import Foundation

protocol CreateRepositoryViewModelProtocol: ObservableObject {
    var name: String { get set }
    var description: String { get set }
    var visibility: RepositoryVisibility { get set }
    
    func createNewRepository(completion: @escaping () -> Void)
}

final class CreateRepositoryViewModel: CreateRepositoryViewModelProtocol {
    private let repositoriesNetworking: RepositoriesNetworkingProtocol
    
    @Published var name = ""
    var description = ""
    var somethingElseToWork = ""
    var visibility = RepositoryVisibility.public
    
    init(repositoriesNetworking: RepositoriesNetworkingProtocol) {
        self.repositoriesNetworking = repositoriesNetworking
    }
    
    func createNewRepository(completion: @escaping () -> Void) {
        Task {
            let input = RepositoryInput(
                name: name,
                description: description,
                visibility: visibility
            )
            let result = await repositoriesNetworking.createNewRepository(input)
            switch result {
            case .success(_):
                completion()
            case .failure(let error):
                print("⚠️ NetworkingError - \(error.localizedDescription)")
            }
        }
    }
}
