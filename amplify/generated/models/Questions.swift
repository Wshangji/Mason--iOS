// swiftlint:disable all
import Amplify
import Foundation

public struct Questions: Model {
  public let id: String
  public var name: String?
  public var pro1: String?
  public var pro2: String?
  public var pro3: String?
  public var pro4: String?
  public var pro5: String?
  public var pro6_1: String?
  public var pro6_2: String?
  public var pro7: String?
  public var pro8: String?
  public var pro9: String?
  public var pro10_1: String?
  public var pro10_2: String?
  public var pro10_3: String?
  public var pro10_4: String?
  public var pro11_1: String?
  public var pro11_2: String?
  public var pro11_3: String?
  public var pro11_4: String?
  public var pro11_5: String?
  public var pro12_1: String?
  public var pro12_2: String?
  public var pro12_3: String?
  public var pro12_4: String?
  public var pro12_5: String?
  public var updatedAt: Temporal.DateTime?
  public var createdAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      name: String? = nil,
      pro1: String? = nil,
      pro2: String? = nil,
      pro3: String? = nil,
      pro4: String? = nil,
      pro5: String? = nil,
      pro6_1: String? = nil,
      pro6_2: String? = nil,
      pro7: String? = nil,
      pro8: String? = nil,
      pro9: String? = nil,
      pro10_1: String? = nil,
      pro10_2: String? = nil,
      pro10_3: String? = nil,
      pro10_4: String? = nil,
      pro11_1: String? = nil,
      pro11_2: String? = nil,
      pro11_3: String? = nil,
      pro11_4: String? = nil,
      pro11_5: String? = nil,
      pro12_1: String? = nil,
      pro12_2: String? = nil,
      pro12_3: String? = nil,
      pro12_4: String? = nil,
      pro12_5: String? = nil,
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
      pro7: pro7,
      pro8: pro8,
      pro9: pro9,
      pro10_1: pro10_1,
      pro10_2: pro10_2,
      pro10_3: pro10_3,
      pro10_4: pro10_4,
      pro11_1: pro11_1,
      pro11_2: pro11_2,
      pro11_3: pro11_3,
      pro11_4: pro11_4,
      pro11_5: pro11_5,
      pro12_1: pro12_1,
      pro12_2: pro12_2,
      pro12_3: pro12_3,
      pro12_4: pro12_4,
      pro12_5: pro12_5,
      updatedAt: updatedAt,
      createdAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      name: String? = nil,
      pro1: String? = nil,
      pro2: String? = nil,
      pro3: String? = nil,
      pro4: String? = nil,
      pro5: String? = nil,
      pro6_1: String? = nil,
      pro6_2: String? = nil,
      pro7: String? = nil,
      pro8: String? = nil,
      pro9: String? = nil,
      pro10_1: String? = nil,
      pro10_2: String? = nil,
      pro10_3: String? = nil,
      pro10_4: String? = nil,
      pro11_1: String? = nil,
      pro11_2: String? = nil,
      pro11_3: String? = nil,
      pro11_4: String? = nil,
      pro11_5: String? = nil,
      pro12_1: String? = nil,
      pro12_2: String? = nil,
      pro12_3: String? = nil,
      pro12_4: String? = nil,
      pro12_5: String? = nil,
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
      self.pro7 = pro7
      self.pro8 = pro8
      self.pro9 = pro9
      self.pro10_1 = pro10_1
      self.pro10_2 = pro10_2
      self.pro10_3 = pro10_3
      self.pro10_4 = pro10_4
      self.pro11_1 = pro11_1
      self.pro11_2 = pro11_2
      self.pro11_3 = pro11_3
      self.pro11_4 = pro11_4
      self.pro11_5 = pro11_5
      self.pro12_1 = pro12_1
      self.pro12_2 = pro12_2
      self.pro12_3 = pro12_3
      self.pro12_4 = pro12_4
      self.pro12_5 = pro12_5
      self.updatedAt = updatedAt
      self.createdAt = createdAt
  }
}