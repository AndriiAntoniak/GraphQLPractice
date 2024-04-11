// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// A user is an individual's account on GitHub that owns repositories and can make new content.
  static let User = ApolloAPI.Object(
    typename: "User",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.Actor.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.PackageOwner.self,
      GraphQLSchema.Interfaces.ProfileOwner.self,
      GraphQLSchema.Interfaces.ProjectOwner.self,
      GraphQLSchema.Interfaces.ProjectV2Owner.self,
      GraphQLSchema.Interfaces.ProjectV2Recent.self,
      GraphQLSchema.Interfaces.RepositoryDiscussionAuthor.self,
      GraphQLSchema.Interfaces.RepositoryDiscussionCommentAuthor.self,
      GraphQLSchema.Interfaces.RepositoryOwner.self,
      GraphQLSchema.Interfaces.Sponsorable.self,
      GraphQLSchema.Interfaces.UniformResourceLocatable.self
    ]
  )
}