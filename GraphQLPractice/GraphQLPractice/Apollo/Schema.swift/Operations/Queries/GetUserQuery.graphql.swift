// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public extension GraphQLSchema {
  class GetUserQuery: GraphQLQuery {
    public static let operationName: String = "GetUser"
    public static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query GetUser { viewer { __typename login name avatarUrl } }"#
      ))

    public init() {}

    public struct Data: GraphQLSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.Query }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("viewer", Viewer.self),
      ] }

      /// The currently authenticated user.
      public var viewer: Viewer { __data["viewer"] }

      /// Viewer
      ///
      /// Parent Type: `User`
      public struct Viewer: GraphQLSchema.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.User }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("login", String.self),
          .field("name", String?.self),
          .field("avatarUrl", GraphQLSchema.URI.self),
        ] }

        /// The username used to login.
        public var login: String { __data["login"] }
        /// The user's public profile name.
        public var name: String? { __data["name"] }
        /// A URL pointing to the user's public avatar.
        public var avatarUrl: GraphQLSchema.URI { __data["avatarUrl"] }
      }
    }
  }

}