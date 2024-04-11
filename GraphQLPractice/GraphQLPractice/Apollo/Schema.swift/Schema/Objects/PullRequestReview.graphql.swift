// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// A review object for a given pull request.
  static let PullRequestReview = ApolloAPI.Object(
    typename: "PullRequestReview",
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