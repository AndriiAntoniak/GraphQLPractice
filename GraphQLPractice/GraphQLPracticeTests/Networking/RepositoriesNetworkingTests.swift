//
//  RepositoriesNetworkingTests.swift
//  GraphQLPracticeTests
//
//  Created by a.antoniak on 11.04.2024.
//

@testable import GraphQLPractice
import ApolloTestSupport
import Apollo
import XCTest

final class RepositoriesNetworkingTests: XCTestCase {
    var sut: RepositoriesNetworkingProtocol!
    
    var graphQLClientMock: GraphQLClientMock!
    
    override func setUp() {
        super.setUp()
        graphQLClientMock = GraphQLClientMock()
        sut = RepositoriesNetworking(graphQLClient: graphQLClientMock)
    }
    
    override func tearDown() {
        graphQLClientMock = nil
        sut = nil
        super.tearDown()
    }

    func testFetchUserSuccess() async {
        // Given
        graphQLClientMock.fetchResult = { [weak self] in
            guard let self else {
                return .failure(NetworkingError.corruptedGraphQLClient)
            }
            return .success(
                GraphQLResult(
                    data: userQueryMock,
                    extensions: nil,
                    errors: nil,
                    source: .server,
                    dependentKeys: nil
                )
            )
        }
        
        // When
        let userResult = await sut.fetchUser()
        
        // Then
        guard case .success(let user) = userResult else {
            XCTFail("Incorrect result")
            return
        }
        XCTAssertEqual(user.login, userQueryMock.viewer.login, "Incorrect Value")
        XCTAssertEqual(user.name, userQueryMock.viewer.name, "Incorrect Value")
    }
    
    func testFetchUserFailure() async {
        // Given
        let errorStub = NetworkingError.fetchFailed
        graphQLClientMock.fetchResult = { [weak self] in
            guard let self else {
                return .failure(NetworkingError.corruptedGraphQLClient)
            }
            return .failure(errorStub)
        }
        
        // When
        let userResult = await sut.fetchUser()
        
        // Then
        guard case .failure(let error) = userResult else {
            XCTFail("Incorrect result")
            return
        }
        XCTAssertEqual(error, errorStub, "Incorrect Value")
    }
    
    func testFetchUserCorruptedServer() async {
        // Given
        sut = RepositoriesNetworking(graphQLClient: nil)
        
        // When
        let userResult = await sut.fetchUser()
        
        // Then
        guard case .failure(let error) = userResult else {
            XCTFail("Incorrect result")
            return
        }
        XCTAssertEqual(error, .corruptedGraphQLClient, "Incorrect Value")
    }
}

extension RepositoriesNetworkingTests {
    var userQueryMock: GraphQLSchema.GetUserQuery.Data {
        GraphQLSchema.GetUserQuery.Data.from(
            Mock<Query>(
                viewer: Mock<User>(
                    avatarUrl: nil,
                    login: "username",
                    name: "User Name",
                    repositories: nil
                )
            )
        )
    }
}
