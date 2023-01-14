// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphAPI.Objects {
  /// A review object for a given pull request.
  static let PullRequestReview = Object(
    typename: "PullRequestReview",
    implementedInterfaces: [
      GraphAPI.Interfaces.Node.self,
      GraphAPI.Interfaces.Comment.self,
      GraphAPI.Interfaces.Deletable.self,
      GraphAPI.Interfaces.Updatable.self,
      GraphAPI.Interfaces.UpdatableComment.self,
      GraphAPI.Interfaces.Reactable.self,
      GraphAPI.Interfaces.RepositoryNode.self
    ]
  )
}