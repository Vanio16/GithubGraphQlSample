// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphAPI.Objects {
  /// Represents a comment on an Issue.
  static let IssueComment = Object(
    typename: "IssueComment",
    implementedInterfaces: [
      GraphAPI.Interfaces.Node.self,
      GraphAPI.Interfaces.Comment.self,
      GraphAPI.Interfaces.Deletable.self,
      GraphAPI.Interfaces.Minimizable.self,
      GraphAPI.Interfaces.Updatable.self,
      GraphAPI.Interfaces.UpdatableComment.self,
      GraphAPI.Interfaces.Reactable.self,
      GraphAPI.Interfaces.RepositoryNode.self
    ]
  )
}