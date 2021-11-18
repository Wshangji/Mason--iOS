// swiftlint:disable all
import Amplify
import Foundation

public struct Questions: Model {
  public let id: String
  public var name: String
  public var pro1: String?
  public var pro2: String?
  public var pro3: String?
  public var pro4: String?
  public var pro5: String?
  public var pro6_1: String?
  public var pro6_2: String?
  public var pro7_1: String?
  public var pro7_2: String?
  public var pro7_3: String?
  public var pro7_4: String?
  public var pro8_1: String?
  public var pro8_2: String?
  public var pro8_3: String?
  public var pro8_4: String?
  public var pro8_5: String?
  public var pro9_1: String?
  public var pro9_2: String?
  public var pro9_3: String?
  public var pro9_4: String?
  public var pro9_5: String?
  public var updatedAt: Temporal.DateTime?
  public var createdAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      name: String,
      pro1: String? = nil,
      pro2: String? = nil,
      pro3: String? = nil,
      pro4: String? = nil,
      pro5: String? = nil,
      pro6_1: String? = nil,
      pro6_2: String? = nil,
      pro7_1: String? = nil,
      pro7_2: String? = nil,
      pro7_3: String? = nil,
      pro7_4: String? = nil,
      pro8_1: String? = nil,
      pro8_2: String? = nil,
      pro8_3: String? = nil,
      pro8_4: String? = nil,
      pro8_5: String? = nil,
      pro9_1: String? = nil,
      pro9_2: String? = nil,
      pro9_3: String? = nil,
      pro9_4: String? = nil,
      pro9_5: String? = nil,
      updatedAt: Temporal.DateTime? = nil) {
    self.init(id: id,
      name: name,
      pro1: pro1,
      pro2: pro2,
      pro3: pro3,
      pro4: pro4,
      pro5: pro5,
      pro6_1: pro6_1,
      pro6_2: pro6_2,
      pro7_1: pro7_1,
      pro7_2: pro7_2,
      pro7_3: pro7_3,
      pro7_4: pro7_4,
      pro8_1: pro8_1,
      pro8_2: pro8_2,
      pro8_3: pro8_3,
      pro8_4: pro8_4,
      pro8_5: pro8_5,
      pro9_1: pro9_1,
      pro9_2: pro9_2,
      pro9_3: pro9_3,
      pro9_4: pro9_4,
      pro9_5: pro9_5,
      updatedAt: updatedAt,
      createdAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      name: String,
      pro1: String? = nil,
      pro2: String? = nil,
      pro3: String? = nil,
      pro4: String? = nil,
      pro5: String? = nil,
      pro6_1: String? = nil,
      pro6_2: String? = nil,
      pro7_1: String? = nil,
      pro7_2: String? = nil,
      pro7_3: String? = nil,
      pro7_4: String? = nil,
      pro8_1: String? = nil,
      pro8_2: String? = nil,
      pro8_3: String? = nil,
      pro8_4: String? = nil,
      pro8_5: String? = nil,
      pro9_1: String? = nil,
      pro9_2: String? = nil,
      pro9_3: String? = nil,
      pro9_4: String? = nil,
      pro9_5: String? = nil,
      updatedAt: Temporal.DateTime? = nil,
      createdAt: Temporal.DateTime? = nil) {
      self.id = id
      self.name = name
      self.pro1 = pro1
      self.pro2 = pro2
      self.pro3 = pro3
      self.pro4 = pro4
      self.pro5 = pro5
      self.pro6_1 = pro6_1
      self.pro6_2 = pro6_2
      self.pro7_1 = pro7_1
      self.pro7_2 = pro7_2
      self.pro7_3 = pro7_3
      self.pro7_4 = pro7_4
      self.pro8_1 = pro8_1
      self.pro8_2 = pro8_2
      self.pro8_3 = pro8_3
      self.pro8_4 = pro8_4
      self.pro8_5 = pro8_5
      self.pro9_1 = pro9_1
      self.pro9_2 = pro9_2
      self.pro9_3 = pro9_3
      self.pro9_4 = pro9_4
      self.pro9_5 = pro9_5
      self.updatedAt = updatedAt
      self.createdAt = createdAt
  }
}