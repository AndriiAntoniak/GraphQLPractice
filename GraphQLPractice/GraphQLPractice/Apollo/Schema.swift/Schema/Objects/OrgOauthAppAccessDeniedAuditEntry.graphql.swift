// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// Audit log entry for a org.oauth_app_access_denied event.
  static let OrgOauthAppAccessDeniedAuditEntry = ApolloAPI.Object(
    typename: "OrgOauthAppAccessDeniedAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OauthApplicationAuditEntryData.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self
    ]
  )
}