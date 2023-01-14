// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public extension GraphAPI {
  class AddStarMutation: GraphQLMutation {
    public static let operationName: String = "AddStar"
    public static let document: ApolloAPI.DocumentType = .notPersisted(
      definition: .init(
        #"""
        mutation AddStar($repositoryId: ID!) {
          addStar(input: {clientMutationId: "75573448", starrableId: $repositoryId}) {
            __typename
            starrable {
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

    public var repositoryId: ID

    public init(repositoryId: ID) {
      self.repositoryId = repositoryId
    }

    public var __variables: Variables? { ["repositoryId": repositoryId] }

    public struct Data: GraphAPI.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ApolloAPI.ParentType { GraphAPI.Objects.Mutation }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("addStar", AddStar?.self, arguments: ["input": [
          "clientMutationId": "75573448",
          "starrableId": .variable("repositoryId")
        ]]),
      ] }

      /// Adds a star to a Starrable.
      public var addStar: AddStar? { __data["addStar"] }

      /// AddStar
      ///
      /// Parent Type: `AddStarPayload`
      public struct AddStar: GraphAPI.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ApolloAPI.ParentType { GraphAPI.Objects.AddStarPayload }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("starrable", Starrable?.self),
        ] }

        /// The starrable.
        public var starrable: Starrable? { __data["starrable"] }

        /// AddStar.Starrable
        ///
        /// Parent Type: `Starrable`
        public struct Starrable: GraphAPI.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ApolloAPI.ParentType { GraphAPI.Interfaces.Starrable }
          public static var __selections: [ApolloAPI.Selection] { [
            .inlineFragment(AsRepository.self),
          ] }

          public var asRepository: AsRepository? { _asInlineFragment() }

          /// AddStar.Starrable.AsRepository
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