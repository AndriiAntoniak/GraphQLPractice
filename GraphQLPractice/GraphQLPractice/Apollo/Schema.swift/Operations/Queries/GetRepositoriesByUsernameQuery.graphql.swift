// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension GraphQLSchema {
  class GetRepositoriesByUsernameQuery: GraphQLQuery {
    static let operationName: String = "GetRepositoriesByUsername"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query GetRepositoriesByUsername($username: String!) { user(login: $username) { __typename repositories(first: 10, orderBy: { field: CREATED_AT, direction: DESC }) { __typename nodes { __typename id name description } } } }"#
      ))

    public var username: String

    public init(username: String) {
      self.username = username
    }

    public var __variables: Variables? { ["username": username] }

    struct Data: GraphQLSchema.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.Query }
      static var __selections: [ApolloAPI.Selection] { [
        .field("user", User?.self, arguments: ["login": .variable("username")]),
      ] }

      /// Lookup a user by login.
      var user: User? { __data["user"] }

      /// User
      ///
      /// Parent Type: `User`
      struct User: GraphQLSchema.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.User }
        static var __selections: [ApolloAPI.Selection] { [
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
        var repositories: Repositories { __data["repositories"] }

        /// User.Repositories
        ///
        /// Parent Type: `RepositoryConnection`
        struct Repositories: GraphQLSchema.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.RepositoryConnection }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("nodes", [Node?]?.self),
          ] }

          /// A list of nodes.
          var nodes: [Node?]? { __data["nodes"] }

          /// User.Repositories.Node
          ///
          /// Parent Type: `Repository`
          struct Node: GraphQLSchema.SelectionSet {
            let __data: DataDict
            init(_dataDict: DataDict) { __data = _dataDict }

            static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.Repository }
            static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("id", GraphQLSchema.ID.self),
              .field("name", String.self),
              .field("description", String?.self),
            ] }

            /// The Node ID of the Repository object
            var id: GraphQLSchema.ID { __data["id"] }
            /// The name of the repository.
            var name: String { __data["name"] }
            /// The description of the repository.
            var description: String? { __data["description"] }
          }
        }
      }
    }
  }

}