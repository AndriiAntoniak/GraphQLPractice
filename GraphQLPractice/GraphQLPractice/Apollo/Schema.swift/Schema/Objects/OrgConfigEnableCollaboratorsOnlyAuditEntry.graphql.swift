// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// Audit log entry for a org.config.enable_collaborators_only event.
  static let OrgConfigEnableCollaboratorsOnlyAuditEntry = ApolloAPI.Object(
    typename: "OrgConfigEnableCollaboratorsOnlyAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self
    ]
  )
}