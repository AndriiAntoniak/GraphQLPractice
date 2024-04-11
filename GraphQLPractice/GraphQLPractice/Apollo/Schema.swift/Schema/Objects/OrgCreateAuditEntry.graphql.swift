// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// Audit log entry for a org.create event.
  static let OrgCreateAuditEntry = ApolloAPI.Object(
    typename: "OrgCreateAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self
    ]
  )
}