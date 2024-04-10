// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension GraphQLSchema.Objects {
  /// Audit log entry for a repo.config.disable_collaborators_only event.
  static let RepoConfigDisableCollaboratorsOnlyAuditEntry = ApolloAPI.Object(
    typename: "RepoConfigDisableCollaboratorsOnlyAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self,
      GraphQLSchema.Interfaces.RepositoryAuditEntryData.self
    ]
  )
}