// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public protocol GraphQLSchema_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == GraphQLSchema.SchemaMetadata {}

public protocol GraphQLSchema_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == GraphQLSchema.SchemaMetadata {}

public protocol GraphQLSchema_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == GraphQLSchema.SchemaMetadata {}

public protocol GraphQLSchema_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == GraphQLSchema.SchemaMetadata {}

public extension GraphQLSchema {
  typealias ID = String

  typealias SelectionSet = GraphQLSchema_SelectionSet

  typealias InlineFragment = GraphQLSchema_InlineFragment

  typealias MutableSelectionSet = GraphQLSchema_MutableSelectionSet

  typealias MutableInlineFragment = GraphQLSchema_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    public static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
      switch typename {
      case "Query": return GraphQLSchema.Objects.Query
      case "User": return GraphQLSchema.Objects.User
      case "Bot": return GraphQLSchema.Objects.Bot
      case "AddedToMergeQueueEvent": return GraphQLSchema.Objects.AddedToMergeQueueEvent
      case "AddedToProjectEvent": return GraphQLSchema.Objects.AddedToProjectEvent
      case "App": return GraphQLSchema.Objects.App
      case "AssignedEvent": return GraphQLSchema.Objects.AssignedEvent
      case "AutoMergeDisabledEvent": return GraphQLSchema.Objects.AutoMergeDisabledEvent
      case "AutoMergeEnabledEvent": return GraphQLSchema.Objects.AutoMergeEnabledEvent
      case "AutoRebaseEnabledEvent": return GraphQLSchema.Objects.AutoRebaseEnabledEvent
      case "AutoSquashEnabledEvent": return GraphQLSchema.Objects.AutoSquashEnabledEvent
      case "AutomaticBaseChangeFailedEvent": return GraphQLSchema.Objects.AutomaticBaseChangeFailedEvent
      case "AutomaticBaseChangeSucceededEvent": return GraphQLSchema.Objects.AutomaticBaseChangeSucceededEvent
      case "BaseRefChangedEvent": return GraphQLSchema.Objects.BaseRefChangedEvent
      case "BaseRefDeletedEvent": return GraphQLSchema.Objects.BaseRefDeletedEvent
      case "BaseRefForcePushedEvent": return GraphQLSchema.Objects.BaseRefForcePushedEvent
      case "Blob": return GraphQLSchema.Objects.Blob
      case "Commit": return GraphQLSchema.Objects.Commit
      case "Discussion": return GraphQLSchema.Objects.Discussion
      case "Issue": return GraphQLSchema.Objects.Issue
      case "PullRequest": return GraphQLSchema.Objects.PullRequest
      case "CommitComment": return GraphQLSchema.Objects.CommitComment
      case "DiscussionComment": return GraphQLSchema.Objects.DiscussionComment
      case "GistComment": return GraphQLSchema.Objects.GistComment
      case "IssueComment": return GraphQLSchema.Objects.IssueComment
      case "PullRequestReview": return GraphQLSchema.Objects.PullRequestReview
      case "CommitCommentThread": return GraphQLSchema.Objects.CommitCommentThread
      case "DependabotUpdate": return GraphQLSchema.Objects.DependabotUpdate
      case "DiscussionCategory": return GraphQLSchema.Objects.DiscussionCategory
      case "PinnedDiscussion": return GraphQLSchema.Objects.PinnedDiscussion
      case "PullRequestCommitCommentThread": return GraphQLSchema.Objects.PullRequestCommitCommentThread
      case "PullRequestReviewComment": return GraphQLSchema.Objects.PullRequestReviewComment
      case "TeamDiscussion": return GraphQLSchema.Objects.TeamDiscussion
      case "CheckRun": return GraphQLSchema.Objects.CheckRun
      case "StatusContext": return GraphQLSchema.Objects.StatusContext
      case "ClosedEvent": return GraphQLSchema.Objects.ClosedEvent
      case "ConvertToDraftEvent": return GraphQLSchema.Objects.ConvertToDraftEvent
      case "CrossReferencedEvent": return GraphQLSchema.Objects.CrossReferencedEvent
      case "Gist": return GraphQLSchema.Objects.Gist
      case "Repository": return GraphQLSchema.Objects.Repository
      case "Organization": return GraphQLSchema.Objects.Organization
      case "Enterprise": return GraphQLSchema.Objects.Enterprise
      case "Team": return GraphQLSchema.Objects.Team
      case "Topic": return GraphQLSchema.Objects.Topic
      case "Mannequin": return GraphQLSchema.Objects.Mannequin
      case "MergedEvent": return GraphQLSchema.Objects.MergedEvent
      case "Milestone": return GraphQLSchema.Objects.Milestone
      case "PullRequestCommit": return GraphQLSchema.Objects.PullRequestCommit
      case "ReadyForReviewEvent": return GraphQLSchema.Objects.ReadyForReviewEvent
      case "Release": return GraphQLSchema.Objects.Release
      case "RepositoryTopic": return GraphQLSchema.Objects.RepositoryTopic
      case "ReviewDismissedEvent": return GraphQLSchema.Objects.ReviewDismissedEvent
      case "TeamDiscussionComment": return GraphQLSchema.Objects.TeamDiscussionComment
      case "Workflow": return GraphQLSchema.Objects.Workflow
      case "WorkflowRun": return GraphQLSchema.Objects.WorkflowRun
      case "WorkflowRunFile": return GraphQLSchema.Objects.WorkflowRunFile
      case "RepositoryVulnerabilityAlert": return GraphQLSchema.Objects.RepositoryVulnerabilityAlert
      case "Project": return GraphQLSchema.Objects.Project
      case "ProjectV2": return GraphQLSchema.Objects.ProjectV2
      case "Tag": return GraphQLSchema.Objects.Tag
      case "Tree": return GraphQLSchema.Objects.Tree
      case "BranchProtectionRule": return GraphQLSchema.Objects.BranchProtectionRule
      case "BypassForcePushAllowance": return GraphQLSchema.Objects.BypassForcePushAllowance
      case "BypassPullRequestAllowance": return GraphQLSchema.Objects.BypassPullRequestAllowance
      case "CWE": return GraphQLSchema.Objects.CWE
      case "CheckSuite": return GraphQLSchema.Objects.CheckSuite
      case "CodeOfConduct": return GraphQLSchema.Objects.CodeOfConduct
      case "CommentDeletedEvent": return GraphQLSchema.Objects.CommentDeletedEvent
      case "Comparison": return GraphQLSchema.Objects.Comparison
      case "ConnectedEvent": return GraphQLSchema.Objects.ConnectedEvent
      case "ConvertedNoteToIssueEvent": return GraphQLSchema.Objects.ConvertedNoteToIssueEvent
      case "ConvertedToDiscussionEvent": return GraphQLSchema.Objects.ConvertedToDiscussionEvent
      case "DemilestonedEvent": return GraphQLSchema.Objects.DemilestonedEvent
      case "DependencyGraphManifest": return GraphQLSchema.Objects.DependencyGraphManifest
      case "DeployKey": return GraphQLSchema.Objects.DeployKey
      case "DeployedEvent": return GraphQLSchema.Objects.DeployedEvent
      case "Deployment": return GraphQLSchema.Objects.Deployment
      case "DeploymentEnvironmentChangedEvent": return GraphQLSchema.Objects.DeploymentEnvironmentChangedEvent
      case "DeploymentReview": return GraphQLSchema.Objects.DeploymentReview
      case "DeploymentStatus": return GraphQLSchema.Objects.DeploymentStatus
      case "DisconnectedEvent": return GraphQLSchema.Objects.DisconnectedEvent
      case "DiscussionPoll": return GraphQLSchema.Objects.DiscussionPoll
      case "DiscussionPollOption": return GraphQLSchema.Objects.DiscussionPollOption
      case "DraftIssue": return GraphQLSchema.Objects.DraftIssue
      case "EnterpriseAdministratorInvitation": return GraphQLSchema.Objects.EnterpriseAdministratorInvitation
      case "EnterpriseIdentityProvider": return GraphQLSchema.Objects.EnterpriseIdentityProvider
      case "EnterpriseRepositoryInfo": return GraphQLSchema.Objects.EnterpriseRepositoryInfo
      case "EnterpriseServerInstallation": return GraphQLSchema.Objects.EnterpriseServerInstallation
      case "EnterpriseServerUserAccount": return GraphQLSchema.Objects.EnterpriseServerUserAccount
      case "EnterpriseServerUserAccountEmail": return GraphQLSchema.Objects.EnterpriseServerUserAccountEmail
      case "EnterpriseServerUserAccountsUpload": return GraphQLSchema.Objects.EnterpriseServerUserAccountsUpload
      case "EnterpriseUserAccount": return GraphQLSchema.Objects.EnterpriseUserAccount
      case "Environment": return GraphQLSchema.Objects.Environment
      case "ExternalIdentity": return GraphQLSchema.Objects.ExternalIdentity
      case "HeadRefDeletedEvent": return GraphQLSchema.Objects.HeadRefDeletedEvent
      case "HeadRefForcePushedEvent": return GraphQLSchema.Objects.HeadRefForcePushedEvent
      case "HeadRefRestoredEvent": return GraphQLSchema.Objects.HeadRefRestoredEvent
      case "IpAllowListEntry": return GraphQLSchema.Objects.IpAllowListEntry
      case "Label": return GraphQLSchema.Objects.Label
      case "LabeledEvent": return GraphQLSchema.Objects.LabeledEvent
      case "Language": return GraphQLSchema.Objects.Language
      case "License": return GraphQLSchema.Objects.License
      case "LinkedBranch": return GraphQLSchema.Objects.LinkedBranch
      case "LockedEvent": return GraphQLSchema.Objects.LockedEvent
      case "MarkedAsDuplicateEvent": return GraphQLSchema.Objects.MarkedAsDuplicateEvent
      case "MarketplaceCategory": return GraphQLSchema.Objects.MarketplaceCategory
      case "MarketplaceListing": return GraphQLSchema.Objects.MarketplaceListing
      case "MemberFeatureRequestNotification": return GraphQLSchema.Objects.MemberFeatureRequestNotification
      case "MembersCanDeleteReposClearAuditEntry": return GraphQLSchema.Objects.MembersCanDeleteReposClearAuditEntry
      case "MembersCanDeleteReposDisableAuditEntry": return GraphQLSchema.Objects.MembersCanDeleteReposDisableAuditEntry
      case "MembersCanDeleteReposEnableAuditEntry": return GraphQLSchema.Objects.MembersCanDeleteReposEnableAuditEntry
      case "OauthApplicationCreateAuditEntry": return GraphQLSchema.Objects.OauthApplicationCreateAuditEntry
      case "OrgOauthAppAccessApprovedAuditEntry": return GraphQLSchema.Objects.OrgOauthAppAccessApprovedAuditEntry
      case "OrgOauthAppAccessBlockedAuditEntry": return GraphQLSchema.Objects.OrgOauthAppAccessBlockedAuditEntry
      case "OrgOauthAppAccessDeniedAuditEntry": return GraphQLSchema.Objects.OrgOauthAppAccessDeniedAuditEntry
      case "OrgOauthAppAccessRequestedAuditEntry": return GraphQLSchema.Objects.OrgOauthAppAccessRequestedAuditEntry
      case "OrgOauthAppAccessUnblockedAuditEntry": return GraphQLSchema.Objects.OrgOauthAppAccessUnblockedAuditEntry
      case "OrgAddBillingManagerAuditEntry": return GraphQLSchema.Objects.OrgAddBillingManagerAuditEntry
      case "OrgAddMemberAuditEntry": return GraphQLSchema.Objects.OrgAddMemberAuditEntry
      case "OrgBlockUserAuditEntry": return GraphQLSchema.Objects.OrgBlockUserAuditEntry
      case "OrgConfigDisableCollaboratorsOnlyAuditEntry": return GraphQLSchema.Objects.OrgConfigDisableCollaboratorsOnlyAuditEntry
      case "OrgConfigEnableCollaboratorsOnlyAuditEntry": return GraphQLSchema.Objects.OrgConfigEnableCollaboratorsOnlyAuditEntry
      case "OrgCreateAuditEntry": return GraphQLSchema.Objects.OrgCreateAuditEntry
      case "OrgDisableOauthAppRestrictionsAuditEntry": return GraphQLSchema.Objects.OrgDisableOauthAppRestrictionsAuditEntry
      case "OrgDisableSamlAuditEntry": return GraphQLSchema.Objects.OrgDisableSamlAuditEntry
      case "OrgDisableTwoFactorRequirementAuditEntry": return GraphQLSchema.Objects.OrgDisableTwoFactorRequirementAuditEntry
      case "OrgEnableOauthAppRestrictionsAuditEntry": return GraphQLSchema.Objects.OrgEnableOauthAppRestrictionsAuditEntry
      case "OrgEnableSamlAuditEntry": return GraphQLSchema.Objects.OrgEnableSamlAuditEntry
      case "OrgEnableTwoFactorRequirementAuditEntry": return GraphQLSchema.Objects.OrgEnableTwoFactorRequirementAuditEntry
      case "OrgInviteMemberAuditEntry": return GraphQLSchema.Objects.OrgInviteMemberAuditEntry
      case "OrgInviteToBusinessAuditEntry": return GraphQLSchema.Objects.OrgInviteToBusinessAuditEntry
      case "OrgRemoveBillingManagerAuditEntry": return GraphQLSchema.Objects.OrgRemoveBillingManagerAuditEntry
      case "OrgRemoveMemberAuditEntry": return GraphQLSchema.Objects.OrgRemoveMemberAuditEntry
      case "OrgRemoveOutsideCollaboratorAuditEntry": return GraphQLSchema.Objects.OrgRemoveOutsideCollaboratorAuditEntry
      case "OrgRestoreMemberAuditEntry": return GraphQLSchema.Objects.OrgRestoreMemberAuditEntry
      case "OrgRestoreMemberMembershipOrganizationAuditEntryData": return GraphQLSchema.Objects.OrgRestoreMemberMembershipOrganizationAuditEntryData
      case "OrgUnblockUserAuditEntry": return GraphQLSchema.Objects.OrgUnblockUserAuditEntry
      case "OrgUpdateDefaultRepositoryPermissionAuditEntry": return GraphQLSchema.Objects.OrgUpdateDefaultRepositoryPermissionAuditEntry
      case "OrgUpdateMemberAuditEntry": return GraphQLSchema.Objects.OrgUpdateMemberAuditEntry
      case "OrgUpdateMemberRepositoryCreationPermissionAuditEntry": return GraphQLSchema.Objects.OrgUpdateMemberRepositoryCreationPermissionAuditEntry
      case "OrgUpdateMemberRepositoryInvitationPermissionAuditEntry": return GraphQLSchema.Objects.OrgUpdateMemberRepositoryInvitationPermissionAuditEntry
      case "PrivateRepositoryForkingDisableAuditEntry": return GraphQLSchema.Objects.PrivateRepositoryForkingDisableAuditEntry
      case "OrgRestoreMemberMembershipRepositoryAuditEntryData": return GraphQLSchema.Objects.OrgRestoreMemberMembershipRepositoryAuditEntryData
      case "PrivateRepositoryForkingEnableAuditEntry": return GraphQLSchema.Objects.PrivateRepositoryForkingEnableAuditEntry
      case "RepoAccessAuditEntry": return GraphQLSchema.Objects.RepoAccessAuditEntry
      case "RepoAddMemberAuditEntry": return GraphQLSchema.Objects.RepoAddMemberAuditEntry
      case "RepoAddTopicAuditEntry": return GraphQLSchema.Objects.RepoAddTopicAuditEntry
      case "RepoRemoveTopicAuditEntry": return GraphQLSchema.Objects.RepoRemoveTopicAuditEntry
      case "RepoArchivedAuditEntry": return GraphQLSchema.Objects.RepoArchivedAuditEntry
      case "RepoChangeMergeSettingAuditEntry": return GraphQLSchema.Objects.RepoChangeMergeSettingAuditEntry
      case "RepoConfigDisableAnonymousGitAccessAuditEntry": return GraphQLSchema.Objects.RepoConfigDisableAnonymousGitAccessAuditEntry
      case "RepoConfigDisableCollaboratorsOnlyAuditEntry": return GraphQLSchema.Objects.RepoConfigDisableCollaboratorsOnlyAuditEntry
      case "RepoConfigDisableContributorsOnlyAuditEntry": return GraphQLSchema.Objects.RepoConfigDisableContributorsOnlyAuditEntry
      case "RepoConfigDisableSockpuppetDisallowedAuditEntry": return GraphQLSchema.Objects.RepoConfigDisableSockpuppetDisallowedAuditEntry
      case "RepoConfigEnableAnonymousGitAccessAuditEntry": return GraphQLSchema.Objects.RepoConfigEnableAnonymousGitAccessAuditEntry
      case "RepoConfigEnableCollaboratorsOnlyAuditEntry": return GraphQLSchema.Objects.RepoConfigEnableCollaboratorsOnlyAuditEntry
      case "RepoConfigEnableContributorsOnlyAuditEntry": return GraphQLSchema.Objects.RepoConfigEnableContributorsOnlyAuditEntry
      case "RepoConfigEnableSockpuppetDisallowedAuditEntry": return GraphQLSchema.Objects.RepoConfigEnableSockpuppetDisallowedAuditEntry
      case "RepoConfigLockAnonymousGitAccessAuditEntry": return GraphQLSchema.Objects.RepoConfigLockAnonymousGitAccessAuditEntry
      case "RepoConfigUnlockAnonymousGitAccessAuditEntry": return GraphQLSchema.Objects.RepoConfigUnlockAnonymousGitAccessAuditEntry
      case "RepoCreateAuditEntry": return GraphQLSchema.Objects.RepoCreateAuditEntry
      case "RepoDestroyAuditEntry": return GraphQLSchema.Objects.RepoDestroyAuditEntry
      case "RepoRemoveMemberAuditEntry": return GraphQLSchema.Objects.RepoRemoveMemberAuditEntry
      case "TeamAddRepositoryAuditEntry": return GraphQLSchema.Objects.TeamAddRepositoryAuditEntry
      case "OrgRestoreMemberMembershipTeamAuditEntryData": return GraphQLSchema.Objects.OrgRestoreMemberMembershipTeamAuditEntryData
      case "TeamAddMemberAuditEntry": return GraphQLSchema.Objects.TeamAddMemberAuditEntry
      case "TeamChangeParentTeamAuditEntry": return GraphQLSchema.Objects.TeamChangeParentTeamAuditEntry
      case "TeamRemoveMemberAuditEntry": return GraphQLSchema.Objects.TeamRemoveMemberAuditEntry
      case "TeamRemoveRepositoryAuditEntry": return GraphQLSchema.Objects.TeamRemoveRepositoryAuditEntry
      case "RepositoryVisibilityChangeDisableAuditEntry": return GraphQLSchema.Objects.RepositoryVisibilityChangeDisableAuditEntry
      case "RepositoryVisibilityChangeEnableAuditEntry": return GraphQLSchema.Objects.RepositoryVisibilityChangeEnableAuditEntry
      case "MentionedEvent": return GraphQLSchema.Objects.MentionedEvent
      case "MergeQueue": return GraphQLSchema.Objects.MergeQueue
      case "MergeQueueEntry": return GraphQLSchema.Objects.MergeQueueEntry
      case "MigrationSource": return GraphQLSchema.Objects.MigrationSource
      case "MilestonedEvent": return GraphQLSchema.Objects.MilestonedEvent
      case "MovedColumnsInProjectEvent": return GraphQLSchema.Objects.MovedColumnsInProjectEvent
      case "OIDCProvider": return GraphQLSchema.Objects.OIDCProvider
      case "OrganizationIdentityProvider": return GraphQLSchema.Objects.OrganizationIdentityProvider
      case "OrganizationInvitation": return GraphQLSchema.Objects.OrganizationInvitation
      case "OrganizationMigration": return GraphQLSchema.Objects.OrganizationMigration
      case "Package": return GraphQLSchema.Objects.Package
      case "PackageFile": return GraphQLSchema.Objects.PackageFile
      case "PackageTag": return GraphQLSchema.Objects.PackageTag
      case "PackageVersion": return GraphQLSchema.Objects.PackageVersion
      case "PinnedEvent": return GraphQLSchema.Objects.PinnedEvent
      case "PinnedIssue": return GraphQLSchema.Objects.PinnedIssue
      case "ProjectCard": return GraphQLSchema.Objects.ProjectCard
      case "ProjectColumn": return GraphQLSchema.Objects.ProjectColumn
      case "ProjectV2Field": return GraphQLSchema.Objects.ProjectV2Field
      case "ProjectV2IterationField": return GraphQLSchema.Objects.ProjectV2IterationField
      case "ProjectV2SingleSelectField": return GraphQLSchema.Objects.ProjectV2SingleSelectField
      case "ProjectV2Item": return GraphQLSchema.Objects.ProjectV2Item
      case "ProjectV2ItemFieldDateValue": return GraphQLSchema.Objects.ProjectV2ItemFieldDateValue
      case "ProjectV2ItemFieldIterationValue": return GraphQLSchema.Objects.ProjectV2ItemFieldIterationValue
      case "ProjectV2ItemFieldNumberValue": return GraphQLSchema.Objects.ProjectV2ItemFieldNumberValue
      case "ProjectV2ItemFieldSingleSelectValue": return GraphQLSchema.Objects.ProjectV2ItemFieldSingleSelectValue
      case "ProjectV2ItemFieldTextValue": return GraphQLSchema.Objects.ProjectV2ItemFieldTextValue
      case "ProjectV2View": return GraphQLSchema.Objects.ProjectV2View
      case "ProjectV2Workflow": return GraphQLSchema.Objects.ProjectV2Workflow
      case "PublicKey": return GraphQLSchema.Objects.PublicKey
      case "PullRequestReviewThread": return GraphQLSchema.Objects.PullRequestReviewThread
      case "PullRequestThread": return GraphQLSchema.Objects.PullRequestThread
      case "Push": return GraphQLSchema.Objects.Push
      case "PushAllowance": return GraphQLSchema.Objects.PushAllowance
      case "Reaction": return GraphQLSchema.Objects.Reaction
      case "Ref": return GraphQLSchema.Objects.Ref
      case "ReferencedEvent": return GraphQLSchema.Objects.ReferencedEvent
      case "ReleaseAsset": return GraphQLSchema.Objects.ReleaseAsset
      case "RemovedFromMergeQueueEvent": return GraphQLSchema.Objects.RemovedFromMergeQueueEvent
      case "RemovedFromProjectEvent": return GraphQLSchema.Objects.RemovedFromProjectEvent
      case "RenamedTitleEvent": return GraphQLSchema.Objects.RenamedTitleEvent
      case "ReopenedEvent": return GraphQLSchema.Objects.ReopenedEvent
      case "RepositoryInvitation": return GraphQLSchema.Objects.RepositoryInvitation
      case "RepositoryMigration": return GraphQLSchema.Objects.RepositoryMigration
      case "RepositoryRule": return GraphQLSchema.Objects.RepositoryRule
      case "RepositoryRuleset": return GraphQLSchema.Objects.RepositoryRuleset
      case "RepositoryRulesetBypassActor": return GraphQLSchema.Objects.RepositoryRulesetBypassActor
      case "ReviewDismissalAllowance": return GraphQLSchema.Objects.ReviewDismissalAllowance
      case "ReviewRequest": return GraphQLSchema.Objects.ReviewRequest
      case "ReviewRequestRemovedEvent": return GraphQLSchema.Objects.ReviewRequestRemovedEvent
      case "ReviewRequestedEvent": return GraphQLSchema.Objects.ReviewRequestedEvent
      case "SavedReply": return GraphQLSchema.Objects.SavedReply
      case "SecurityAdvisory": return GraphQLSchema.Objects.SecurityAdvisory
      case "SponsorsActivity": return GraphQLSchema.Objects.SponsorsActivity
      case "SponsorsListing": return GraphQLSchema.Objects.SponsorsListing
      case "SponsorsListingFeaturedItem": return GraphQLSchema.Objects.SponsorsListingFeaturedItem
      case "SponsorsTier": return GraphQLSchema.Objects.SponsorsTier
      case "Sponsorship": return GraphQLSchema.Objects.Sponsorship
      case "SponsorshipNewsletter": return GraphQLSchema.Objects.SponsorshipNewsletter
      case "Status": return GraphQLSchema.Objects.Status
      case "StatusCheckRollup": return GraphQLSchema.Objects.StatusCheckRollup
      case "SubscribedEvent": return GraphQLSchema.Objects.SubscribedEvent
      case "TransferredEvent": return GraphQLSchema.Objects.TransferredEvent
      case "UnassignedEvent": return GraphQLSchema.Objects.UnassignedEvent
      case "UnlabeledEvent": return GraphQLSchema.Objects.UnlabeledEvent
      case "UnlockedEvent": return GraphQLSchema.Objects.UnlockedEvent
      case "UnmarkedAsDuplicateEvent": return GraphQLSchema.Objects.UnmarkedAsDuplicateEvent
      case "UnpinnedEvent": return GraphQLSchema.Objects.UnpinnedEvent
      case "UnsubscribedEvent": return GraphQLSchema.Objects.UnsubscribedEvent
      case "UserBlockedEvent": return GraphQLSchema.Objects.UserBlockedEvent
      case "UserContentEdit": return GraphQLSchema.Objects.UserContentEdit
      case "UserList": return GraphQLSchema.Objects.UserList
      case "UserStatus": return GraphQLSchema.Objects.UserStatus
      case "VerifiableDomain": return GraphQLSchema.Objects.VerifiableDomain
      case "RepositoryConnection": return GraphQLSchema.Objects.RepositoryConnection
      case "Mutation": return GraphQLSchema.Objects.Mutation
      case "CreateRepositoryPayload": return GraphQLSchema.Objects.CreateRepositoryPayload
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}