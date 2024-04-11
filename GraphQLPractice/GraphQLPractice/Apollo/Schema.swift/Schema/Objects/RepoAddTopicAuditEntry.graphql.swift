// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// Audit log entry for a repo.add_topic event.
  static let RepoAddTopicAuditEntry = ApolloAPI.Object(
    typename: "RepoAddTopicAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self,
      GraphQLSchema.Interfaces.RepositoryAuditEntryData.self,
      GraphQLSchema.Interfaces.TopicAuditEntryData.self
    ]
  )
}