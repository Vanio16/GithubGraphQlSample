// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public extension GraphAPI {
  class SearchReposQuery: GraphQLQuery {
    public static let operationName: String = "SearchRepos"
    public static let document: ApolloAPI.DocumentType = .notPersisted(
      definition: .init(
        #"""
        query SearchRepos($searchText: String!) {
          search(first: 20, query: $searchText, type: REPOSITORY) {
            __typename
            nodes {
              __typename
              ... on Repository {
                ...RepositoryDetail
              }
            }
          }
        }
        """#,
        fragments: [RepositoryDetail.self]
      ))

    public var searchText: String

    public init(searchText: String) {
      self.searchText = searchText
    }

    public var __variables: Variables? { ["searchText": searchText] }

    public struct Data: GraphAPI.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ApolloAPI.ParentType { GraphAPI.Objects.Query }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("search", Search.self, arguments: [
          "first": 20,
          "query": .variable("searchText"),
          "type": "REPOSITORY"
        ]),
      ] }

      /// Perform a search across resources, returning a maximum of 1,000 results.
      public var search: Search { __data["search"] }

      /// Search
      ///
      /// Parent Type: `SearchResultItemConnection`
      public struct Search: GraphAPI.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ApolloAPI.ParentType { GraphAPI.Objects.SearchResultItemConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("nodes", [Node?]?.self),
        ] }

        /// A list of nodes.
        public var nodes: [Node?]? { __data["nodes"] }

        /// Search.Node
        ///
        /// Parent Type: `SearchResultItem`
        public struct Node: GraphAPI.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ApolloAPI.ParentType { GraphAPI.Unions.SearchResultItem }
          public static var __selections: [ApolloAPI.Selection] { [
            .inlineFragment(AsRepository.self),
          ] }

          public var asRepository: AsRepository? { _asInlineFragment() }

          /// Search.Node.AsRepository
          ///
          /// Parent Type: `Repository`
          public struct AsRepository: GraphAPI.InlineFragment {
            public let __data: DataDict
            public init(data: DataDict) { __data = data }

            public static var __parentType: ApolloAPI.ParentType { GraphAPI.Objects.Repository }
            public static var __selections: [ApolloAPI.Selection] { [
              .fragment(RepositoryDetail.self),
            ] }

            public var id: GraphAPI.ID { __data["id"] }
            /// The repository's name with owner.
            public var nameWithOwner: String { __data["nameWithOwner"] }
            /// Returns a boolean indicating whether the viewing user has starred this starrable.
            public var viewerHasStarred: Bool { __data["viewerHasStarred"] }
            /// A list of users who have starred this starrable.
            public var stargazers: RepositoryDetail.Stargazers { __data["stargazers"] }

            public struct Fragments: FragmentContainer {
              public let __data: DataDict
              public init(data: DataDict) { __data = data }

              public var repositoryDetail: RepositoryDetail { _toFragment() }
            }
          }
        }
      }
    }
  }

}