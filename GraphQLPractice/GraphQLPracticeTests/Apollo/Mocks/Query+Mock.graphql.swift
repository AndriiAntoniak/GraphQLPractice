// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import GraphQLPractice

class Query: MockObject {
  static let objectType: ApolloAPI.Object = GraphQLSchema.Objects.Query
  static let _mockFields = MockFields()
  typealias MockValueCollectionType = Array<Mock<Query>>

  struct MockFields {
    @Field<User>("user") public var user
    @Field<User>("viewer") public var viewer
  }
}

extension Mock where O == Query {
  convenience init(
    user: Mock<User>? = nil,
    viewer: Mock<User>? = nil
  ) {
    self.init()
    _setEntity(user, for: \.user)
    _setEntity(viewer, for: \.viewer)
  }
}
