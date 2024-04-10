// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension GraphQLSchema.Objects {
  /// Audit log entry for a repo.config.disable_contributors_only event.
  static let RepoConfigDisableContributorsOnlyAuditEntry = ApolloAPI.Object(
    typename: "RepoConfigDisableContributorsOnlyAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self,
      GraphQLSchema.Interfaces.RepositoryAuditEntryData.self
    ]
  )
}