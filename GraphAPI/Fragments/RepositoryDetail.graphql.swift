// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public extension GraphAPI {
  struct RepositoryDetail: GraphAPI.SelectionSet, Fragment {
    public static var fragmentDefinition: StaticString { """
      fragment RepositoryDetail on Repository {
        __typename
        id
        nameWithOwner
        viewerHasStarred
        stargazers {
          __typename
          totalCount
        }
      }
      """ }

    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ApolloAPI.ParentType { GraphAPI.Objects.Repository }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("id", GraphAPI.ID.self),
      .field("nameWithOwner", String.self),
      .field("viewerHasStarred", Bool.self),
      .field("stargazers", Stargazers.self),
    ] }

    public var id: GraphAPI.ID { __data["id"] }
    /// The repository's name with owner.
    public var nameWithOwner: String { __data["nameWithOwner"] }
    /// Returns a boolean indicating whether the viewing user has starred this starrable.
    public var viewerHasStarred: Bool { __data["viewerHasStarred"] }
    /// A list of users who have starred this starrable.
    public var stargazers: Stargazers { __data["stargazers"] }

    /// Stargazers
    ///
    /// Parent Type: `StargazerConnection`
    public struct Stargazers: GraphAPI.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ApolloAPI.ParentType { GraphAPI.Objects.StargazerConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("totalCount", Int.self),
      ] }

      /// Identifies the total count of items in the connection.
      public var totalCount: Int { __data["totalCount"] }
    }
  }

}