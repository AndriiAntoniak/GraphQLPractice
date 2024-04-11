// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public extension GraphQLSchema {
  class GetRepositoriesByUsernameQuery: GraphQLQuery {
    public static let operationName: String = "GetRepositoriesByUsername"
    public static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query GetRepositoriesByUsername($username: String!) { user(login: $username) { __typename repositories(first: 10, orderBy: { field: CREATED_AT, direction: DESC }) { __typename nodes { __typename id name description } } } }"#
      ))

    public var username: String

    public init(username: String) {
      self.username = username
    }

    public var __variables: Variables? { ["username": username] }

    public struct Data: GraphQLSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.Query }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("user", User?.self, arguments: ["login": .variable("username")]),
      ] }

      /// Lookup a user by login.
      public var user: User? { __data["user"] }

      /// User
      ///
      /// Parent Type: `User`
      public struct User: GraphQLSchema.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.User }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("repositories", Repositories.self, arguments: [
            "first": 10,
            "orderBy": [
              "field": "CREATED_AT",
              "direction": "DESC"
            ]
          ]),
        ] }

        /// A list of repositories that the user owns.
        public var repositories: Repositories { __data["repositories"] }

        /// User.Repositories
        ///
        /// Parent Type: `RepositoryConnection`
        public struct Repositories: GraphQLSchema.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.RepositoryConnection }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("nodes", [Node?]?.self),
          ] }

          /// A list of nodes.
          public var nodes: [Node?]? { __data["nodes"] }

          /// User.Repositories.Node
          ///
          /// Parent Type: `Repository`
          public struct Node: GraphQLSchema.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.Repository }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("id", GraphQLSchema.ID.self),
              .field("name", String.self),
              .field("description", String?.self),
            ] }

            /// The Node ID of the Repository object
            public var id: GraphQLSchema.ID { __data["id"] }
            /// The name of the repository.
            public var name: String { __data["name"] }
            /// The description of the repository.
            public var description: String? { __data["description"] }
          }
        }
      }
    }
  }

}