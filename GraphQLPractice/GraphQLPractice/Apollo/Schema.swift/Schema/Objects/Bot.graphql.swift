// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// A special type of user which takes actions on behalf of GitHub Apps.
  static let Bot = ApolloAPI.Object(
    typename: "Bot",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.Actor.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.UniformResourceLocatable.self
    ]
  )
}