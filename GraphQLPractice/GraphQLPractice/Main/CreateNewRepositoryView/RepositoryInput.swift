//
//  RepositoryInput.swift
//  GraphQLPractice
//
//  Created by a.antoniak on 02.04.2024.
//

import Foundation

struct RepositoryInput {
    let name: String
    let description: String?
    let visibility: RepositoryVisibility
}

enum RepositoryVisibility: String {
    case `public` = "PUBLIC"
    case `private` = "PRIVATE"
}
