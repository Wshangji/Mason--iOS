// swiftlint:disable all
import Amplify
import Foundation

public struct Perception: Model {
  public let id: String
  public var name: String?
  public var gender: String?
  public var race: String?
  public var ethnicity: String?
  public var ses: String?
  public var eigenstates: String?
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      name: String? = nil,
      gender: String? = nil,
      race: String? = nil,
      ethnicity: String? = nil,
      ses: String? = nil,
      eigenstates: String? = nil,
      createdAt: Temporal.DateTime? = nil) {
    self.init(id: id,
      name: name,
      gender: gender,
      race: race,
      ethnicity: ethnicity,
      ses: ses,
      eigenstates: eigenstates,
      createdAt: createdAt,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      name: String? = nil,
      gender: String? = nil,
      race: String? = nil,
      ethnicity: String? = nil,
      ses: String? = nil,
      eigenstates: String? = nil,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.name = name
      self.gender = gender
      self.race = race
      self.ethnicity = ethnicity
      self.ses = ses
      self.eigenstates = eigenstates
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}