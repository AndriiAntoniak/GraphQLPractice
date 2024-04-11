// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// Represents a comment on an Issue.
  static let IssueComment = ApolloAPI.Object(
    typename: "IssueComment",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.Comment.self,
      GraphQLSchema.Interfaces.Deletable.self,
      GraphQLSchema.Interfaces.Minimizable.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.Reactable.self,
      GraphQLSchema.Interfaces.RepositoryNode.self,
      GraphQLSchema.Interfaces.Updatable.self,
      GraphQLSchema.Interfaces.UpdatableComment.self
    ]
  )
}