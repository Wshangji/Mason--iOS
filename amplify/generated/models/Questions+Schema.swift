// swiftlint:disable all
import Amplify
import Foundation

extension Questions {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case pro1
    case pro2
    case pro3
    case pro4
    case pro5
    case pro6_1
    case pro6_2
    case pro7
    case pro8
    case pro9
    case pro10_1
    case pro10_2
    case pro10_3
    case pro10_4
    case pro11_1
    case pro11_2
    case pro11_3
    case pro11_4
    case pro11_5
    case pro12_1
    case pro12_2
    case pro12_3
    case pro12_4
    case pro12_5
    case updatedAt
    case createdAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let questions = Questions.keys
    
    model.authRules = [
      rule(allow: .public, operations: [.create, .update, .delete, .read])
    ]
    
    model.pluralName = "Questions"
    
    model.fields(
      .id(),
      .field(questions.name, is: .optional, ofType: .string),
      .field(questions.pro1, is: .optional, ofType: .string),
      .field(questions.pro2, is: .optional, ofType: .string),
      .field(questions.pro3, is: .optional, ofType: .string),
      .field(questions.pro4, is: .optional, ofType: .string),
      .field(questions.pro5, is: .optional, ofType: .string),
      .field(questions.pro6_1, is: .optional, ofType: .string),
      .field(questions.pro6_2, is: .optional, ofType: .string),
      .field(questions.pro7, is: .optional, ofType: .string),
      .field(questions.pro8, is: .optional, ofType: .string),
      .field(questions.pro9, is: .optional, ofType: .string),
      .field(questions.pro10_1, is: .optional, ofType: .string),
      .field(questions.pro10_2, is: .optional, ofType: .string),
      .field(questions.pro10_3, is: .optional, ofType: .string),
      .field(questions.pro10_4, is: .optional, ofType: .string),
      .field(questions.pro11_1, is: .optional, ofType: .string),
      .field(questions.pro11_2, is: .optional, ofType: .string),
      .field(questions.pro11_3, is: .optional, ofType: .string),
      .field(questions.pro11_4, is: .optional, ofType: .string),
      .field(questions.pro11_5, is: .optional, ofType: .string),
      .field(questions.pro12_1, is: .optional, ofType: .string),
      .field(questions.pro12_2, is: .optional, ofType: .string),
      .field(questions.pro12_3, is: .optional, ofType: .string),
      .field(questions.pro12_4, is: .optional, ofType: .string),
      .field(questions.pro12_5, is: .optional, ofType: .string),
      .field(questions.updatedAt, is: .optional, ofType: .dateTime),
      .field(questions.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}