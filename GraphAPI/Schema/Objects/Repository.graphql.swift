// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphAPI.Objects {
  /// A repository contains the content for a project.
  static let Repository = Object(
    typename: "Repository",
    implementedInterfaces: [
      GraphAPI.Interfaces.Node.self,
      GraphAPI.Interfaces.ProjectV2Recent.self,
      GraphAPI.Interfaces.ProjectOwner.self,
      GraphAPI.Interfaces.PackageOwner.self,
      GraphAPI.Interfaces.Subscribable.self,
      GraphAPI.Interfaces.Starrable.self,
      GraphAPI.Interfaces.UniformResourceLocatable.self,
      GraphAPI.Interfaces.RepositoryInfo.self
    ]
  )
}