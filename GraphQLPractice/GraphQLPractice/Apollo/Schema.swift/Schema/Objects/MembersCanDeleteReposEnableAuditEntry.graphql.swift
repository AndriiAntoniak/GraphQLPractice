// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// Audit log entry for a members_can_delete_repos.enable event.
  static let MembersCanDeleteReposEnableAuditEntry = ApolloAPI.Object(
    typename: "MembersCanDeleteReposEnableAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.EnterpriseAuditEntryData.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self
    ]
  )
}