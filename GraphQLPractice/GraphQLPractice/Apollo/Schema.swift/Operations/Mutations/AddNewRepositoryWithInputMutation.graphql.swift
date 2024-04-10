// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension GraphQLSchema {
  class AddNewRepositoryWithInputMutation: GraphQLMutation {
    static let operationName: String = "AddNewRepositoryWithInput"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"mutation AddNewRepositoryWithInput($input: CreateRepositoryInput!) { createRepository(input: $input) { __typename repository { __typename name } } }"#
      ))

    public var input: CreateRepositoryInput

    public init(input: CreateRepositoryInput) {
      self.input = input
    }

    public var __variables: Variables? { ["input": input] }

    struct Data: GraphQLSchema.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.Mutation }
      static var __selections: [ApolloAPI.Selection] { [
        .field("createRepository", CreateRepository?.self, arguments: ["input": .variable("input")]),
      ] }

      /// Create a new repository.
      var createRepository: CreateRepository? { __data["createRepository"] }

      /// CreateRepository
      ///
      /// Parent Type: `CreateRepositoryPayload`
      struct CreateRepository: GraphQLSchema.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.CreateRepositoryPayload }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("repository", Repository?.self),
        ] }

        /// The new repository.
        var repository: Repository? { __data["repository"] }

        /// CreateRepository.Repository
        ///
        /// Parent Type: `Repository`
        struct Repository: GraphQLSchema.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { GraphQLSchema.Objects.Repository }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("name", String.self),
          ] }

          /// The name of the repository.
          var name: String { __data["name"] }
        }
      }
    }
  }

}