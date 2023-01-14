// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphAPI.Objects {
  /// A review comment associated with a given repository pull request.
  static let PullRequestReviewComment = Object(
    typename: "PullRequestReviewComment",
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