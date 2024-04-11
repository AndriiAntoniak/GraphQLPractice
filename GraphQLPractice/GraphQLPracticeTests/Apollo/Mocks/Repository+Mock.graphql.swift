// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import GraphQLPractice

class Repository: MockObject {
  static let objectType: ApolloAPI.Object = GraphQLSchema.Objects.Repository
  static let _mockFields = MockFields()
  typealias MockValueCollectionType = Array<Mock<Repository>>

  struct MockFields {
    @Field<String>("description") public var description
    @Field<GraphQLSchema.ID>("id") public var id
    @Field<String>("name") public var name
  }
}

extension Mock where O == Repository {
  convenience init(
    description: String? = nil,
    id: GraphQLSchema.ID? = nil,
    name: String? = nil
  ) {
    self.init()
    _setScalar(description, for: \.description)
    _setScalar(id, for: \.id)
    _setScalar(name, for: \.name)
  }
}
