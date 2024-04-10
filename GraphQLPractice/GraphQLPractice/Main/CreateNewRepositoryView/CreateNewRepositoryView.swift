//
//  CreateNewRepositoryView.swift
//  GraphQLPractice
//
//  Created by a.antoniak on 01.04.2024.
//

import SwiftUI

struct CreateNewRepositoryView<ViewModel: CreateRepositoryViewModelProtocol>: View {
    @Binding var shouldPresentAddRepoView: Bool
    @ObservedObject private var viewModel: ViewModel
    
    init(
        shouldPresentAddRepoView: Binding<Bool>,
        viewModel: ViewModel
    ) {
        self._shouldPresentAddRepoView = shouldPresentAddRepoView
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Text("Add Repository")
                .font(.title)
                .padding(.top)
            Form {
                TextField("Name", text: $viewModel.name)
                TextField("Description", text: $viewModel.description)
                
                makeVisibilityPicker()
                
                HStack {
                    Spacer()
                    Button {
                        viewModel.createNewRepository {
                            shouldPresentAddRepoView.toggle()
                        }
                    } label: {
                        Text("Save")
                    }
                    .disabled(viewModel.name.isEmpty)
                    Spacer()
                }
            }
        }
    }
    
    @ViewBuilder
    private func makeVisibilityPicker() -> some View {
        Picker(
            "Select",
            selection: $viewModel.visibility,
            content: {
                Text("Public").tag(RepositoryVisibility.public)
                Text("Private").tag(RepositoryVisibility.private)
            }
        )
        .pickerStyle(.segmented)
    }
}

#Preview {
    CreateNewRepositoryView(
        shouldPresentAddRepoView: .constant(true),
        viewModel: CreateRepositoryViewModel(
            repositoriesNetworking: RepositoriesNetworking()
        )
    )
}
