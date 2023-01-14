// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension GraphAPI.Unions {
  /// The results of a search.
  static let SearchResultItem = Union(
    name: "SearchResultItem",
    possibleTypes: [
      GraphAPI.Objects.App.self,
      GraphAPI.Objects.Discussion.self,
      GraphAPI.Objects.Issue.self,
      GraphAPI.Objects.MarketplaceListing.self,
      GraphAPI.Objects.Organization.self,
      GraphAPI.Objects.PullRequest.self,
      GraphAPI.Objects.Repository.self,
      GraphAPI.Objects.User.self
    ]
  )
}