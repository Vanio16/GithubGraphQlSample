// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphAPI.Objects {
  /// Audit log entry for a repo.access event.
  static let RepoAccessAuditEntry = Object(
    typename: "RepoAccessAuditEntry",
    implementedInterfaces: [
      GraphAPI.Interfaces.Node.self,
      GraphAPI.Interfaces.AuditEntry.self,
      GraphAPI.Interfaces.OrganizationAuditEntryData.self,
      GraphAPI.Interfaces.RepositoryAuditEntryData.self
    ]
  )
}