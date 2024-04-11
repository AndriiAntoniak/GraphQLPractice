//
//  GraphQLPracticeApp.swift
//  GraphQLPractice
//
//  Created by a.antoniak on 31.03.2024.
//

import SwiftUI

@main
struct GraphQLPracticeApp: App {
    var body: some Scene {
        WindowGroup {
            UserView(
                viewModel: UserViewModel(
                    repositoriesNetworking: RepositoriesNetworking(
                        graphQLClient: GraphQLClient()
                    )
                )
            )
        }
    }
}
