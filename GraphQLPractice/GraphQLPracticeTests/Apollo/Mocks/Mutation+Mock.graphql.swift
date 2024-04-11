// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import GraphQLPractice

class Mutation: MockObject {
  static let objectType: ApolloAPI.Object = GraphQLSchema.Objects.Mutation
  static let _mockFields = MockFields()
  typealias MockValueCollectionType = Array<Mock<Mutation>>

  struct MockFields {
    @Field<CreateRepositoryPayload>("createRepository") public var createRepository
  }
}

extension Mock where O == Mutation {
  convenience init(
    createRepository: Mock<CreateRepositoryPayload>? = nil
  ) {
    self.init()
    _setEntity(createRepository, for: \.createRepository)
  }
}
