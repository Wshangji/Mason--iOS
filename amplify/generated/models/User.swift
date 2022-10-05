// swiftlint:disable all
import Amplify
import Foundation

public struct User: Model {
  public let id: String
  public var name: String?
  public var isAgree: Bool?
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      name: String? = nil,
      isAgree: Bool? = nil) {
    self.init(id: id,
      name: name,
      isAgree: isAgree,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      name: String? = nil,
      isAgree: Bool? = nil,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.name = name
      self.isAgree = isAgree
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}