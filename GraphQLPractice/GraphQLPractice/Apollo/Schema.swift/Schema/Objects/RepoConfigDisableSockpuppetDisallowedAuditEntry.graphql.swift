// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// Audit log entry for a repo.config.disable_sockpuppet_disallowed event.
  static let RepoConfigDisableSockpuppetDisallowedAuditEntry = ApolloAPI.Object(
    typename: "RepoConfigDisableSockpuppetDisallowedAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self,
      GraphQLSchema.Interfaces.RepositoryAuditEntryData.self
    ]
  )
}