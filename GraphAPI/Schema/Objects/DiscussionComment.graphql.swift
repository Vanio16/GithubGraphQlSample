// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphAPI.Objects {
  /// A comment on a discussion.
  static let DiscussionComment = Object(
    typename: "DiscussionComment",
    implementedInterfaces: [
      GraphAPI.Interfaces.Comment.self,
      GraphAPI.Interfaces.Deletable.self,
      GraphAPI.Interfaces.Minimizable.self,
      GraphAPI.Interfaces.Updatable.self,
      GraphAPI.Interfaces.UpdatableComment.self,
      GraphAPI.Interfaces.Reactable.self,
      GraphAPI.Interfaces.Votable.self,
      GraphAPI.Interfaces.Node.self
    ]
  )
}