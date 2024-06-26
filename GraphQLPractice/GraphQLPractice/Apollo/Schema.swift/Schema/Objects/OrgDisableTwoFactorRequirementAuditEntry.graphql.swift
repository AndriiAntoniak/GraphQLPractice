// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// Audit log entry for a org.disable_two_factor_requirement event.
  static let OrgDisableTwoFactorRequirementAuditEntry = ApolloAPI.Object(
    typename: "OrgDisableTwoFactorRequirementAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self
    ]
  )
}