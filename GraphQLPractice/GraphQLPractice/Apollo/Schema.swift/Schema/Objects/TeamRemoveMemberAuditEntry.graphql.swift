// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// Audit log entry for a team.remove_member event.
  static let TeamRemoveMemberAuditEntry = ApolloAPI.Object(
    typename: "TeamRemoveMemberAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self,
      GraphQLSchema.Interfaces.TeamAuditEntryData.self
    ]
  )
}