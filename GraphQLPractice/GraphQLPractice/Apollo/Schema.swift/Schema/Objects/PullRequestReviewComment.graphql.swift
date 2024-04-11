// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// A review comment associated with a given repository pull request.
  static let PullRequestReviewComment = ApolloAPI.Object(
    typename: "PullRequestReviewComment",
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