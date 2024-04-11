// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import GraphQLPractice

class User: MockObject {
  static let objectType: ApolloAPI.Object = GraphQLSchema.Objects.User
  static let _mockFields = MockFields()
  typealias MockValueCollectionType = Array<Mock<User>>

  struct MockFields {
    @Field<GraphQLSchema.URI>("avatarUrl") public var avatarUrl
    @Field<String>("login") public var login
    @Field<String>("name") public var name
    @Field<RepositoryConnection>("repositories") public var repositories
  }
}

extension Mock where O == User {
  convenience init(
    avatarUrl: GraphQLSchema.URI? = nil,
    login: String? = nil,
    name: String? = nil,
    repositories: Mock<RepositoryConnection>? = nil
  ) {
    self.init()
    _setScalar(avatarUrl, for: \.avatarUrl)
    _setScalar(login, for: \.login)
    _setScalar(name, for: \.name)
    _setEntity(repositories, for: \.repositories)
  }
}
