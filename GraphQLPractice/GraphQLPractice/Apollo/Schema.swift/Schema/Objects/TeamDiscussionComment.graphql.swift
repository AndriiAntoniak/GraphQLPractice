// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// A comment on a team discussion.
  static let TeamDiscussionComment = ApolloAPI.Object(
    typename: "TeamDiscussionComment",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.Comment.self,
      GraphQLSchema.Interfaces.Deletable.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.Reactable.self,
      GraphQLSchema.Interfaces.UniformResourceLocatable.self,
      GraphQLSchema.Interfaces.Updatable.self,
      GraphQLSchema.Interfaces.UpdatableComment.self
    ]
  )
}