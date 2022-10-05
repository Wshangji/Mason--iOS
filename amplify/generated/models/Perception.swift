// swiftlint:disable all
import Amplify
import Foundation

public struct Perception: Model {
  public let id: String
  public var name: String?
  public var gender: String?
  public var race: String?
  public var ethnicity: String?
  public var credits: String?
  public var employs: String?
  public var eigenstates: String?
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      name: String? = nil,
      gender: String? = nil,
      race: String? = nil,
      ethnicity: String? = nil,
      credits: String? = nil,
      employs: String? = nil,
      eigenstates: String? = nil,
      createdAt: Temporal.DateTime? = nil) {
    self.init(id: id,
      name: name,
      gender: gender,
      race: race,
      ethnicity: ethnicity,
      credits: credits,
      employs: employs,
      eigenstates: eigenstates,
      createdAt: createdAt,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      name: String? = nil,
      gender: String? = nil,
      race: String? = nil,
      ethnicity: String? = nil,
      credits: String? = nil,
      employs: String? = nil,
      eigenstates: String? = nil,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.name = name
      self.gender = gender
      self.race = race
      self.ethnicity = ethnicity
      self.credits = credits
      self.employs = employs
      self.eigenstates = eigenstates
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}