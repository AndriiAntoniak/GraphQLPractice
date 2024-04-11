// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// Audit log entry for a org.config.disable_collaborators_only event.
  static let OrgConfigDisableCollaboratorsOnlyAuditEntry = ApolloAPI.Object(
    typename: "OrgConfigDisableCollaboratorsOnlyAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self
    ]
  )
}