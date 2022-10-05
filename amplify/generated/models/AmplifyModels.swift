// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "a21bff2f22cff4b4e511ecc0281f82bc"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Questions.self)
    ModelRegistry.register(modelType: Perception.self)
    ModelRegistry.register(modelType: User.self)
  }
}