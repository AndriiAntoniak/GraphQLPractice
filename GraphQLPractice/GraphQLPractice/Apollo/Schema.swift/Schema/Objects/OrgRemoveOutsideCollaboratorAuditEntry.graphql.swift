// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// Audit log entry for a org.remove_outside_collaborator event.
  static let OrgRemoveOutsideCollaboratorAuditEntry = ApolloAPI.Object(
    typename: "OrgRemoveOutsideCollaboratorAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self
    ]
  )
}