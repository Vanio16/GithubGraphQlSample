// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphAPI.Objects {
  /// Audit log entry for a team.add_repository event.
  static let TeamAddRepositoryAuditEntry = Object(
    typename: "TeamAddRepositoryAuditEntry",
    implementedInterfaces: [
      GraphAPI.Interfaces.Node.self,
      GraphAPI.Interfaces.AuditEntry.self,
      GraphAPI.Interfaces.OrganizationAuditEntryData.self,
      GraphAPI.Interfaces.RepositoryAuditEntryData.self,
      GraphAPI.Interfaces.TeamAuditEntryData.self
    ]
  )
}