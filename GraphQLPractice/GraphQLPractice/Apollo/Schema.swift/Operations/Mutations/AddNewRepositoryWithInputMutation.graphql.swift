// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public extension GraphQLSchema {
  class AddNewRepositoryWithInputMutation: GraphQLMutation {
    public static let operationName: String = "AddNewRepositoryWithInput"
    public static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"mutation AddNewRepositoryWithInput($input: CreateRepositoryInput!) { createRepository(input: $input) { __typename repository { __typename name } } }"#
      ))

    public var input: CreateRepositoryInput

    public init(input: CreateRepositoryInput) {
      self.input = input
    }

    public var __variables: Variables? { ["input": input] }

    public struct Data: GraphQLSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.Mutation }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("createRepository", CreateRepository?.self, arguments: ["input": .variable("input")]),
      ] }

      /// Create a new repository.
      public var createRepository: CreateRepository? { __data["createRepository"] }

      /// CreateRepository
      ///
      /// Parent Type: `CreateRepositoryPayload`
      public struct CreateRepository: GraphQLSchema.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.CreateRepositoryPayload }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("repository", Repository?.self),
        ] }

        /// The new repository.
        public var repository: Repository? { __data["repository"] }

        /// CreateRepository.Repository
        ///
        /// Parent Type: `Repository`
        public struct Repository: GraphQLSchema.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.Repository }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("name", String.self),
          ] }

          /// The name of the repository.
          public var name: String { __data["name"] }
        }
      }
    }
  }

}