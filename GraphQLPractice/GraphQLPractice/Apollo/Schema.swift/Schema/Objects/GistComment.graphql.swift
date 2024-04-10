// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension GraphQLSchema.Objects {
  /// Represents a comment on an Gist.
  static let GistComment = ApolloAPI.Object(
    typename: "GistComment",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.Comment.self,
      GraphQLSchema.Interfaces.Deletable.self,
      GraphQLSchema.Interfaces.Minimizable.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.Updatable.self,
      GraphQLSchema.Interfaces.UpdatableComment.self
    ]
  )
}