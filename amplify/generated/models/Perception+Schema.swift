// swiftlint:disable all
import Amplify
import Foundation

extension Perception {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case gender
    case race
    case ethnicity
    case credits
    case employs
    case eigenstates
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let perception = Perception.keys
    
    model.authRules = [
      rule(allow: .owner, ownerField: "owner", identityClaim: "cognito:username", provider: .userPools, operations: [.create, .delete, .update])
    ]
    
    model.pluralName = "Perceptions"
    
    model.fields(
      .id(),
      .field(perception.name, is: .optional, ofType: .string),
      .field(perception.gender, is: .optional, ofType: .string),
      .field(perception.race, is: .optional, ofType: .string),
      .field(perception.ethnicity, is: .optional, ofType: .string),
      .field(perception.credits, is: .optional, ofType: .string),
      .field(perception.employs, is: .optional, ofType: .string),
      .field(perception.eigenstates, is: .optional, ofType: .string),
      .field(perception.createdAt, is: .optional, ofType: .dateTime),
      .field(perception.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}