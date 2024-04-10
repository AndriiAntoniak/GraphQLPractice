// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension GraphQLSchema.Objects {
  /// A repository contains the content for a project.
  static let Repository = ApolloAPI.Object(
    typename: "Repository",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.PackageOwner.self,
      GraphQLSchema.Interfaces.ProjectOwner.self,
      GraphQLSchema.Interfaces.ProjectV2Recent.self,
      GraphQLSchema.Interfaces.RepositoryInfo.self,
      GraphQLSchema.Interfaces.Starrable.self,
      GraphQLSchema.Interfaces.Subscribable.self,
      GraphQLSchema.Interfaces.UniformResourceLocatable.self
    ]
  )
}