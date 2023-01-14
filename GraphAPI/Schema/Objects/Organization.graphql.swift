// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphAPI.Objects {
  /// An account on GitHub, with one or more owners, that has repositories, members and teams.
  static let Organization = Object(
    typename: "Organization",
    implementedInterfaces: [
      GraphAPI.Interfaces.Node.self,
      GraphAPI.Interfaces.Actor.self,
      GraphAPI.Interfaces.PackageOwner.self,
      GraphAPI.Interfaces.ProjectOwner.self,
      GraphAPI.Interfaces.ProjectNextOwner.self,
      GraphAPI.Interfaces.ProjectV2Owner.self,
      GraphAPI.Interfaces.ProjectV2Recent.self,
      GraphAPI.Interfaces.RepositoryDiscussionAuthor.self,
      GraphAPI.Interfaces.RepositoryDiscussionCommentAuthor.self,
      GraphAPI.Interfaces.RepositoryOwner.self,
      GraphAPI.Interfaces.UniformResourceLocatable.self,
      GraphAPI.Interfaces.MemberStatusable.self,
      GraphAPI.Interfaces.ProfileOwner.self,
      GraphAPI.Interfaces.Sponsorable.self
    ]
  )
}