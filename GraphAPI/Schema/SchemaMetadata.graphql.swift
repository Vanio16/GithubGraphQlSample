// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public protocol GraphAPI_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == GraphAPI.SchemaMetadata {}

public protocol GraphAPI_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == GraphAPI.SchemaMetadata {}

public protocol GraphAPI_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == GraphAPI.SchemaMetadata {}

public protocol GraphAPI_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == GraphAPI.SchemaMetadata {}

public extension GraphAPI {
  typealias ID = String

  typealias SelectionSet = GraphAPI_SelectionSet

  typealias InlineFragment = GraphAPI_InlineFragment

  typealias MutableSelectionSet = GraphAPI_MutableSelectionSet

  typealias MutableInlineFragment = GraphAPI_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    public static func objectType(forTypename typename: String) -> Object? {
      switch typename {
      case "Query": return GraphAPI.Objects.Query
      case "SearchResultItemConnection": return GraphAPI.Objects.SearchResultItemConnection
      case "App": return GraphAPI.Objects.App
      case "AddedToProjectEvent": return GraphAPI.Objects.AddedToProjectEvent
      case "AssignedEvent": return GraphAPI.Objects.AssignedEvent
      case "AutoMergeDisabledEvent": return GraphAPI.Objects.AutoMergeDisabledEvent
      case "AutoMergeEnabledEvent": return GraphAPI.Objects.AutoMergeEnabledEvent
      case "AutoRebaseEnabledEvent": return GraphAPI.Objects.AutoRebaseEnabledEvent
      case "AutoSquashEnabledEvent": return GraphAPI.Objects.AutoSquashEnabledEvent
      case "AutomaticBaseChangeFailedEvent": return GraphAPI.Objects.AutomaticBaseChangeFailedEvent
      case "AutomaticBaseChangeSucceededEvent": return GraphAPI.Objects.AutomaticBaseChangeSucceededEvent
      case "BaseRefChangedEvent": return GraphAPI.Objects.BaseRefChangedEvent
      case "BaseRefDeletedEvent": return GraphAPI.Objects.BaseRefDeletedEvent
      case "BaseRefForcePushedEvent": return GraphAPI.Objects.BaseRefForcePushedEvent
      case "Blob": return GraphAPI.Objects.Blob
      case "Commit": return GraphAPI.Objects.Commit
      case "Discussion": return GraphAPI.Objects.Discussion
      case "CommitComment": return GraphAPI.Objects.CommitComment
      case "DiscussionComment": return GraphAPI.Objects.DiscussionComment
      case "GistComment": return GraphAPI.Objects.GistComment
      case "Issue": return GraphAPI.Objects.Issue
      case "PullRequest": return GraphAPI.Objects.PullRequest
      case "Milestone": return GraphAPI.Objects.Milestone
      case "Bot": return GraphAPI.Objects.Bot
      case "EnterpriseUserAccount": return GraphAPI.Objects.EnterpriseUserAccount
      case "Mannequin": return GraphAPI.Objects.Mannequin
      case "Organization": return GraphAPI.Objects.Organization
      case "Repository": return GraphAPI.Objects.Repository
      case "User": return GraphAPI.Objects.User
      case "Gist": return GraphAPI.Objects.Gist
      case "Topic": return GraphAPI.Objects.Topic
      case "Team": return GraphAPI.Objects.Team
      case "CheckRun": return GraphAPI.Objects.CheckRun
      case "StatusContext": return GraphAPI.Objects.StatusContext
      case "ClosedEvent": return GraphAPI.Objects.ClosedEvent
      case "ConvertToDraftEvent": return GraphAPI.Objects.ConvertToDraftEvent
      case "CrossReferencedEvent": return GraphAPI.Objects.CrossReferencedEvent
      case "MergedEvent": return GraphAPI.Objects.MergedEvent
      case "PullRequestCommit": return GraphAPI.Objects.PullRequestCommit
      case "ReadyForReviewEvent": return GraphAPI.Objects.ReadyForReviewEvent
      case "Release": return GraphAPI.Objects.Release
      case "IssueComment": return GraphAPI.Objects.IssueComment
      case "PullRequestReview": return GraphAPI.Objects.PullRequestReview
      case "CommitCommentThread": return GraphAPI.Objects.CommitCommentThread
      case "DependabotUpdate": return GraphAPI.Objects.DependabotUpdate
      case "DiscussionCategory": return GraphAPI.Objects.DiscussionCategory
      case "PinnedDiscussion": return GraphAPI.Objects.PinnedDiscussion
      case "PullRequestCommitCommentThread": return GraphAPI.Objects.PullRequestCommitCommentThread
      case "PullRequestReviewComment": return GraphAPI.Objects.PullRequestReviewComment
      case "RepositoryVulnerabilityAlert": return GraphAPI.Objects.RepositoryVulnerabilityAlert
      case "TeamDiscussion": return GraphAPI.Objects.TeamDiscussion
      case "TeamDiscussionComment": return GraphAPI.Objects.TeamDiscussionComment
      case "RepositoryTopic": return GraphAPI.Objects.RepositoryTopic
      case "ReviewDismissedEvent": return GraphAPI.Objects.ReviewDismissedEvent
      case "WorkflowRun": return GraphAPI.Objects.WorkflowRun
      case "Project": return GraphAPI.Objects.Project
      case "ProjectNext": return GraphAPI.Objects.ProjectNext
      case "ProjectV2": return GraphAPI.Objects.ProjectV2
      case "Tag": return GraphAPI.Objects.Tag
      case "Tree": return GraphAPI.Objects.Tree
      case "BranchProtectionRule": return GraphAPI.Objects.BranchProtectionRule
      case "BypassForcePushAllowance": return GraphAPI.Objects.BypassForcePushAllowance
      case "BypassPullRequestAllowance": return GraphAPI.Objects.BypassPullRequestAllowance
      case "CWE": return GraphAPI.Objects.CWE
      case "CheckSuite": return GraphAPI.Objects.CheckSuite
      case "CodeOfConduct": return GraphAPI.Objects.CodeOfConduct
      case "CommentDeletedEvent": return GraphAPI.Objects.CommentDeletedEvent
      case "Comparison": return GraphAPI.Objects.Comparison
      case "ConnectedEvent": return GraphAPI.Objects.ConnectedEvent
      case "ConvertedNoteToIssueEvent": return GraphAPI.Objects.ConvertedNoteToIssueEvent
      case "ConvertedToDiscussionEvent": return GraphAPI.Objects.ConvertedToDiscussionEvent
      case "DemilestonedEvent": return GraphAPI.Objects.DemilestonedEvent
      case "DeployKey": return GraphAPI.Objects.DeployKey
      case "DeployedEvent": return GraphAPI.Objects.DeployedEvent
      case "Deployment": return GraphAPI.Objects.Deployment
      case "DeploymentEnvironmentChangedEvent": return GraphAPI.Objects.DeploymentEnvironmentChangedEvent
      case "DeploymentReview": return GraphAPI.Objects.DeploymentReview
      case "DeploymentStatus": return GraphAPI.Objects.DeploymentStatus
      case "DisconnectedEvent": return GraphAPI.Objects.DisconnectedEvent
      case "DiscussionPoll": return GraphAPI.Objects.DiscussionPoll
      case "DiscussionPollOption": return GraphAPI.Objects.DiscussionPollOption
      case "DraftIssue": return GraphAPI.Objects.DraftIssue
      case "Enterprise": return GraphAPI.Objects.Enterprise
      case "EnterpriseAdministratorInvitation": return GraphAPI.Objects.EnterpriseAdministratorInvitation
      case "EnterpriseIdentityProvider": return GraphAPI.Objects.EnterpriseIdentityProvider
      case "EnterpriseRepositoryInfo": return GraphAPI.Objects.EnterpriseRepositoryInfo
      case "EnterpriseServerInstallation": return GraphAPI.Objects.EnterpriseServerInstallation
      case "EnterpriseServerUserAccount": return GraphAPI.Objects.EnterpriseServerUserAccount
      case "EnterpriseServerUserAccountEmail": return GraphAPI.Objects.EnterpriseServerUserAccountEmail
      case "EnterpriseServerUserAccountsUpload": return GraphAPI.Objects.EnterpriseServerUserAccountsUpload
      case "Environment": return GraphAPI.Objects.Environment
      case "ExternalIdentity": return GraphAPI.Objects.ExternalIdentity
      case "HeadRefDeletedEvent": return GraphAPI.Objects.HeadRefDeletedEvent
      case "HeadRefForcePushedEvent": return GraphAPI.Objects.HeadRefForcePushedEvent
      case "HeadRefRestoredEvent": return GraphAPI.Objects.HeadRefRestoredEvent
      case "IpAllowListEntry": return GraphAPI.Objects.IpAllowListEntry
      case "Label": return GraphAPI.Objects.Label
      case "LabeledEvent": return GraphAPI.Objects.LabeledEvent
      case "Language": return GraphAPI.Objects.Language
      case "License": return GraphAPI.Objects.License
      case "LinkedBranch": return GraphAPI.Objects.LinkedBranch
      case "LockedEvent": return GraphAPI.Objects.LockedEvent
      case "MarkedAsDuplicateEvent": return GraphAPI.Objects.MarkedAsDuplicateEvent
      case "MarketplaceCategory": return GraphAPI.Objects.MarketplaceCategory
      case "MarketplaceListing": return GraphAPI.Objects.MarketplaceListing
      case "MembersCanDeleteReposClearAuditEntry": return GraphAPI.Objects.MembersCanDeleteReposClearAuditEntry
      case "MembersCanDeleteReposDisableAuditEntry": return GraphAPI.Objects.MembersCanDeleteReposDisableAuditEntry
      case "MembersCanDeleteReposEnableAuditEntry": return GraphAPI.Objects.MembersCanDeleteReposEnableAuditEntry
      case "OauthApplicationCreateAuditEntry": return GraphAPI.Objects.OauthApplicationCreateAuditEntry
      case "OrgOauthAppAccessApprovedAuditEntry": return GraphAPI.Objects.OrgOauthAppAccessApprovedAuditEntry
      case "OrgOauthAppAccessDeniedAuditEntry": return GraphAPI.Objects.OrgOauthAppAccessDeniedAuditEntry
      case "OrgOauthAppAccessRequestedAuditEntry": return GraphAPI.Objects.OrgOauthAppAccessRequestedAuditEntry
      case "OrgAddBillingManagerAuditEntry": return GraphAPI.Objects.OrgAddBillingManagerAuditEntry
      case "OrgAddMemberAuditEntry": return GraphAPI.Objects.OrgAddMemberAuditEntry
      case "OrgBlockUserAuditEntry": return GraphAPI.Objects.OrgBlockUserAuditEntry
      case "OrgConfigDisableCollaboratorsOnlyAuditEntry": return GraphAPI.Objects.OrgConfigDisableCollaboratorsOnlyAuditEntry
      case "OrgConfigEnableCollaboratorsOnlyAuditEntry": return GraphAPI.Objects.OrgConfigEnableCollaboratorsOnlyAuditEntry
      case "OrgCreateAuditEntry": return GraphAPI.Objects.OrgCreateAuditEntry
      case "OrgDisableOauthAppRestrictionsAuditEntry": return GraphAPI.Objects.OrgDisableOauthAppRestrictionsAuditEntry
      case "OrgDisableSamlAuditEntry": return GraphAPI.Objects.OrgDisableSamlAuditEntry
      case "OrgDisableTwoFactorRequirementAuditEntry": return GraphAPI.Objects.OrgDisableTwoFactorRequirementAuditEntry
      case "OrgEnableOauthAppRestrictionsAuditEntry": return GraphAPI.Objects.OrgEnableOauthAppRestrictionsAuditEntry
      case "OrgEnableSamlAuditEntry": return GraphAPI.Objects.OrgEnableSamlAuditEntry
      case "OrgEnableTwoFactorRequirementAuditEntry": return GraphAPI.Objects.OrgEnableTwoFactorRequirementAuditEntry
      case "OrgInviteMemberAuditEntry": return GraphAPI.Objects.OrgInviteMemberAuditEntry
      case "OrgInviteToBusinessAuditEntry": return GraphAPI.Objects.OrgInviteToBusinessAuditEntry
      case "OrgRemoveBillingManagerAuditEntry": return GraphAPI.Objects.OrgRemoveBillingManagerAuditEntry
      case "OrgRemoveMemberAuditEntry": return GraphAPI.Objects.OrgRemoveMemberAuditEntry
      case "OrgRemoveOutsideCollaboratorAuditEntry": return GraphAPI.Objects.OrgRemoveOutsideCollaboratorAuditEntry
      case "OrgRestoreMemberAuditEntry": return GraphAPI.Objects.OrgRestoreMemberAuditEntry
      case "OrgRestoreMemberMembershipOrganizationAuditEntryData": return GraphAPI.Objects.OrgRestoreMemberMembershipOrganizationAuditEntryData
      case "OrgUnblockUserAuditEntry": return GraphAPI.Objects.OrgUnblockUserAuditEntry
      case "OrgUpdateDefaultRepositoryPermissionAuditEntry": return GraphAPI.Objects.OrgUpdateDefaultRepositoryPermissionAuditEntry
      case "OrgUpdateMemberAuditEntry": return GraphAPI.Objects.OrgUpdateMemberAuditEntry
      case "OrgUpdateMemberRepositoryCreationPermissionAuditEntry": return GraphAPI.Objects.OrgUpdateMemberRepositoryCreationPermissionAuditEntry
      case "OrgUpdateMemberRepositoryInvitationPermissionAuditEntry": return GraphAPI.Objects.OrgUpdateMemberRepositoryInvitationPermissionAuditEntry
      case "PrivateRepositoryForkingDisableAuditEntry": return GraphAPI.Objects.PrivateRepositoryForkingDisableAuditEntry
      case "OrgRestoreMemberMembershipRepositoryAuditEntryData": return GraphAPI.Objects.OrgRestoreMemberMembershipRepositoryAuditEntryData
      case "PrivateRepositoryForkingEnableAuditEntry": return GraphAPI.Objects.PrivateRepositoryForkingEnableAuditEntry
      case "RepoAccessAuditEntry": return GraphAPI.Objects.RepoAccessAuditEntry
      case "RepoAddMemberAuditEntry": return GraphAPI.Objects.RepoAddMemberAuditEntry
      case "RepoAddTopicAuditEntry": return GraphAPI.Objects.RepoAddTopicAuditEntry
      case "RepoRemoveTopicAuditEntry": return GraphAPI.Objects.RepoRemoveTopicAuditEntry
      case "RepoArchivedAuditEntry": return GraphAPI.Objects.RepoArchivedAuditEntry
      case "RepoChangeMergeSettingAuditEntry": return GraphAPI.Objects.RepoChangeMergeSettingAuditEntry
      case "RepoConfigDisableAnonymousGitAccessAuditEntry": return GraphAPI.Objects.RepoConfigDisableAnonymousGitAccessAuditEntry
      case "RepoConfigDisableCollaboratorsOnlyAuditEntry": return GraphAPI.Objects.RepoConfigDisableCollaboratorsOnlyAuditEntry
      case "RepoConfigDisableContributorsOnlyAuditEntry": return GraphAPI.Objects.RepoConfigDisableContributorsOnlyAuditEntry
      case "RepoConfigDisableSockpuppetDisallowedAuditEntry": return GraphAPI.Objects.RepoConfigDisableSockpuppetDisallowedAuditEntry
      case "RepoConfigEnableAnonymousGitAccessAuditEntry": return GraphAPI.Objects.RepoConfigEnableAnonymousGitAccessAuditEntry
      case "RepoConfigEnableCollaboratorsOnlyAuditEntry": return GraphAPI.Objects.RepoConfigEnableCollaboratorsOnlyAuditEntry
      case "RepoConfigEnableContributorsOnlyAuditEntry": return GraphAPI.Objects.RepoConfigEnableContributorsOnlyAuditEntry
      case "RepoConfigEnableSockpuppetDisallowedAuditEntry": return GraphAPI.Objects.RepoConfigEnableSockpuppetDisallowedAuditEntry
      case "RepoConfigLockAnonymousGitAccessAuditEntry": return GraphAPI.Objects.RepoConfigLockAnonymousGitAccessAuditEntry
      case "RepoConfigUnlockAnonymousGitAccessAuditEntry": return GraphAPI.Objects.RepoConfigUnlockAnonymousGitAccessAuditEntry
      case "RepoCreateAuditEntry": return GraphAPI.Objects.RepoCreateAuditEntry
      case "RepoDestroyAuditEntry": return GraphAPI.Objects.RepoDestroyAuditEntry
      case "RepoRemoveMemberAuditEntry": return GraphAPI.Objects.RepoRemoveMemberAuditEntry
      case "TeamAddRepositoryAuditEntry": return GraphAPI.Objects.TeamAddRepositoryAuditEntry
      case "OrgRestoreMemberMembershipTeamAuditEntryData": return GraphAPI.Objects.OrgRestoreMemberMembershipTeamAuditEntryData
      case "TeamAddMemberAuditEntry": return GraphAPI.Objects.TeamAddMemberAuditEntry
      case "TeamChangeParentTeamAuditEntry": return GraphAPI.Objects.TeamChangeParentTeamAuditEntry
      case "TeamRemoveMemberAuditEntry": return GraphAPI.Objects.TeamRemoveMemberAuditEntry
      case "TeamRemoveRepositoryAuditEntry": return GraphAPI.Objects.TeamRemoveRepositoryAuditEntry
      case "RepositoryVisibilityChangeDisableAuditEntry": return GraphAPI.Objects.RepositoryVisibilityChangeDisableAuditEntry
      case "RepositoryVisibilityChangeEnableAuditEntry": return GraphAPI.Objects.RepositoryVisibilityChangeEnableAuditEntry
      case "MentionedEvent": return GraphAPI.Objects.MentionedEvent
      case "MigrationSource": return GraphAPI.Objects.MigrationSource
      case "MilestonedEvent": return GraphAPI.Objects.MilestonedEvent
      case "MovedColumnsInProjectEvent": return GraphAPI.Objects.MovedColumnsInProjectEvent
      case "OIDCProvider": return GraphAPI.Objects.OIDCProvider
      case "OrganizationIdentityProvider": return GraphAPI.Objects.OrganizationIdentityProvider
      case "OrganizationInvitation": return GraphAPI.Objects.OrganizationInvitation
      case "OrganizationMigration": return GraphAPI.Objects.OrganizationMigration
      case "Package": return GraphAPI.Objects.Package
      case "PackageFile": return GraphAPI.Objects.PackageFile
      case "PackageTag": return GraphAPI.Objects.PackageTag
      case "PackageVersion": return GraphAPI.Objects.PackageVersion
      case "PinnedEvent": return GraphAPI.Objects.PinnedEvent
      case "PinnedIssue": return GraphAPI.Objects.PinnedIssue
      case "ProjectCard": return GraphAPI.Objects.ProjectCard
      case "ProjectColumn": return GraphAPI.Objects.ProjectColumn
      case "ProjectNextField": return GraphAPI.Objects.ProjectNextField
      case "ProjectNextIterationField": return GraphAPI.Objects.ProjectNextIterationField
      case "ProjectNextSingleSelectField": return GraphAPI.Objects.ProjectNextSingleSelectField
      case "ProjectNextItem": return GraphAPI.Objects.ProjectNextItem
      case "ProjectNextItemFieldValue": return GraphAPI.Objects.ProjectNextItemFieldValue
      case "ProjectV2Field": return GraphAPI.Objects.ProjectV2Field
      case "ProjectV2IterationField": return GraphAPI.Objects.ProjectV2IterationField
      case "ProjectV2SingleSelectField": return GraphAPI.Objects.ProjectV2SingleSelectField
      case "ProjectV2Item": return GraphAPI.Objects.ProjectV2Item
      case "ProjectV2ItemFieldDateValue": return GraphAPI.Objects.ProjectV2ItemFieldDateValue
      case "ProjectV2ItemFieldIterationValue": return GraphAPI.Objects.ProjectV2ItemFieldIterationValue
      case "ProjectV2ItemFieldNumberValue": return GraphAPI.Objects.ProjectV2ItemFieldNumberValue
      case "ProjectV2ItemFieldSingleSelectValue": return GraphAPI.Objects.ProjectV2ItemFieldSingleSelectValue
      case "ProjectV2ItemFieldTextValue": return GraphAPI.Objects.ProjectV2ItemFieldTextValue
      case "ProjectV2View": return GraphAPI.Objects.ProjectV2View
      case "ProjectView": return GraphAPI.Objects.ProjectView
      case "PublicKey": return GraphAPI.Objects.PublicKey
      case "PullRequestReviewThread": return GraphAPI.Objects.PullRequestReviewThread
      case "PullRequestThread": return GraphAPI.Objects.PullRequestThread
      case "Push": return GraphAPI.Objects.Push
      case "PushAllowance": return GraphAPI.Objects.PushAllowance
      case "Reaction": return GraphAPI.Objects.Reaction
      case "Ref": return GraphAPI.Objects.Ref
      case "ReferencedEvent": return GraphAPI.Objects.ReferencedEvent
      case "ReleaseAsset": return GraphAPI.Objects.ReleaseAsset
      case "RemovedFromProjectEvent": return GraphAPI.Objects.RemovedFromProjectEvent
      case "RenamedTitleEvent": return GraphAPI.Objects.RenamedTitleEvent
      case "ReopenedEvent": return GraphAPI.Objects.ReopenedEvent
      case "RepositoryInvitation": return GraphAPI.Objects.RepositoryInvitation
      case "RepositoryMigration": return GraphAPI.Objects.RepositoryMigration
      case "ReviewDismissalAllowance": return GraphAPI.Objects.ReviewDismissalAllowance
      case "ReviewRequest": return GraphAPI.Objects.ReviewRequest
      case "ReviewRequestRemovedEvent": return GraphAPI.Objects.ReviewRequestRemovedEvent
      case "ReviewRequestedEvent": return GraphAPI.Objects.ReviewRequestedEvent
      case "SavedReply": return GraphAPI.Objects.SavedReply
      case "SecurityAdvisory": return GraphAPI.Objects.SecurityAdvisory
      case "SponsorsActivity": return GraphAPI.Objects.SponsorsActivity
      case "SponsorsListing": return GraphAPI.Objects.SponsorsListing
      case "SponsorsListingFeaturedItem": return GraphAPI.Objects.SponsorsListingFeaturedItem
      case "SponsorsTier": return GraphAPI.Objects.SponsorsTier
      case "Sponsorship": return GraphAPI.Objects.Sponsorship
      case "SponsorshipNewsletter": return GraphAPI.Objects.SponsorshipNewsletter
      case "Status": return GraphAPI.Objects.Status
      case "StatusCheckRollup": return GraphAPI.Objects.StatusCheckRollup
      case "SubscribedEvent": return GraphAPI.Objects.SubscribedEvent
      case "TransferredEvent": return GraphAPI.Objects.TransferredEvent
      case "UnassignedEvent": return GraphAPI.Objects.UnassignedEvent
      case "UnlabeledEvent": return GraphAPI.Objects.UnlabeledEvent
      case "UnlockedEvent": return GraphAPI.Objects.UnlockedEvent
      case "UnmarkedAsDuplicateEvent": return GraphAPI.Objects.UnmarkedAsDuplicateEvent
      case "UnpinnedEvent": return GraphAPI.Objects.UnpinnedEvent
      case "UnsubscribedEvent": return GraphAPI.Objects.UnsubscribedEvent
      case "UserBlockedEvent": return GraphAPI.Objects.UserBlockedEvent
      case "UserContentEdit": return GraphAPI.Objects.UserContentEdit
      case "UserStatus": return GraphAPI.Objects.UserStatus
      case "VerifiableDomain": return GraphAPI.Objects.VerifiableDomain
      case "Workflow": return GraphAPI.Objects.Workflow
      case "StargazerConnection": return GraphAPI.Objects.StargazerConnection
      case "Mutation": return GraphAPI.Objects.Mutation
      case "AddStarPayload": return GraphAPI.Objects.AddStarPayload
      case "RemoveStarPayload": return GraphAPI.Objects.RemoveStarPayload
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}