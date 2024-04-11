// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// Audit log entry for a repo.add_member event.
  static let RepoAddMemberAuditEntry = ApolloAPI.Object(
    typename: "RepoAddMemberAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self,
      GraphQLSchema.Interfaces.RepositoryAuditEntryData.self
    ]
  )
}