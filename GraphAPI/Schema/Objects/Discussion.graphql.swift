// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphAPI.Objects {
  /// A discussion in a repository.
  static let Discussion = Object(
    typename: "Discussion",
    implementedInterfaces: [
      GraphAPI.Interfaces.Comment.self,
      GraphAPI.Interfaces.Updatable.self,
      GraphAPI.Interfaces.Deletable.self,
      GraphAPI.Interfaces.Labelable.self,
      GraphAPI.Interfaces.Lockable.self,
      GraphAPI.Interfaces.RepositoryNode.self,
      GraphAPI.Interfaces.Subscribable.self,
      GraphAPI.Interfaces.Reactable.self,
      GraphAPI.Interfaces.Votable.self,
      GraphAPI.Interfaces.Node.self
    ]
  )
}