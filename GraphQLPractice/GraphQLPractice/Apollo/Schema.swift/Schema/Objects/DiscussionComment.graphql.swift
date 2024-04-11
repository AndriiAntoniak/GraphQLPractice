// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// A comment on a discussion.
  static let DiscussionComment = ApolloAPI.Object(
    typename: "DiscussionComment",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.Comment.self,
      GraphQLSchema.Interfaces.Deletable.self,
      GraphQLSchema.Interfaces.Minimizable.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.Reactable.self,
      GraphQLSchema.Interfaces.Updatable.self,
      GraphQLSchema.Interfaces.UpdatableComment.self,
      GraphQLSchema.Interfaces.Votable.self
    ]
  )
}