// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension GraphQLSchema.Objects {
  /// An Issue is a place to discuss ideas, enhancements, tasks, and bugs for a project.
  static let Issue = ApolloAPI.Object(
    typename: "Issue",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.Assignable.self,
      GraphQLSchema.Interfaces.Closable.self,
      GraphQLSchema.Interfaces.Comment.self,
      GraphQLSchema.Interfaces.Deletable.self,
      GraphQLSchema.Interfaces.Labelable.self,
      GraphQLSchema.Interfaces.Lockable.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.ProjectV2Owner.self,
      GraphQLSchema.Interfaces.Reactable.self,
      GraphQLSchema.Interfaces.RepositoryNode.self,
      GraphQLSchema.Interfaces.Subscribable.self,
      GraphQLSchema.Interfaces.SubscribableThread.self,
      GraphQLSchema.Interfaces.UniformResourceLocatable.self,
      GraphQLSchema.Interfaces.Updatable.self,
      GraphQLSchema.Interfaces.UpdatableComment.self
    ]
  )
}