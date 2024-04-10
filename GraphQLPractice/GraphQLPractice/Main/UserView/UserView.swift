//
//  UserView.swift
//  GraphQLPractice
//
//  Created by a.antoniak on 31.03.2024.
//

import SwiftUI

struct UserView<ViewModel: UserViewModelProtocol>: View {
    @ObservedObject private var viewModel: ViewModel
    
    @State private var shouldPresentAddRepoView: Bool = false
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            if let user = viewModel.user {
                makeUserView(user)
                    .padding(.top)
            } else {
                makeButton(with: "Fetch user") {
                    viewModel.fetchUser()
                }
            }
            
            if !viewModel.repositories.isEmpty {
                makeRepositoriesList(viewModel.repositories)
            }
            
            Spacer()
        }
        .sheet(
            isPresented: $shouldPresentAddRepoView,
            onDismiss: {
                viewModel.fetchRepositories()
            },
            content: {
                CreateNewRepositoryView(
                    shouldPresentAddRepoView: $shouldPresentAddRepoView,
                    viewModel: CreateRepositoryViewModel(
                        repositoriesNetworking: RepositoriesNetworking()
                    )
                )
            }
        )
    }
    
    @ViewBuilder
    private func makeUserView(_ user: User) -> some View {
        VStack {
            HStack {
                AsyncImage(url: URL(string: user.avatarUrl)) { image in
                    image
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                } placeholder: {
                    Image("profile")
                }
                VStack(alignment: .leading) {
                    Text("Username: \(user.login)")
                    if let name = user.name {
                        Text("Name: \(name)")
                    }
                    Spacer()
                }
                .font(.headline)
                Spacer()
            }
            .frame(height: 100.0)
            HStack {
                makeButton(with: "Load last 10 repositories") {
                    viewModel.fetchRepositories()
                }
                makeButton(with: "Add new") {
                    shouldPresentAddRepoView.toggle()
                }
            }
            .padding(.horizontal)
        }
    }
    
    @ViewBuilder
    private func makeRepositoriesList(_ repositories: [Repository]) -> some View {
        List(viewModel.repositories, id: \.id) { repository in
            HStack {
                VStack(alignment: .leading) {
                    Text(repository.name)
                        .font(.headline)
                    if let description = repository.description {
                        Text(description)
                            .font(.subheadline)
                    }
                }
                Spacer()
            }
        }
        .listStyle(.plain)
    }
    
    @ViewBuilder
    private func makeButton(with title: String, action: @escaping (() -> Void)) -> some View {
        Button {
            action()
        } label: {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10.0)
                        .foregroundColor(.gray)
                )
        }
        .padding(.vertical)
    }
}

#Preview {
    UserView(
        viewModel: UserViewModel(
            repositoriesNetworking: RepositoriesNetworking()
        )
    )
}
