// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// A discussion in a repository.
  static let Discussion = ApolloAPI.Object(
    typename: "Discussion",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.Closable.self,
      GraphQLSchema.Interfaces.Comment.self,
      GraphQLSchema.Interfaces.Deletable.self,
      GraphQLSchema.Interfaces.Labelable.self,
      GraphQLSchema.Interfaces.Lockable.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.Reactable.self,
      GraphQLSchema.Interfaces.RepositoryNode.self,
      GraphQLSchema.Interfaces.Subscribable.self,
      GraphQLSchema.Interfaces.Updatable.self,
      GraphQLSchema.Interfaces.Votable.self
    ]
  )
}