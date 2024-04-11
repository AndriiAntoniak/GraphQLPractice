// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// Represents a Git commit.
  static let Commit = ApolloAPI.Object(
    typename: "Commit",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.GitObject.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.Subscribable.self,
      GraphQLSchema.Interfaces.UniformResourceLocatable.self
    ]
  )
}