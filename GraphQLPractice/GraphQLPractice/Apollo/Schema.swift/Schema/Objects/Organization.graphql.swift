// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// An account on GitHub, with one or more owners, that has repositories, members and teams.
  static let Organization = ApolloAPI.Object(
    typename: "Organization",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.Actor.self,
      GraphQLSchema.Interfaces.AnnouncementBanner.self,
      GraphQLSchema.Interfaces.MemberStatusable.self,
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