// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension GraphQLSchema {
  class GetUserQuery: GraphQLQuery {
    static let operationName: String = "GetUser"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query GetUser { viewer { __typename login name avatarUrl } }"#
      ))

    public init() {}

    struct Data: GraphQLSchema.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.Query }
      static var __selections: [ApolloAPI.Selection] { [
        .field("viewer", Viewer.self),
      ] }

      /// The currently authenticated user.
      var viewer: Viewer { __data["viewer"] }

      /// Viewer
      ///
      /// Parent Type: `User`
      struct Viewer: GraphQLSchema.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.User }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("login", String.self),
          .field("name", String?.self),
          .field("avatarUrl", GraphQLSchema.URI.self),
        ] }

        /// The username used to login.
        var login: String { __data["login"] }
        /// The user's public profile name.
        var name: String? { __data["name"] }
        /// A URL pointing to the user's public avatar.
        var avatarUrl: GraphQLSchema.URI { __data["avatarUrl"] }
      }
    }
  }

}