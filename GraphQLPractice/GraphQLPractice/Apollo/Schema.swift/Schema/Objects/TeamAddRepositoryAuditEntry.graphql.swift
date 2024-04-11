// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// Audit log entry for a team.add_repository event.
  static let TeamAddRepositoryAuditEntry = ApolloAPI.Object(
    typename: "TeamAddRepositoryAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self,
      GraphQLSchema.Interfaces.RepositoryAuditEntryData.self,
      GraphQLSchema.Interfaces.TeamAuditEntryData.self
    ]
  )
}