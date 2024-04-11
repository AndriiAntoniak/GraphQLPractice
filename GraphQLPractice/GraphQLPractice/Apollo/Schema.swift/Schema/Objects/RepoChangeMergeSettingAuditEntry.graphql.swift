// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// Audit log entry for a repo.change_merge_setting event.
  static let RepoChangeMergeSettingAuditEntry = ApolloAPI.Object(
    typename: "RepoChangeMergeSettingAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self,
      GraphQLSchema.Interfaces.RepositoryAuditEntryData.self
    ]
  )
}