// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension GraphQLSchema.Objects {
  /// Audit log entry for a org.oauth_app_access_unblocked event.
  static let OrgOauthAppAccessUnblockedAuditEntry = ApolloAPI.Object(
    typename: "OrgOauthAppAccessUnblockedAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OauthApplicationAuditEntryData.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self
    ]
  )
}