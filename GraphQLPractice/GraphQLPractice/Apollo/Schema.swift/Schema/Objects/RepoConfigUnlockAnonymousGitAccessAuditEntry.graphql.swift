// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphQLSchema.Objects {
  /// Audit log entry for a repo.config.unlock_anonymous_git_access event.
  static let RepoConfigUnlockAnonymousGitAccessAuditEntry = ApolloAPI.Object(
    typename: "RepoConfigUnlockAnonymousGitAccessAuditEntry",
    implementedInterfaces: [
      GraphQLSchema.Interfaces.AuditEntry.self,
      GraphQLSchema.Interfaces.Node.self,
      GraphQLSchema.Interfaces.OrganizationAuditEntryData.self,
      GraphQLSchema.Interfaces.RepositoryAuditEntryData.self
    ]
  )
}