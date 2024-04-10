//
//  NetworkingError.swift
//  GraphQLPractice
//
//  Created by a.antoniak on 01.04.2024.
//

import Foundation

enum NetworkingError: LocalizedError {
    case corruptedGraphQLClient
    case dataIsNil
    case fetchFailed
    case mutationFailed
    
    var errorDescription: String? {
        switch self {
        case .corruptedGraphQLClient:
            "Something went wrong, please try again."
        case .dataIsNil:
            "Data is nil."
        case .fetchFailed:
            "Could not fetch the data."
        case .mutationFailed:
            "Could not perform a mutation."
        }
    }
}
