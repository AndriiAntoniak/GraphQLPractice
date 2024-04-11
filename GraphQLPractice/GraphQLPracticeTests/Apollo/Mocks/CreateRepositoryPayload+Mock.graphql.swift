// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import GraphQLPractice

class CreateRepositoryPayload: MockObject {
  static let objectType: ApolloAPI.Object = GraphQLSchema.Objects.CreateRepositoryPayload
  static let _mockFields = MockFields()
  typealias MockValueCollectionType = Array<Mock<CreateRepositoryPayload>>

  struct MockFields {
    @Field<Repository>("repository") public var repository
  }
}

extension Mock where O == CreateRepositoryPayload {
  convenience init(
    repository: Mock<Repository>? = nil
  ) {
    self.init()
    _setEntity(repository, for: \.repository)
  }
}
