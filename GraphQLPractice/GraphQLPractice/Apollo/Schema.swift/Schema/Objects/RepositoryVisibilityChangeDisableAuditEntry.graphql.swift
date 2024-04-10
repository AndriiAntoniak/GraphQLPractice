// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension GraphQLSchema.Objects {
  /// Audit log entry for a repository_visibility_change.disable event.
  static let RepositoryVisibilityChangeDisableAuditEntry = ApolloAPI.Object(
    typename: "RepositoryVisibilityChangeDisableAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.EnterpriseAuditEntryData.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self
    ]
  )
}