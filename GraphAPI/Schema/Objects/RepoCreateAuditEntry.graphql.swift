// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphAPI.Objects {
  /// Audit log entry for a repo.create event.
  static let RepoCreateAuditEntry = Object(
    typename: "RepoCreateAuditEntry",
    implementedInterfaces: [
      GraphAPI.Interfaces.Node.self,
      GraphAPI.Interfaces.AuditEntry.self,
      GraphAPI.Interfaces.RepositoryAuditEntryData.self,
      GraphAPI.Interfaces.OrganizationAuditEntryData.self
    ]
  )
}