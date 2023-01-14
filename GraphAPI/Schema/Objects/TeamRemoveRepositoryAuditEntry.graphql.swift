// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphAPI.Objects {
  /// Audit log entry for a team.remove_repository event.
  static let TeamRemoveRepositoryAuditEntry = Object(
    typename: "TeamRemoveRepositoryAuditEntry",
    implementedInterfaces: [
      GraphAPI.Interfaces.Node.self,
      GraphAPI.Interfaces.AuditEntry.self,
      GraphAPI.Interfaces.OrganizationAuditEntryData.self,
      GraphAPI.Interfaces.RepositoryAuditEntryData.self,
      GraphAPI.Interfaces.TeamAuditEntryData.self
    ]
  )
}