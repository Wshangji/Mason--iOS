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
    case pro7_1
    case pro7_2
    case pro7_3
    case pro7_4
    case pro8_1
    case pro8_2
    case pro8_3
    case pro8_4
    case pro8_5
    case pro9_1
    case pro9_2
    case pro9_3
    case pro9_4
    case pro9_5
    case updatedAt
    case createdAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let questions = Questions.keys
    
    model.authRules = [
      rule(allow: .owner, ownerField: "owner", identityClaim: "cognito:username", provider: .userPools, operations: [.create, .delete, .update])
    ]
    
    model.pluralName = "Questions"
    
    model.fields(
      .id(),
      .field(questions.name, is: .required, ofType: .string),
      .field(questions.pro1, is: .optional, ofType: .string),
      .field(questions.pro2, is: .optional, ofType: .string),
      .field(questions.pro3, is: .optional, ofType: .string),
      .field(questions.pro4, is: .optional, ofType: .string),
      .field(questions.pro5, is: .optional, ofType: .string),
      .field(questions.pro6_1, is: .optional, ofType: .string),
      .field(questions.pro6_2, is: .optional, ofType: .string),
      .field(questions.pro7_1, is: .optional, ofType: .string),
      .field(questions.pro7_2, is: .optional, ofType: .string),
      .field(questions.pro7_3, is: .optional, ofType: .string),
      .field(questions.pro7_4, is: .optional, ofType: .string),
      .field(questions.pro8_1, is: .optional, ofType: .string),
      .field(questions.pro8_2, is: .optional, ofType: .string),
      .field(questions.pro8_3, is: .optional, ofType: .string),
      .field(questions.pro8_4, is: .optional, ofType: .string),
      .field(questions.pro8_5, is: .optional, ofType: .string),
      .field(questions.pro9_1, is: .optional, ofType: .string),
      .field(questions.pro9_2, is: .optional, ofType: .string),
      .field(questions.pro9_3, is: .optional, ofType: .string),
      .field(questions.pro9_4, is: .optional, ofType: .string),
      .field(questions.pro9_5, is: .optional, ofType: .string),
      .field(questions.updatedAt, is: .optional, ofType: .dateTime),
      .field(questions.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}