// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import GraphQLPractice

class RepositoryConnection: MockObject {
  static let objectType: ApolloAPI.Object = GraphQLSchema.Objects.RepositoryConnection
  static let _mockFields = MockFields()
  typealias MockValueCollectionType = Array<Mock<RepositoryConnection>>

  struct MockFields {
    @Field<[Repository?]>("nodes") public var nodes
  }
}

extension Mock where O == RepositoryConnection {
  convenience init(
    nodes: [Mock<Repository>?]? = nil
  ) {
    self.init()
    _setList(nodes, for: \.nodes)
  }
}
