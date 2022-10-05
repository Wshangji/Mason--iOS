//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct DeleteUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelUserConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: ModelStringInput? = nil, isAgree: ModelBooleanInput? = nil, and: [ModelUserConditionInput?]? = nil, or: [ModelUserConditionInput?]? = nil, not: ModelUserConditionInput? = nil) {
    graphQLMap = ["name": name, "isAgree": isAgree, "and": and, "or": or, "not": not]
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var isAgree: ModelBooleanInput? {
    get {
      return graphQLMap["isAgree"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "isAgree")
    }
  }

  public var and: [ModelUserConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserConditionInput? {
    get {
      return graphQLMap["not"] as! ModelUserConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct ModelBooleanInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Bool? = nil, eq: Bool? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Bool? {
    get {
      return graphQLMap["ne"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Bool? {
    get {
      return graphQLMap["eq"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct CreateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String? = nil, isAgree: Bool? = nil) {
    graphQLMap = ["id": id, "name": name, "isAgree": isAgree]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var isAgree: Bool? {
    get {
      return graphQLMap["isAgree"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "isAgree")
    }
  }
}

public struct UpdateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, name: String? = nil, isAgree: Bool? = nil) {
    graphQLMap = ["id": id, "name": name, "isAgree": isAgree]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var isAgree: Bool? {
    get {
      return graphQLMap["isAgree"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "isAgree")
    }
  }
}

public struct CreatePerceptionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String? = nil, gender: String? = nil, race: String? = nil, ethnicity: String? = nil, credits: String? = nil, employs: String? = nil, eigenstates: String? = nil, createdAt: String? = nil) {
    graphQLMap = ["id": id, "name": name, "gender": gender, "race": race, "ethnicity": ethnicity, "credits": credits, "employs": employs, "eigenstates": eigenstates, "createdAt": createdAt]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var gender: String? {
    get {
      return graphQLMap["gender"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gender")
    }
  }

  public var race: String? {
    get {
      return graphQLMap["race"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "race")
    }
  }

  public var ethnicity: String? {
    get {
      return graphQLMap["ethnicity"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ethnicity")
    }
  }

  public var credits: String? {
    get {
      return graphQLMap["credits"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "credits")
    }
  }

  public var employs: String? {
    get {
      return graphQLMap["employs"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "employs")
    }
  }

  public var eigenstates: String? {
    get {
      return graphQLMap["eigenstates"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eigenstates")
    }
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }
}

public struct ModelPerceptionConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: ModelStringInput? = nil, gender: ModelStringInput? = nil, race: ModelStringInput? = nil, ethnicity: ModelStringInput? = nil, credits: ModelStringInput? = nil, employs: ModelStringInput? = nil, eigenstates: ModelStringInput? = nil, createdAt: ModelStringInput? = nil, and: [ModelPerceptionConditionInput?]? = nil, or: [ModelPerceptionConditionInput?]? = nil, not: ModelPerceptionConditionInput? = nil) {
    graphQLMap = ["name": name, "gender": gender, "race": race, "ethnicity": ethnicity, "credits": credits, "employs": employs, "eigenstates": eigenstates, "createdAt": createdAt, "and": and, "or": or, "not": not]
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var gender: ModelStringInput? {
    get {
      return graphQLMap["gender"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gender")
    }
  }

  public var race: ModelStringInput? {
    get {
      return graphQLMap["race"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "race")
    }
  }

  public var ethnicity: ModelStringInput? {
    get {
      return graphQLMap["ethnicity"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ethnicity")
    }
  }

  public var credits: ModelStringInput? {
    get {
      return graphQLMap["credits"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "credits")
    }
  }

  public var employs: ModelStringInput? {
    get {
      return graphQLMap["employs"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "employs")
    }
  }

  public var eigenstates: ModelStringInput? {
    get {
      return graphQLMap["eigenstates"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eigenstates")
    }
  }

  public var createdAt: ModelStringInput? {
    get {
      return graphQLMap["createdAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var and: [ModelPerceptionConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelPerceptionConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelPerceptionConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelPerceptionConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelPerceptionConditionInput? {
    get {
      return graphQLMap["not"] as! ModelPerceptionConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdatePerceptionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, name: String? = nil, gender: String? = nil, race: String? = nil, ethnicity: String? = nil, credits: String? = nil, employs: String? = nil, eigenstates: String? = nil, createdAt: String? = nil) {
    graphQLMap = ["id": id, "name": name, "gender": gender, "race": race, "ethnicity": ethnicity, "credits": credits, "employs": employs, "eigenstates": eigenstates, "createdAt": createdAt]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var gender: String? {
    get {
      return graphQLMap["gender"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gender")
    }
  }

  public var race: String? {
    get {
      return graphQLMap["race"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "race")
    }
  }

  public var ethnicity: String? {
    get {
      return graphQLMap["ethnicity"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ethnicity")
    }
  }

  public var credits: String? {
    get {
      return graphQLMap["credits"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "credits")
    }
  }

  public var employs: String? {
    get {
      return graphQLMap["employs"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "employs")
    }
  }

  public var eigenstates: String? {
    get {
      return graphQLMap["eigenstates"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eigenstates")
    }
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }
}

public struct DeletePerceptionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateQuestionsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String, pro1: String? = nil, pro2: String? = nil, pro3: String? = nil, pro4: String? = nil, pro5: String? = nil, pro6_1: String? = nil, pro6_2: String? = nil, pro7: String? = nil, pro8: String? = nil, pro9: String? = nil, pro10_1: String? = nil, pro10_2: String? = nil, pro10_3: String? = nil, pro10_4: String? = nil, pro11_1: String? = nil, pro11_2: String? = nil, pro11_3: String? = nil, pro11_4: String? = nil, pro11_5: String? = nil, pro12_1: String? = nil, pro12_2: String? = nil, pro12_3: String? = nil, pro12_4: String? = nil, pro12_5: String? = nil, updatedAt: String? = nil) {
    graphQLMap = ["id": id, "name": name, "pro1": pro1, "pro2": pro2, "pro3": pro3, "pro4": pro4, "pro5": pro5, "pro6_1": pro6_1, "pro6_2": pro6_2, "pro7": pro7, "pro8": pro8, "pro9": pro9, "pro10_1": pro10_1, "pro10_2": pro10_2, "pro10_3": pro10_3, "pro10_4": pro10_4, "pro11_1": pro11_1, "pro11_2": pro11_2, "pro11_3": pro11_3, "pro11_4": pro11_4, "pro11_5": pro11_5, "pro12_1": pro12_1, "pro12_2": pro12_2, "pro12_3": pro12_3, "pro12_4": pro12_4, "pro12_5": pro12_5, "updatedAt": updatedAt]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var pro1: String? {
    get {
      return graphQLMap["pro1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro1")
    }
  }

  public var pro2: String? {
    get {
      return graphQLMap["pro2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro2")
    }
  }

  public var pro3: String? {
    get {
      return graphQLMap["pro3"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro3")
    }
  }

  public var pro4: String? {
    get {
      return graphQLMap["pro4"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro4")
    }
  }

  public var pro5: String? {
    get {
      return graphQLMap["pro5"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro5")
    }
  }

  public var pro6_1: String? {
    get {
      return graphQLMap["pro6_1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro6_1")
    }
  }

  public var pro6_2: String? {
    get {
      return graphQLMap["pro6_2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro6_2")
    }
  }

  public var pro7: String? {
    get {
      return graphQLMap["pro7"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro7")
    }
  }

  public var pro8: String? {
    get {
      return graphQLMap["pro8"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro8")
    }
  }

  public var pro9: String? {
    get {
      return graphQLMap["pro9"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro9")
    }
  }

  public var pro10_1: String? {
    get {
      return graphQLMap["pro10_1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro10_1")
    }
  }

  public var pro10_2: String? {
    get {
      return graphQLMap["pro10_2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro10_2")
    }
  }

  public var pro10_3: String? {
    get {
      return graphQLMap["pro10_3"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro10_3")
    }
  }

  public var pro10_4: String? {
    get {
      return graphQLMap["pro10_4"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro10_4")
    }
  }

  public var pro11_1: String? {
    get {
      return graphQLMap["pro11_1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_1")
    }
  }

  public var pro11_2: String? {
    get {
      return graphQLMap["pro11_2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_2")
    }
  }

  public var pro11_3: String? {
    get {
      return graphQLMap["pro11_3"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_3")
    }
  }

  public var pro11_4: String? {
    get {
      return graphQLMap["pro11_4"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_4")
    }
  }

  public var pro11_5: String? {
    get {
      return graphQLMap["pro11_5"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_5")
    }
  }

  public var pro12_1: String? {
    get {
      return graphQLMap["pro12_1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_1")
    }
  }

  public var pro12_2: String? {
    get {
      return graphQLMap["pro12_2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_2")
    }
  }

  public var pro12_3: String? {
    get {
      return graphQLMap["pro12_3"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_3")
    }
  }

  public var pro12_4: String? {
    get {
      return graphQLMap["pro12_4"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_4")
    }
  }

  public var pro12_5: String? {
    get {
      return graphQLMap["pro12_5"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_5")
    }
  }

  public var updatedAt: String? {
    get {
      return graphQLMap["updatedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }
}

public struct ModelQuestionsConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: ModelStringInput? = nil, pro1: ModelStringInput? = nil, pro2: ModelStringInput? = nil, pro3: ModelStringInput? = nil, pro4: ModelStringInput? = nil, pro5: ModelStringInput? = nil, pro6_1: ModelStringInput? = nil, pro6_2: ModelStringInput? = nil, pro7: ModelStringInput? = nil, pro8: ModelStringInput? = nil, pro9: ModelStringInput? = nil, pro10_1: ModelStringInput? = nil, pro10_2: ModelStringInput? = nil, pro10_3: ModelStringInput? = nil, pro10_4: ModelStringInput? = nil, pro11_1: ModelStringInput? = nil, pro11_2: ModelStringInput? = nil, pro11_3: ModelStringInput? = nil, pro11_4: ModelStringInput? = nil, pro11_5: ModelStringInput? = nil, pro12_1: ModelStringInput? = nil, pro12_2: ModelStringInput? = nil, pro12_3: ModelStringInput? = nil, pro12_4: ModelStringInput? = nil, pro12_5: ModelStringInput? = nil, updatedAt: ModelStringInput? = nil, and: [ModelQuestionsConditionInput?]? = nil, or: [ModelQuestionsConditionInput?]? = nil, not: ModelQuestionsConditionInput? = nil) {
    graphQLMap = ["name": name, "pro1": pro1, "pro2": pro2, "pro3": pro3, "pro4": pro4, "pro5": pro5, "pro6_1": pro6_1, "pro6_2": pro6_2, "pro7": pro7, "pro8": pro8, "pro9": pro9, "pro10_1": pro10_1, "pro10_2": pro10_2, "pro10_3": pro10_3, "pro10_4": pro10_4, "pro11_1": pro11_1, "pro11_2": pro11_2, "pro11_3": pro11_3, "pro11_4": pro11_4, "pro11_5": pro11_5, "pro12_1": pro12_1, "pro12_2": pro12_2, "pro12_3": pro12_3, "pro12_4": pro12_4, "pro12_5": pro12_5, "updatedAt": updatedAt, "and": and, "or": or, "not": not]
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var pro1: ModelStringInput? {
    get {
      return graphQLMap["pro1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro1")
    }
  }

  public var pro2: ModelStringInput? {
    get {
      return graphQLMap["pro2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro2")
    }
  }

  public var pro3: ModelStringInput? {
    get {
      return graphQLMap["pro3"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro3")
    }
  }

  public var pro4: ModelStringInput? {
    get {
      return graphQLMap["pro4"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro4")
    }
  }

  public var pro5: ModelStringInput? {
    get {
      return graphQLMap["pro5"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro5")
    }
  }

  public var pro6_1: ModelStringInput? {
    get {
      return graphQLMap["pro6_1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro6_1")
    }
  }

  public var pro6_2: ModelStringInput? {
    get {
      return graphQLMap["pro6_2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro6_2")
    }
  }

  public var pro7: ModelStringInput? {
    get {
      return graphQLMap["pro7"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro7")
    }
  }

  public var pro8: ModelStringInput? {
    get {
      return graphQLMap["pro8"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro8")
    }
  }

  public var pro9: ModelStringInput? {
    get {
      return graphQLMap["pro9"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro9")
    }
  }

  public var pro10_1: ModelStringInput? {
    get {
      return graphQLMap["pro10_1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro10_1")
    }
  }

  public var pro10_2: ModelStringInput? {
    get {
      return graphQLMap["pro10_2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro10_2")
    }
  }

  public var pro10_3: ModelStringInput? {
    get {
      return graphQLMap["pro10_3"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro10_3")
    }
  }

  public var pro10_4: ModelStringInput? {
    get {
      return graphQLMap["pro10_4"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro10_4")
    }
  }

  public var pro11_1: ModelStringInput? {
    get {
      return graphQLMap["pro11_1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_1")
    }
  }

  public var pro11_2: ModelStringInput? {
    get {
      return graphQLMap["pro11_2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_2")
    }
  }

  public var pro11_3: ModelStringInput? {
    get {
      return graphQLMap["pro11_3"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_3")
    }
  }

  public var pro11_4: ModelStringInput? {
    get {
      return graphQLMap["pro11_4"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_4")
    }
  }

  public var pro11_5: ModelStringInput? {
    get {
      return graphQLMap["pro11_5"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_5")
    }
  }

  public var pro12_1: ModelStringInput? {
    get {
      return graphQLMap["pro12_1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_1")
    }
  }

  public var pro12_2: ModelStringInput? {
    get {
      return graphQLMap["pro12_2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_2")
    }
  }

  public var pro12_3: ModelStringInput? {
    get {
      return graphQLMap["pro12_3"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_3")
    }
  }

  public var pro12_4: ModelStringInput? {
    get {
      return graphQLMap["pro12_4"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_4")
    }
  }

  public var pro12_5: ModelStringInput? {
    get {
      return graphQLMap["pro12_5"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_5")
    }
  }

  public var updatedAt: ModelStringInput? {
    get {
      return graphQLMap["updatedAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var and: [ModelQuestionsConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelQuestionsConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelQuestionsConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelQuestionsConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelQuestionsConditionInput? {
    get {
      return graphQLMap["not"] as! ModelQuestionsConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateQuestionsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, name: String? = nil, pro1: String? = nil, pro2: String? = nil, pro3: String? = nil, pro4: String? = nil, pro5: String? = nil, pro6_1: String? = nil, pro6_2: String? = nil, pro7: String? = nil, pro8: String? = nil, pro9: String? = nil, pro10_1: String? = nil, pro10_2: String? = nil, pro10_3: String? = nil, pro10_4: String? = nil, pro11_1: String? = nil, pro11_2: String? = nil, pro11_3: String? = nil, pro11_4: String? = nil, pro11_5: String? = nil, pro12_1: String? = nil, pro12_2: String? = nil, pro12_3: String? = nil, pro12_4: String? = nil, pro12_5: String? = nil, updatedAt: String? = nil) {
    graphQLMap = ["id": id, "name": name, "pro1": pro1, "pro2": pro2, "pro3": pro3, "pro4": pro4, "pro5": pro5, "pro6_1": pro6_1, "pro6_2": pro6_2, "pro7": pro7, "pro8": pro8, "pro9": pro9, "pro10_1": pro10_1, "pro10_2": pro10_2, "pro10_3": pro10_3, "pro10_4": pro10_4, "pro11_1": pro11_1, "pro11_2": pro11_2, "pro11_3": pro11_3, "pro11_4": pro11_4, "pro11_5": pro11_5, "pro12_1": pro12_1, "pro12_2": pro12_2, "pro12_3": pro12_3, "pro12_4": pro12_4, "pro12_5": pro12_5, "updatedAt": updatedAt]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var pro1: String? {
    get {
      return graphQLMap["pro1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro1")
    }
  }

  public var pro2: String? {
    get {
      return graphQLMap["pro2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro2")
    }
  }

  public var pro3: String? {
    get {
      return graphQLMap["pro3"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro3")
    }
  }

  public var pro4: String? {
    get {
      return graphQLMap["pro4"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro4")
    }
  }

  public var pro5: String? {
    get {
      return graphQLMap["pro5"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro5")
    }
  }

  public var pro6_1: String? {
    get {
      return graphQLMap["pro6_1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro6_1")
    }
  }

  public var pro6_2: String? {
    get {
      return graphQLMap["pro6_2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro6_2")
    }
  }

  public var pro7: String? {
    get {
      return graphQLMap["pro7"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro7")
    }
  }

  public var pro8: String? {
    get {
      return graphQLMap["pro8"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro8")
    }
  }

  public var pro9: String? {
    get {
      return graphQLMap["pro9"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro9")
    }
  }

  public var pro10_1: String? {
    get {
      return graphQLMap["pro10_1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro10_1")
    }
  }

  public var pro10_2: String? {
    get {
      return graphQLMap["pro10_2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro10_2")
    }
  }

  public var pro10_3: String? {
    get {
      return graphQLMap["pro10_3"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro10_3")
    }
  }

  public var pro10_4: String? {
    get {
      return graphQLMap["pro10_4"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro10_4")
    }
  }

  public var pro11_1: String? {
    get {
      return graphQLMap["pro11_1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_1")
    }
  }

  public var pro11_2: String? {
    get {
      return graphQLMap["pro11_2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_2")
    }
  }

  public var pro11_3: String? {
    get {
      return graphQLMap["pro11_3"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_3")
    }
  }

  public var pro11_4: String? {
    get {
      return graphQLMap["pro11_4"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_4")
    }
  }

  public var pro11_5: String? {
    get {
      return graphQLMap["pro11_5"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_5")
    }
  }

  public var pro12_1: String? {
    get {
      return graphQLMap["pro12_1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_1")
    }
  }

  public var pro12_2: String? {
    get {
      return graphQLMap["pro12_2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_2")
    }
  }

  public var pro12_3: String? {
    get {
      return graphQLMap["pro12_3"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_3")
    }
  }

  public var pro12_4: String? {
    get {
      return graphQLMap["pro12_4"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_4")
    }
  }

  public var pro12_5: String? {
    get {
      return graphQLMap["pro12_5"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_5")
    }
  }

  public var updatedAt: String? {
    get {
      return graphQLMap["updatedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }
}

public struct DeleteQuestionsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelPerceptionFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, name: ModelStringInput? = nil, gender: ModelStringInput? = nil, race: ModelStringInput? = nil, ethnicity: ModelStringInput? = nil, credits: ModelStringInput? = nil, employs: ModelStringInput? = nil, eigenstates: ModelStringInput? = nil, createdAt: ModelStringInput? = nil, and: [ModelPerceptionFilterInput?]? = nil, or: [ModelPerceptionFilterInput?]? = nil, not: ModelPerceptionFilterInput? = nil) {
    graphQLMap = ["id": id, "name": name, "gender": gender, "race": race, "ethnicity": ethnicity, "credits": credits, "employs": employs, "eigenstates": eigenstates, "createdAt": createdAt, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var gender: ModelStringInput? {
    get {
      return graphQLMap["gender"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gender")
    }
  }

  public var race: ModelStringInput? {
    get {
      return graphQLMap["race"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "race")
    }
  }

  public var ethnicity: ModelStringInput? {
    get {
      return graphQLMap["ethnicity"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ethnicity")
    }
  }

  public var credits: ModelStringInput? {
    get {
      return graphQLMap["credits"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "credits")
    }
  }

  public var employs: ModelStringInput? {
    get {
      return graphQLMap["employs"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "employs")
    }
  }

  public var eigenstates: ModelStringInput? {
    get {
      return graphQLMap["eigenstates"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eigenstates")
    }
  }

  public var createdAt: ModelStringInput? {
    get {
      return graphQLMap["createdAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var and: [ModelPerceptionFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelPerceptionFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelPerceptionFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelPerceptionFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelPerceptionFilterInput? {
    get {
      return graphQLMap["not"] as! ModelPerceptionFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct ModelQuestionsFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, name: ModelStringInput? = nil, pro1: ModelStringInput? = nil, pro2: ModelStringInput? = nil, pro3: ModelStringInput? = nil, pro4: ModelStringInput? = nil, pro5: ModelStringInput? = nil, pro6_1: ModelStringInput? = nil, pro6_2: ModelStringInput? = nil, pro7: ModelStringInput? = nil, pro8: ModelStringInput? = nil, pro9: ModelStringInput? = nil, pro10_1: ModelStringInput? = nil, pro10_2: ModelStringInput? = nil, pro10_3: ModelStringInput? = nil, pro10_4: ModelStringInput? = nil, pro11_1: ModelStringInput? = nil, pro11_2: ModelStringInput? = nil, pro11_3: ModelStringInput? = nil, pro11_4: ModelStringInput? = nil, pro11_5: ModelStringInput? = nil, pro12_1: ModelStringInput? = nil, pro12_2: ModelStringInput? = nil, pro12_3: ModelStringInput? = nil, pro12_4: ModelStringInput? = nil, pro12_5: ModelStringInput? = nil, updatedAt: ModelStringInput? = nil, and: [ModelQuestionsFilterInput?]? = nil, or: [ModelQuestionsFilterInput?]? = nil, not: ModelQuestionsFilterInput? = nil) {
    graphQLMap = ["id": id, "name": name, "pro1": pro1, "pro2": pro2, "pro3": pro3, "pro4": pro4, "pro5": pro5, "pro6_1": pro6_1, "pro6_2": pro6_2, "pro7": pro7, "pro8": pro8, "pro9": pro9, "pro10_1": pro10_1, "pro10_2": pro10_2, "pro10_3": pro10_3, "pro10_4": pro10_4, "pro11_1": pro11_1, "pro11_2": pro11_2, "pro11_3": pro11_3, "pro11_4": pro11_4, "pro11_5": pro11_5, "pro12_1": pro12_1, "pro12_2": pro12_2, "pro12_3": pro12_3, "pro12_4": pro12_4, "pro12_5": pro12_5, "updatedAt": updatedAt, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var pro1: ModelStringInput? {
    get {
      return graphQLMap["pro1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro1")
    }
  }

  public var pro2: ModelStringInput? {
    get {
      return graphQLMap["pro2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro2")
    }
  }

  public var pro3: ModelStringInput? {
    get {
      return graphQLMap["pro3"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro3")
    }
  }

  public var pro4: ModelStringInput? {
    get {
      return graphQLMap["pro4"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro4")
    }
  }

  public var pro5: ModelStringInput? {
    get {
      return graphQLMap["pro5"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro5")
    }
  }

  public var pro6_1: ModelStringInput? {
    get {
      return graphQLMap["pro6_1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro6_1")
    }
  }

  public var pro6_2: ModelStringInput? {
    get {
      return graphQLMap["pro6_2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro6_2")
    }
  }

  public var pro7: ModelStringInput? {
    get {
      return graphQLMap["pro7"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro7")
    }
  }

  public var pro8: ModelStringInput? {
    get {
      return graphQLMap["pro8"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro8")
    }
  }

  public var pro9: ModelStringInput? {
    get {
      return graphQLMap["pro9"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro9")
    }
  }

  public var pro10_1: ModelStringInput? {
    get {
      return graphQLMap["pro10_1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro10_1")
    }
  }

  public var pro10_2: ModelStringInput? {
    get {
      return graphQLMap["pro10_2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro10_2")
    }
  }

  public var pro10_3: ModelStringInput? {
    get {
      return graphQLMap["pro10_3"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro10_3")
    }
  }

  public var pro10_4: ModelStringInput? {
    get {
      return graphQLMap["pro10_4"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro10_4")
    }
  }

  public var pro11_1: ModelStringInput? {
    get {
      return graphQLMap["pro11_1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_1")
    }
  }

  public var pro11_2: ModelStringInput? {
    get {
      return graphQLMap["pro11_2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_2")
    }
  }

  public var pro11_3: ModelStringInput? {
    get {
      return graphQLMap["pro11_3"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_3")
    }
  }

  public var pro11_4: ModelStringInput? {
    get {
      return graphQLMap["pro11_4"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_4")
    }
  }

  public var pro11_5: ModelStringInput? {
    get {
      return graphQLMap["pro11_5"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro11_5")
    }
  }

  public var pro12_1: ModelStringInput? {
    get {
      return graphQLMap["pro12_1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_1")
    }
  }

  public var pro12_2: ModelStringInput? {
    get {
      return graphQLMap["pro12_2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_2")
    }
  }

  public var pro12_3: ModelStringInput? {
    get {
      return graphQLMap["pro12_3"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_3")
    }
  }

  public var pro12_4: ModelStringInput? {
    get {
      return graphQLMap["pro12_4"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_4")
    }
  }

  public var pro12_5: ModelStringInput? {
    get {
      return graphQLMap["pro12_5"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pro12_5")
    }
  }

  public var updatedAt: ModelStringInput? {
    get {
      return graphQLMap["updatedAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var and: [ModelQuestionsFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelQuestionsFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelQuestionsFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelQuestionsFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelQuestionsFilterInput? {
    get {
      return graphQLMap["not"] as! ModelQuestionsFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelUserFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, name: ModelStringInput? = nil, isAgree: ModelBooleanInput? = nil, and: [ModelUserFilterInput?]? = nil, or: [ModelUserFilterInput?]? = nil, not: ModelUserFilterInput? = nil) {
    graphQLMap = ["id": id, "name": name, "isAgree": isAgree, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var isAgree: ModelBooleanInput? {
    get {
      return graphQLMap["isAgree"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "isAgree")
    }
  }

  public var and: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserFilterInput? {
    get {
      return graphQLMap["not"] as! ModelUserFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public final class DeleteUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUser($input: DeleteUserInput!, $condition: ModelUserConditionInput) {\n  deleteUser(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    isAgree\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var input: DeleteUserInput
  public var condition: ModelUserConditionInput?

  public init(input: DeleteUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUser: DeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUser": deleteUser.flatMap { $0.snapshot }])
    }

    public var deleteUser: DeleteUser? {
      get {
        return (snapshot["deleteUser"] as? Snapshot).flatMap { DeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUser")
      }
    }

    public struct DeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("isAgree", type: .scalar(Bool.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, isAgree: Bool? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "name": name, "isAgree": isAgree, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var isAgree: Bool? {
        get {
          return snapshot["isAgree"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isAgree")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class CreateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUser($input: CreateUserInput!, $condition: ModelUserConditionInput) {\n  createUser(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    isAgree\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var input: CreateUserInput
  public var condition: ModelUserConditionInput?

  public init(input: CreateUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUser: CreateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUser": createUser.flatMap { $0.snapshot }])
    }

    public var createUser: CreateUser? {
      get {
        return (snapshot["createUser"] as? Snapshot).flatMap { CreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUser")
      }
    }

    public struct CreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("isAgree", type: .scalar(Bool.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, isAgree: Bool? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "name": name, "isAgree": isAgree, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var isAgree: Bool? {
        get {
          return snapshot["isAgree"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isAgree")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class UpdateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUser($input: UpdateUserInput!, $condition: ModelUserConditionInput) {\n  updateUser(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    isAgree\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var input: UpdateUserInput
  public var condition: ModelUserConditionInput?

  public init(input: UpdateUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUser: UpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUser": updateUser.flatMap { $0.snapshot }])
    }

    public var updateUser: UpdateUser? {
      get {
        return (snapshot["updateUser"] as? Snapshot).flatMap { UpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUser")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("isAgree", type: .scalar(Bool.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, isAgree: Bool? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "name": name, "isAgree": isAgree, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var isAgree: Bool? {
        get {
          return snapshot["isAgree"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isAgree")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class CreatePerceptionMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreatePerception($input: CreatePerceptionInput!, $condition: ModelPerceptionConditionInput) {\n  createPerception(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    gender\n    race\n    ethnicity\n    credits\n    employs\n    eigenstates\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var input: CreatePerceptionInput
  public var condition: ModelPerceptionConditionInput?

  public init(input: CreatePerceptionInput, condition: ModelPerceptionConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createPerception", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreatePerception.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createPerception: CreatePerception? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createPerception": createPerception.flatMap { $0.snapshot }])
    }

    public var createPerception: CreatePerception? {
      get {
        return (snapshot["createPerception"] as? Snapshot).flatMap { CreatePerception(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createPerception")
      }
    }

    public struct CreatePerception: GraphQLSelectionSet {
      public static let possibleTypes = ["Perception"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("gender", type: .scalar(String.self)),
        GraphQLField("race", type: .scalar(String.self)),
        GraphQLField("ethnicity", type: .scalar(String.self)),
        GraphQLField("credits", type: .scalar(String.self)),
        GraphQLField("employs", type: .scalar(String.self)),
        GraphQLField("eigenstates", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, gender: String? = nil, race: String? = nil, ethnicity: String? = nil, credits: String? = nil, employs: String? = nil, eigenstates: String? = nil, createdAt: String? = nil, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Perception", "id": id, "name": name, "gender": gender, "race": race, "ethnicity": ethnicity, "credits": credits, "employs": employs, "eigenstates": eigenstates, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var gender: String? {
        get {
          return snapshot["gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }

      public var race: String? {
        get {
          return snapshot["race"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "race")
        }
      }

      public var ethnicity: String? {
        get {
          return snapshot["ethnicity"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ethnicity")
        }
      }

      public var credits: String? {
        get {
          return snapshot["credits"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "credits")
        }
      }

      public var employs: String? {
        get {
          return snapshot["employs"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "employs")
        }
      }

      public var eigenstates: String? {
        get {
          return snapshot["eigenstates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "eigenstates")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class UpdatePerceptionMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdatePerception($input: UpdatePerceptionInput!, $condition: ModelPerceptionConditionInput) {\n  updatePerception(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    gender\n    race\n    ethnicity\n    credits\n    employs\n    eigenstates\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var input: UpdatePerceptionInput
  public var condition: ModelPerceptionConditionInput?

  public init(input: UpdatePerceptionInput, condition: ModelPerceptionConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updatePerception", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdatePerception.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updatePerception: UpdatePerception? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updatePerception": updatePerception.flatMap { $0.snapshot }])
    }

    public var updatePerception: UpdatePerception? {
      get {
        return (snapshot["updatePerception"] as? Snapshot).flatMap { UpdatePerception(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updatePerception")
      }
    }

    public struct UpdatePerception: GraphQLSelectionSet {
      public static let possibleTypes = ["Perception"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("gender", type: .scalar(String.self)),
        GraphQLField("race", type: .scalar(String.self)),
        GraphQLField("ethnicity", type: .scalar(String.self)),
        GraphQLField("credits", type: .scalar(String.self)),
        GraphQLField("employs", type: .scalar(String.self)),
        GraphQLField("eigenstates", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, gender: String? = nil, race: String? = nil, ethnicity: String? = nil, credits: String? = nil, employs: String? = nil, eigenstates: String? = nil, createdAt: String? = nil, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Perception", "id": id, "name": name, "gender": gender, "race": race, "ethnicity": ethnicity, "credits": credits, "employs": employs, "eigenstates": eigenstates, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var gender: String? {
        get {
          return snapshot["gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }

      public var race: String? {
        get {
          return snapshot["race"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "race")
        }
      }

      public var ethnicity: String? {
        get {
          return snapshot["ethnicity"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ethnicity")
        }
      }

      public var credits: String? {
        get {
          return snapshot["credits"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "credits")
        }
      }

      public var employs: String? {
        get {
          return snapshot["employs"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "employs")
        }
      }

      public var eigenstates: String? {
        get {
          return snapshot["eigenstates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "eigenstates")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class DeletePerceptionMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeletePerception($input: DeletePerceptionInput!, $condition: ModelPerceptionConditionInput) {\n  deletePerception(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    gender\n    race\n    ethnicity\n    credits\n    employs\n    eigenstates\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var input: DeletePerceptionInput
  public var condition: ModelPerceptionConditionInput?

  public init(input: DeletePerceptionInput, condition: ModelPerceptionConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deletePerception", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeletePerception.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deletePerception: DeletePerception? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deletePerception": deletePerception.flatMap { $0.snapshot }])
    }

    public var deletePerception: DeletePerception? {
      get {
        return (snapshot["deletePerception"] as? Snapshot).flatMap { DeletePerception(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deletePerception")
      }
    }

    public struct DeletePerception: GraphQLSelectionSet {
      public static let possibleTypes = ["Perception"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("gender", type: .scalar(String.self)),
        GraphQLField("race", type: .scalar(String.self)),
        GraphQLField("ethnicity", type: .scalar(String.self)),
        GraphQLField("credits", type: .scalar(String.self)),
        GraphQLField("employs", type: .scalar(String.self)),
        GraphQLField("eigenstates", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, gender: String? = nil, race: String? = nil, ethnicity: String? = nil, credits: String? = nil, employs: String? = nil, eigenstates: String? = nil, createdAt: String? = nil, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Perception", "id": id, "name": name, "gender": gender, "race": race, "ethnicity": ethnicity, "credits": credits, "employs": employs, "eigenstates": eigenstates, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var gender: String? {
        get {
          return snapshot["gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }

      public var race: String? {
        get {
          return snapshot["race"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "race")
        }
      }

      public var ethnicity: String? {
        get {
          return snapshot["ethnicity"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ethnicity")
        }
      }

      public var credits: String? {
        get {
          return snapshot["credits"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "credits")
        }
      }

      public var employs: String? {
        get {
          return snapshot["employs"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "employs")
        }
      }

      public var eigenstates: String? {
        get {
          return snapshot["eigenstates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "eigenstates")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class CreateQuestionsMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateQuestions($input: CreateQuestionsInput!, $condition: ModelQuestionsConditionInput) {\n  createQuestions(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    pro1\n    pro2\n    pro3\n    pro4\n    pro5\n    pro6_1\n    pro6_2\n    pro7\n    pro8\n    pro9\n    pro10_1\n    pro10_2\n    pro10_3\n    pro10_4\n    pro11_1\n    pro11_2\n    pro11_3\n    pro11_4\n    pro11_5\n    pro12_1\n    pro12_2\n    pro12_3\n    pro12_4\n    pro12_5\n    updatedAt\n    createdAt\n    owner\n  }\n}"

  public var input: CreateQuestionsInput
  public var condition: ModelQuestionsConditionInput?

  public init(input: CreateQuestionsInput, condition: ModelQuestionsConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createQuestions", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateQuestion.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createQuestions: CreateQuestion? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createQuestions": createQuestions.flatMap { $0.snapshot }])
    }

    public var createQuestions: CreateQuestion? {
      get {
        return (snapshot["createQuestions"] as? Snapshot).flatMap { CreateQuestion(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createQuestions")
      }
    }

    public struct CreateQuestion: GraphQLSelectionSet {
      public static let possibleTypes = ["Questions"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("pro1", type: .scalar(String.self)),
        GraphQLField("pro2", type: .scalar(String.self)),
        GraphQLField("pro3", type: .scalar(String.self)),
        GraphQLField("pro4", type: .scalar(String.self)),
        GraphQLField("pro5", type: .scalar(String.self)),
        GraphQLField("pro6_1", type: .scalar(String.self)),
        GraphQLField("pro6_2", type: .scalar(String.self)),
        GraphQLField("pro7", type: .scalar(String.self)),
        GraphQLField("pro8", type: .scalar(String.self)),
        GraphQLField("pro9", type: .scalar(String.self)),
        GraphQLField("pro10_1", type: .scalar(String.self)),
        GraphQLField("pro10_2", type: .scalar(String.self)),
        GraphQLField("pro10_3", type: .scalar(String.self)),
        GraphQLField("pro10_4", type: .scalar(String.self)),
        GraphQLField("pro11_1", type: .scalar(String.self)),
        GraphQLField("pro11_2", type: .scalar(String.self)),
        GraphQLField("pro11_3", type: .scalar(String.self)),
        GraphQLField("pro11_4", type: .scalar(String.self)),
        GraphQLField("pro11_5", type: .scalar(String.self)),
        GraphQLField("pro12_1", type: .scalar(String.self)),
        GraphQLField("pro12_2", type: .scalar(String.self)),
        GraphQLField("pro12_3", type: .scalar(String.self)),
        GraphQLField("pro12_4", type: .scalar(String.self)),
        GraphQLField("pro12_5", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, pro1: String? = nil, pro2: String? = nil, pro3: String? = nil, pro4: String? = nil, pro5: String? = nil, pro6_1: String? = nil, pro6_2: String? = nil, pro7: String? = nil, pro8: String? = nil, pro9: String? = nil, pro10_1: String? = nil, pro10_2: String? = nil, pro10_3: String? = nil, pro10_4: String? = nil, pro11_1: String? = nil, pro11_2: String? = nil, pro11_3: String? = nil, pro11_4: String? = nil, pro11_5: String? = nil, pro12_1: String? = nil, pro12_2: String? = nil, pro12_3: String? = nil, pro12_4: String? = nil, pro12_5: String? = nil, updatedAt: String? = nil, createdAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Questions", "id": id, "name": name, "pro1": pro1, "pro2": pro2, "pro3": pro3, "pro4": pro4, "pro5": pro5, "pro6_1": pro6_1, "pro6_2": pro6_2, "pro7": pro7, "pro8": pro8, "pro9": pro9, "pro10_1": pro10_1, "pro10_2": pro10_2, "pro10_3": pro10_3, "pro10_4": pro10_4, "pro11_1": pro11_1, "pro11_2": pro11_2, "pro11_3": pro11_3, "pro11_4": pro11_4, "pro11_5": pro11_5, "pro12_1": pro12_1, "pro12_2": pro12_2, "pro12_3": pro12_3, "pro12_4": pro12_4, "pro12_5": pro12_5, "updatedAt": updatedAt, "createdAt": createdAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var pro1: String? {
        get {
          return snapshot["pro1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro1")
        }
      }

      public var pro2: String? {
        get {
          return snapshot["pro2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro2")
        }
      }

      public var pro3: String? {
        get {
          return snapshot["pro3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro3")
        }
      }

      public var pro4: String? {
        get {
          return snapshot["pro4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro4")
        }
      }

      public var pro5: String? {
        get {
          return snapshot["pro5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro5")
        }
      }

      public var pro6_1: String? {
        get {
          return snapshot["pro6_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro6_1")
        }
      }

      public var pro6_2: String? {
        get {
          return snapshot["pro6_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro6_2")
        }
      }

      public var pro7: String? {
        get {
          return snapshot["pro7"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro7")
        }
      }

      public var pro8: String? {
        get {
          return snapshot["pro8"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro8")
        }
      }

      public var pro9: String? {
        get {
          return snapshot["pro9"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro9")
        }
      }

      public var pro10_1: String? {
        get {
          return snapshot["pro10_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_1")
        }
      }

      public var pro10_2: String? {
        get {
          return snapshot["pro10_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_2")
        }
      }

      public var pro10_3: String? {
        get {
          return snapshot["pro10_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_3")
        }
      }

      public var pro10_4: String? {
        get {
          return snapshot["pro10_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_4")
        }
      }

      public var pro11_1: String? {
        get {
          return snapshot["pro11_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_1")
        }
      }

      public var pro11_2: String? {
        get {
          return snapshot["pro11_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_2")
        }
      }

      public var pro11_3: String? {
        get {
          return snapshot["pro11_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_3")
        }
      }

      public var pro11_4: String? {
        get {
          return snapshot["pro11_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_4")
        }
      }

      public var pro11_5: String? {
        get {
          return snapshot["pro11_5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_5")
        }
      }

      public var pro12_1: String? {
        get {
          return snapshot["pro12_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_1")
        }
      }

      public var pro12_2: String? {
        get {
          return snapshot["pro12_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_2")
        }
      }

      public var pro12_3: String? {
        get {
          return snapshot["pro12_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_3")
        }
      }

      public var pro12_4: String? {
        get {
          return snapshot["pro12_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_4")
        }
      }

      public var pro12_5: String? {
        get {
          return snapshot["pro12_5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_5")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class UpdateQuestionsMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateQuestions($input: UpdateQuestionsInput!, $condition: ModelQuestionsConditionInput) {\n  updateQuestions(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    pro1\n    pro2\n    pro3\n    pro4\n    pro5\n    pro6_1\n    pro6_2\n    pro7\n    pro8\n    pro9\n    pro10_1\n    pro10_2\n    pro10_3\n    pro10_4\n    pro11_1\n    pro11_2\n    pro11_3\n    pro11_4\n    pro11_5\n    pro12_1\n    pro12_2\n    pro12_3\n    pro12_4\n    pro12_5\n    updatedAt\n    createdAt\n    owner\n  }\n}"

  public var input: UpdateQuestionsInput
  public var condition: ModelQuestionsConditionInput?

  public init(input: UpdateQuestionsInput, condition: ModelQuestionsConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateQuestions", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateQuestion.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateQuestions: UpdateQuestion? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateQuestions": updateQuestions.flatMap { $0.snapshot }])
    }

    public var updateQuestions: UpdateQuestion? {
      get {
        return (snapshot["updateQuestions"] as? Snapshot).flatMap { UpdateQuestion(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateQuestions")
      }
    }

    public struct UpdateQuestion: GraphQLSelectionSet {
      public static let possibleTypes = ["Questions"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("pro1", type: .scalar(String.self)),
        GraphQLField("pro2", type: .scalar(String.self)),
        GraphQLField("pro3", type: .scalar(String.self)),
        GraphQLField("pro4", type: .scalar(String.self)),
        GraphQLField("pro5", type: .scalar(String.self)),
        GraphQLField("pro6_1", type: .scalar(String.self)),
        GraphQLField("pro6_2", type: .scalar(String.self)),
        GraphQLField("pro7", type: .scalar(String.self)),
        GraphQLField("pro8", type: .scalar(String.self)),
        GraphQLField("pro9", type: .scalar(String.self)),
        GraphQLField("pro10_1", type: .scalar(String.self)),
        GraphQLField("pro10_2", type: .scalar(String.self)),
        GraphQLField("pro10_3", type: .scalar(String.self)),
        GraphQLField("pro10_4", type: .scalar(String.self)),
        GraphQLField("pro11_1", type: .scalar(String.self)),
        GraphQLField("pro11_2", type: .scalar(String.self)),
        GraphQLField("pro11_3", type: .scalar(String.self)),
        GraphQLField("pro11_4", type: .scalar(String.self)),
        GraphQLField("pro11_5", type: .scalar(String.self)),
        GraphQLField("pro12_1", type: .scalar(String.self)),
        GraphQLField("pro12_2", type: .scalar(String.self)),
        GraphQLField("pro12_3", type: .scalar(String.self)),
        GraphQLField("pro12_4", type: .scalar(String.self)),
        GraphQLField("pro12_5", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, pro1: String? = nil, pro2: String? = nil, pro3: String? = nil, pro4: String? = nil, pro5: String? = nil, pro6_1: String? = nil, pro6_2: String? = nil, pro7: String? = nil, pro8: String? = nil, pro9: String? = nil, pro10_1: String? = nil, pro10_2: String? = nil, pro10_3: String? = nil, pro10_4: String? = nil, pro11_1: String? = nil, pro11_2: String? = nil, pro11_3: String? = nil, pro11_4: String? = nil, pro11_5: String? = nil, pro12_1: String? = nil, pro12_2: String? = nil, pro12_3: String? = nil, pro12_4: String? = nil, pro12_5: String? = nil, updatedAt: String? = nil, createdAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Questions", "id": id, "name": name, "pro1": pro1, "pro2": pro2, "pro3": pro3, "pro4": pro4, "pro5": pro5, "pro6_1": pro6_1, "pro6_2": pro6_2, "pro7": pro7, "pro8": pro8, "pro9": pro9, "pro10_1": pro10_1, "pro10_2": pro10_2, "pro10_3": pro10_3, "pro10_4": pro10_4, "pro11_1": pro11_1, "pro11_2": pro11_2, "pro11_3": pro11_3, "pro11_4": pro11_4, "pro11_5": pro11_5, "pro12_1": pro12_1, "pro12_2": pro12_2, "pro12_3": pro12_3, "pro12_4": pro12_4, "pro12_5": pro12_5, "updatedAt": updatedAt, "createdAt": createdAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var pro1: String? {
        get {
          return snapshot["pro1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro1")
        }
      }

      public var pro2: String? {
        get {
          return snapshot["pro2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro2")
        }
      }

      public var pro3: String? {
        get {
          return snapshot["pro3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro3")
        }
      }

      public var pro4: String? {
        get {
          return snapshot["pro4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro4")
        }
      }

      public var pro5: String? {
        get {
          return snapshot["pro5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro5")
        }
      }

      public var pro6_1: String? {
        get {
          return snapshot["pro6_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro6_1")
        }
      }

      public var pro6_2: String? {
        get {
          return snapshot["pro6_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro6_2")
        }
      }

      public var pro7: String? {
        get {
          return snapshot["pro7"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro7")
        }
      }

      public var pro8: String? {
        get {
          return snapshot["pro8"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro8")
        }
      }

      public var pro9: String? {
        get {
          return snapshot["pro9"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro9")
        }
      }

      public var pro10_1: String? {
        get {
          return snapshot["pro10_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_1")
        }
      }

      public var pro10_2: String? {
        get {
          return snapshot["pro10_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_2")
        }
      }

      public var pro10_3: String? {
        get {
          return snapshot["pro10_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_3")
        }
      }

      public var pro10_4: String? {
        get {
          return snapshot["pro10_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_4")
        }
      }

      public var pro11_1: String? {
        get {
          return snapshot["pro11_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_1")
        }
      }

      public var pro11_2: String? {
        get {
          return snapshot["pro11_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_2")
        }
      }

      public var pro11_3: String? {
        get {
          return snapshot["pro11_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_3")
        }
      }

      public var pro11_4: String? {
        get {
          return snapshot["pro11_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_4")
        }
      }

      public var pro11_5: String? {
        get {
          return snapshot["pro11_5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_5")
        }
      }

      public var pro12_1: String? {
        get {
          return snapshot["pro12_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_1")
        }
      }

      public var pro12_2: String? {
        get {
          return snapshot["pro12_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_2")
        }
      }

      public var pro12_3: String? {
        get {
          return snapshot["pro12_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_3")
        }
      }

      public var pro12_4: String? {
        get {
          return snapshot["pro12_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_4")
        }
      }

      public var pro12_5: String? {
        get {
          return snapshot["pro12_5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_5")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class DeleteQuestionsMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteQuestions($input: DeleteQuestionsInput!, $condition: ModelQuestionsConditionInput) {\n  deleteQuestions(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    pro1\n    pro2\n    pro3\n    pro4\n    pro5\n    pro6_1\n    pro6_2\n    pro7\n    pro8\n    pro9\n    pro10_1\n    pro10_2\n    pro10_3\n    pro10_4\n    pro11_1\n    pro11_2\n    pro11_3\n    pro11_4\n    pro11_5\n    pro12_1\n    pro12_2\n    pro12_3\n    pro12_4\n    pro12_5\n    updatedAt\n    createdAt\n    owner\n  }\n}"

  public var input: DeleteQuestionsInput
  public var condition: ModelQuestionsConditionInput?

  public init(input: DeleteQuestionsInput, condition: ModelQuestionsConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteQuestions", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteQuestion.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteQuestions: DeleteQuestion? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteQuestions": deleteQuestions.flatMap { $0.snapshot }])
    }

    public var deleteQuestions: DeleteQuestion? {
      get {
        return (snapshot["deleteQuestions"] as? Snapshot).flatMap { DeleteQuestion(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteQuestions")
      }
    }

    public struct DeleteQuestion: GraphQLSelectionSet {
      public static let possibleTypes = ["Questions"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("pro1", type: .scalar(String.self)),
        GraphQLField("pro2", type: .scalar(String.self)),
        GraphQLField("pro3", type: .scalar(String.self)),
        GraphQLField("pro4", type: .scalar(String.self)),
        GraphQLField("pro5", type: .scalar(String.self)),
        GraphQLField("pro6_1", type: .scalar(String.self)),
        GraphQLField("pro6_2", type: .scalar(String.self)),
        GraphQLField("pro7", type: .scalar(String.self)),
        GraphQLField("pro8", type: .scalar(String.self)),
        GraphQLField("pro9", type: .scalar(String.self)),
        GraphQLField("pro10_1", type: .scalar(String.self)),
        GraphQLField("pro10_2", type: .scalar(String.self)),
        GraphQLField("pro10_3", type: .scalar(String.self)),
        GraphQLField("pro10_4", type: .scalar(String.self)),
        GraphQLField("pro11_1", type: .scalar(String.self)),
        GraphQLField("pro11_2", type: .scalar(String.self)),
        GraphQLField("pro11_3", type: .scalar(String.self)),
        GraphQLField("pro11_4", type: .scalar(String.self)),
        GraphQLField("pro11_5", type: .scalar(String.self)),
        GraphQLField("pro12_1", type: .scalar(String.self)),
        GraphQLField("pro12_2", type: .scalar(String.self)),
        GraphQLField("pro12_3", type: .scalar(String.self)),
        GraphQLField("pro12_4", type: .scalar(String.self)),
        GraphQLField("pro12_5", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, pro1: String? = nil, pro2: String? = nil, pro3: String? = nil, pro4: String? = nil, pro5: String? = nil, pro6_1: String? = nil, pro6_2: String? = nil, pro7: String? = nil, pro8: String? = nil, pro9: String? = nil, pro10_1: String? = nil, pro10_2: String? = nil, pro10_3: String? = nil, pro10_4: String? = nil, pro11_1: String? = nil, pro11_2: String? = nil, pro11_3: String? = nil, pro11_4: String? = nil, pro11_5: String? = nil, pro12_1: String? = nil, pro12_2: String? = nil, pro12_3: String? = nil, pro12_4: String? = nil, pro12_5: String? = nil, updatedAt: String? = nil, createdAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Questions", "id": id, "name": name, "pro1": pro1, "pro2": pro2, "pro3": pro3, "pro4": pro4, "pro5": pro5, "pro6_1": pro6_1, "pro6_2": pro6_2, "pro7": pro7, "pro8": pro8, "pro9": pro9, "pro10_1": pro10_1, "pro10_2": pro10_2, "pro10_3": pro10_3, "pro10_4": pro10_4, "pro11_1": pro11_1, "pro11_2": pro11_2, "pro11_3": pro11_3, "pro11_4": pro11_4, "pro11_5": pro11_5, "pro12_1": pro12_1, "pro12_2": pro12_2, "pro12_3": pro12_3, "pro12_4": pro12_4, "pro12_5": pro12_5, "updatedAt": updatedAt, "createdAt": createdAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var pro1: String? {
        get {
          return snapshot["pro1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro1")
        }
      }

      public var pro2: String? {
        get {
          return snapshot["pro2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro2")
        }
      }

      public var pro3: String? {
        get {
          return snapshot["pro3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro3")
        }
      }

      public var pro4: String? {
        get {
          return snapshot["pro4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro4")
        }
      }

      public var pro5: String? {
        get {
          return snapshot["pro5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro5")
        }
      }

      public var pro6_1: String? {
        get {
          return snapshot["pro6_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro6_1")
        }
      }

      public var pro6_2: String? {
        get {
          return snapshot["pro6_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro6_2")
        }
      }

      public var pro7: String? {
        get {
          return snapshot["pro7"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro7")
        }
      }

      public var pro8: String? {
        get {
          return snapshot["pro8"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro8")
        }
      }

      public var pro9: String? {
        get {
          return snapshot["pro9"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro9")
        }
      }

      public var pro10_1: String? {
        get {
          return snapshot["pro10_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_1")
        }
      }

      public var pro10_2: String? {
        get {
          return snapshot["pro10_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_2")
        }
      }

      public var pro10_3: String? {
        get {
          return snapshot["pro10_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_3")
        }
      }

      public var pro10_4: String? {
        get {
          return snapshot["pro10_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_4")
        }
      }

      public var pro11_1: String? {
        get {
          return snapshot["pro11_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_1")
        }
      }

      public var pro11_2: String? {
        get {
          return snapshot["pro11_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_2")
        }
      }

      public var pro11_3: String? {
        get {
          return snapshot["pro11_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_3")
        }
      }

      public var pro11_4: String? {
        get {
          return snapshot["pro11_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_4")
        }
      }

      public var pro11_5: String? {
        get {
          return snapshot["pro11_5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_5")
        }
      }

      public var pro12_1: String? {
        get {
          return snapshot["pro12_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_1")
        }
      }

      public var pro12_2: String? {
        get {
          return snapshot["pro12_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_2")
        }
      }

      public var pro12_3: String? {
        get {
          return snapshot["pro12_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_3")
        }
      }

      public var pro12_4: String? {
        get {
          return snapshot["pro12_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_4")
        }
      }

      public var pro12_5: String? {
        get {
          return snapshot["pro12_5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_5")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class GetPerceptionQuery: GraphQLQuery {
  public static let operationString =
    "query GetPerception($id: ID!) {\n  getPerception(id: $id) {\n    __typename\n    id\n    name\n    gender\n    race\n    ethnicity\n    credits\n    employs\n    eigenstates\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getPerception", arguments: ["id": GraphQLVariable("id")], type: .object(GetPerception.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getPerception: GetPerception? = nil) {
      self.init(snapshot: ["__typename": "Query", "getPerception": getPerception.flatMap { $0.snapshot }])
    }

    public var getPerception: GetPerception? {
      get {
        return (snapshot["getPerception"] as? Snapshot).flatMap { GetPerception(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getPerception")
      }
    }

    public struct GetPerception: GraphQLSelectionSet {
      public static let possibleTypes = ["Perception"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("gender", type: .scalar(String.self)),
        GraphQLField("race", type: .scalar(String.self)),
        GraphQLField("ethnicity", type: .scalar(String.self)),
        GraphQLField("credits", type: .scalar(String.self)),
        GraphQLField("employs", type: .scalar(String.self)),
        GraphQLField("eigenstates", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, gender: String? = nil, race: String? = nil, ethnicity: String? = nil, credits: String? = nil, employs: String? = nil, eigenstates: String? = nil, createdAt: String? = nil, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Perception", "id": id, "name": name, "gender": gender, "race": race, "ethnicity": ethnicity, "credits": credits, "employs": employs, "eigenstates": eigenstates, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var gender: String? {
        get {
          return snapshot["gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }

      public var race: String? {
        get {
          return snapshot["race"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "race")
        }
      }

      public var ethnicity: String? {
        get {
          return snapshot["ethnicity"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ethnicity")
        }
      }

      public var credits: String? {
        get {
          return snapshot["credits"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "credits")
        }
      }

      public var employs: String? {
        get {
          return snapshot["employs"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "employs")
        }
      }

      public var eigenstates: String? {
        get {
          return snapshot["eigenstates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "eigenstates")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class ListPerceptionsQuery: GraphQLQuery {
  public static let operationString =
    "query ListPerceptions($filter: ModelPerceptionFilterInput, $limit: Int, $nextToken: String) {\n  listPerceptions(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      gender\n      race\n      ethnicity\n      credits\n      employs\n      eigenstates\n      createdAt\n      updatedAt\n      owner\n    }\n    nextToken\n  }\n}"

  public var filter: ModelPerceptionFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelPerceptionFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listPerceptions", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListPerception.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listPerceptions: ListPerception? = nil) {
      self.init(snapshot: ["__typename": "Query", "listPerceptions": listPerceptions.flatMap { $0.snapshot }])
    }

    public var listPerceptions: ListPerception? {
      get {
        return (snapshot["listPerceptions"] as? Snapshot).flatMap { ListPerception(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listPerceptions")
      }
    }

    public struct ListPerception: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelPerceptionConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelPerceptionConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Perception"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("race", type: .scalar(String.self)),
          GraphQLField("ethnicity", type: .scalar(String.self)),
          GraphQLField("credits", type: .scalar(String.self)),
          GraphQLField("employs", type: .scalar(String.self)),
          GraphQLField("eigenstates", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("owner", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, gender: String? = nil, race: String? = nil, ethnicity: String? = nil, credits: String? = nil, employs: String? = nil, eigenstates: String? = nil, createdAt: String? = nil, updatedAt: String, owner: String? = nil) {
          self.init(snapshot: ["__typename": "Perception", "id": id, "name": name, "gender": gender, "race": race, "ethnicity": ethnicity, "credits": credits, "employs": employs, "eigenstates": eigenstates, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var gender: String? {
          get {
            return snapshot["gender"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "gender")
          }
        }

        public var race: String? {
          get {
            return snapshot["race"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "race")
          }
        }

        public var ethnicity: String? {
          get {
            return snapshot["ethnicity"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "ethnicity")
          }
        }

        public var credits: String? {
          get {
            return snapshot["credits"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "credits")
          }
        }

        public var employs: String? {
          get {
            return snapshot["employs"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "employs")
          }
        }

        public var eigenstates: String? {
          get {
            return snapshot["eigenstates"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "eigenstates")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var owner: String? {
          get {
            return snapshot["owner"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }
      }
    }
  }
}

public final class GetQuestionsQuery: GraphQLQuery {
  public static let operationString =
    "query GetQuestions($id: ID!) {\n  getQuestions(id: $id) {\n    __typename\n    id\n    name\n    pro1\n    pro2\n    pro3\n    pro4\n    pro5\n    pro6_1\n    pro6_2\n    pro7\n    pro8\n    pro9\n    pro10_1\n    pro10_2\n    pro10_3\n    pro10_4\n    pro11_1\n    pro11_2\n    pro11_3\n    pro11_4\n    pro11_5\n    pro12_1\n    pro12_2\n    pro12_3\n    pro12_4\n    pro12_5\n    updatedAt\n    createdAt\n    owner\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getQuestions", arguments: ["id": GraphQLVariable("id")], type: .object(GetQuestion.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getQuestions: GetQuestion? = nil) {
      self.init(snapshot: ["__typename": "Query", "getQuestions": getQuestions.flatMap { $0.snapshot }])
    }

    public var getQuestions: GetQuestion? {
      get {
        return (snapshot["getQuestions"] as? Snapshot).flatMap { GetQuestion(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getQuestions")
      }
    }

    public struct GetQuestion: GraphQLSelectionSet {
      public static let possibleTypes = ["Questions"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("pro1", type: .scalar(String.self)),
        GraphQLField("pro2", type: .scalar(String.self)),
        GraphQLField("pro3", type: .scalar(String.self)),
        GraphQLField("pro4", type: .scalar(String.self)),
        GraphQLField("pro5", type: .scalar(String.self)),
        GraphQLField("pro6_1", type: .scalar(String.self)),
        GraphQLField("pro6_2", type: .scalar(String.self)),
        GraphQLField("pro7", type: .scalar(String.self)),
        GraphQLField("pro8", type: .scalar(String.self)),
        GraphQLField("pro9", type: .scalar(String.self)),
        GraphQLField("pro10_1", type: .scalar(String.self)),
        GraphQLField("pro10_2", type: .scalar(String.self)),
        GraphQLField("pro10_3", type: .scalar(String.self)),
        GraphQLField("pro10_4", type: .scalar(String.self)),
        GraphQLField("pro11_1", type: .scalar(String.self)),
        GraphQLField("pro11_2", type: .scalar(String.self)),
        GraphQLField("pro11_3", type: .scalar(String.self)),
        GraphQLField("pro11_4", type: .scalar(String.self)),
        GraphQLField("pro11_5", type: .scalar(String.self)),
        GraphQLField("pro12_1", type: .scalar(String.self)),
        GraphQLField("pro12_2", type: .scalar(String.self)),
        GraphQLField("pro12_3", type: .scalar(String.self)),
        GraphQLField("pro12_4", type: .scalar(String.self)),
        GraphQLField("pro12_5", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, pro1: String? = nil, pro2: String? = nil, pro3: String? = nil, pro4: String? = nil, pro5: String? = nil, pro6_1: String? = nil, pro6_2: String? = nil, pro7: String? = nil, pro8: String? = nil, pro9: String? = nil, pro10_1: String? = nil, pro10_2: String? = nil, pro10_3: String? = nil, pro10_4: String? = nil, pro11_1: String? = nil, pro11_2: String? = nil, pro11_3: String? = nil, pro11_4: String? = nil, pro11_5: String? = nil, pro12_1: String? = nil, pro12_2: String? = nil, pro12_3: String? = nil, pro12_4: String? = nil, pro12_5: String? = nil, updatedAt: String? = nil, createdAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Questions", "id": id, "name": name, "pro1": pro1, "pro2": pro2, "pro3": pro3, "pro4": pro4, "pro5": pro5, "pro6_1": pro6_1, "pro6_2": pro6_2, "pro7": pro7, "pro8": pro8, "pro9": pro9, "pro10_1": pro10_1, "pro10_2": pro10_2, "pro10_3": pro10_3, "pro10_4": pro10_4, "pro11_1": pro11_1, "pro11_2": pro11_2, "pro11_3": pro11_3, "pro11_4": pro11_4, "pro11_5": pro11_5, "pro12_1": pro12_1, "pro12_2": pro12_2, "pro12_3": pro12_3, "pro12_4": pro12_4, "pro12_5": pro12_5, "updatedAt": updatedAt, "createdAt": createdAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var pro1: String? {
        get {
          return snapshot["pro1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro1")
        }
      }

      public var pro2: String? {
        get {
          return snapshot["pro2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro2")
        }
      }

      public var pro3: String? {
        get {
          return snapshot["pro3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro3")
        }
      }

      public var pro4: String? {
        get {
          return snapshot["pro4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro4")
        }
      }

      public var pro5: String? {
        get {
          return snapshot["pro5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro5")
        }
      }

      public var pro6_1: String? {
        get {
          return snapshot["pro6_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro6_1")
        }
      }

      public var pro6_2: String? {
        get {
          return snapshot["pro6_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro6_2")
        }
      }

      public var pro7: String? {
        get {
          return snapshot["pro7"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro7")
        }
      }

      public var pro8: String? {
        get {
          return snapshot["pro8"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro8")
        }
      }

      public var pro9: String? {
        get {
          return snapshot["pro9"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro9")
        }
      }

      public var pro10_1: String? {
        get {
          return snapshot["pro10_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_1")
        }
      }

      public var pro10_2: String? {
        get {
          return snapshot["pro10_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_2")
        }
      }

      public var pro10_3: String? {
        get {
          return snapshot["pro10_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_3")
        }
      }

      public var pro10_4: String? {
        get {
          return snapshot["pro10_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_4")
        }
      }

      public var pro11_1: String? {
        get {
          return snapshot["pro11_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_1")
        }
      }

      public var pro11_2: String? {
        get {
          return snapshot["pro11_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_2")
        }
      }

      public var pro11_3: String? {
        get {
          return snapshot["pro11_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_3")
        }
      }

      public var pro11_4: String? {
        get {
          return snapshot["pro11_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_4")
        }
      }

      public var pro11_5: String? {
        get {
          return snapshot["pro11_5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_5")
        }
      }

      public var pro12_1: String? {
        get {
          return snapshot["pro12_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_1")
        }
      }

      public var pro12_2: String? {
        get {
          return snapshot["pro12_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_2")
        }
      }

      public var pro12_3: String? {
        get {
          return snapshot["pro12_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_3")
        }
      }

      public var pro12_4: String? {
        get {
          return snapshot["pro12_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_4")
        }
      }

      public var pro12_5: String? {
        get {
          return snapshot["pro12_5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_5")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class ListQuestionsQuery: GraphQLQuery {
  public static let operationString =
    "query ListQuestions($filter: ModelQuestionsFilterInput, $limit: Int, $nextToken: String) {\n  listQuestions(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      pro1\n      pro2\n      pro3\n      pro4\n      pro5\n      pro6_1\n      pro6_2\n      pro7\n      pro8\n      pro9\n      pro10_1\n      pro10_2\n      pro10_3\n      pro10_4\n      pro11_1\n      pro11_2\n      pro11_3\n      pro11_4\n      pro11_5\n      pro12_1\n      pro12_2\n      pro12_3\n      pro12_4\n      pro12_5\n      updatedAt\n      createdAt\n      owner\n    }\n    nextToken\n  }\n}"

  public var filter: ModelQuestionsFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelQuestionsFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listQuestions", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListQuestion.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listQuestions: ListQuestion? = nil) {
      self.init(snapshot: ["__typename": "Query", "listQuestions": listQuestions.flatMap { $0.snapshot }])
    }

    public var listQuestions: ListQuestion? {
      get {
        return (snapshot["listQuestions"] as? Snapshot).flatMap { ListQuestion(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listQuestions")
      }
    }

    public struct ListQuestion: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelQuestionsConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelQuestionsConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Questions"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("pro1", type: .scalar(String.self)),
          GraphQLField("pro2", type: .scalar(String.self)),
          GraphQLField("pro3", type: .scalar(String.self)),
          GraphQLField("pro4", type: .scalar(String.self)),
          GraphQLField("pro5", type: .scalar(String.self)),
          GraphQLField("pro6_1", type: .scalar(String.self)),
          GraphQLField("pro6_2", type: .scalar(String.self)),
          GraphQLField("pro7", type: .scalar(String.self)),
          GraphQLField("pro8", type: .scalar(String.self)),
          GraphQLField("pro9", type: .scalar(String.self)),
          GraphQLField("pro10_1", type: .scalar(String.self)),
          GraphQLField("pro10_2", type: .scalar(String.self)),
          GraphQLField("pro10_3", type: .scalar(String.self)),
          GraphQLField("pro10_4", type: .scalar(String.self)),
          GraphQLField("pro11_1", type: .scalar(String.self)),
          GraphQLField("pro11_2", type: .scalar(String.self)),
          GraphQLField("pro11_3", type: .scalar(String.self)),
          GraphQLField("pro11_4", type: .scalar(String.self)),
          GraphQLField("pro11_5", type: .scalar(String.self)),
          GraphQLField("pro12_1", type: .scalar(String.self)),
          GraphQLField("pro12_2", type: .scalar(String.self)),
          GraphQLField("pro12_3", type: .scalar(String.self)),
          GraphQLField("pro12_4", type: .scalar(String.self)),
          GraphQLField("pro12_5", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("owner", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, pro1: String? = nil, pro2: String? = nil, pro3: String? = nil, pro4: String? = nil, pro5: String? = nil, pro6_1: String? = nil, pro6_2: String? = nil, pro7: String? = nil, pro8: String? = nil, pro9: String? = nil, pro10_1: String? = nil, pro10_2: String? = nil, pro10_3: String? = nil, pro10_4: String? = nil, pro11_1: String? = nil, pro11_2: String? = nil, pro11_3: String? = nil, pro11_4: String? = nil, pro11_5: String? = nil, pro12_1: String? = nil, pro12_2: String? = nil, pro12_3: String? = nil, pro12_4: String? = nil, pro12_5: String? = nil, updatedAt: String? = nil, createdAt: String, owner: String? = nil) {
          self.init(snapshot: ["__typename": "Questions", "id": id, "name": name, "pro1": pro1, "pro2": pro2, "pro3": pro3, "pro4": pro4, "pro5": pro5, "pro6_1": pro6_1, "pro6_2": pro6_2, "pro7": pro7, "pro8": pro8, "pro9": pro9, "pro10_1": pro10_1, "pro10_2": pro10_2, "pro10_3": pro10_3, "pro10_4": pro10_4, "pro11_1": pro11_1, "pro11_2": pro11_2, "pro11_3": pro11_3, "pro11_4": pro11_4, "pro11_5": pro11_5, "pro12_1": pro12_1, "pro12_2": pro12_2, "pro12_3": pro12_3, "pro12_4": pro12_4, "pro12_5": pro12_5, "updatedAt": updatedAt, "createdAt": createdAt, "owner": owner])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var pro1: String? {
          get {
            return snapshot["pro1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro1")
          }
        }

        public var pro2: String? {
          get {
            return snapshot["pro2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro2")
          }
        }

        public var pro3: String? {
          get {
            return snapshot["pro3"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro3")
          }
        }

        public var pro4: String? {
          get {
            return snapshot["pro4"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro4")
          }
        }

        public var pro5: String? {
          get {
            return snapshot["pro5"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro5")
          }
        }

        public var pro6_1: String? {
          get {
            return snapshot["pro6_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro6_1")
          }
        }

        public var pro6_2: String? {
          get {
            return snapshot["pro6_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro6_2")
          }
        }

        public var pro7: String? {
          get {
            return snapshot["pro7"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro7")
          }
        }

        public var pro8: String? {
          get {
            return snapshot["pro8"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro8")
          }
        }

        public var pro9: String? {
          get {
            return snapshot["pro9"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro9")
          }
        }

        public var pro10_1: String? {
          get {
            return snapshot["pro10_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro10_1")
          }
        }

        public var pro10_2: String? {
          get {
            return snapshot["pro10_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro10_2")
          }
        }

        public var pro10_3: String? {
          get {
            return snapshot["pro10_3"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro10_3")
          }
        }

        public var pro10_4: String? {
          get {
            return snapshot["pro10_4"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro10_4")
          }
        }

        public var pro11_1: String? {
          get {
            return snapshot["pro11_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro11_1")
          }
        }

        public var pro11_2: String? {
          get {
            return snapshot["pro11_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro11_2")
          }
        }

        public var pro11_3: String? {
          get {
            return snapshot["pro11_3"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro11_3")
          }
        }

        public var pro11_4: String? {
          get {
            return snapshot["pro11_4"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro11_4")
          }
        }

        public var pro11_5: String? {
          get {
            return snapshot["pro11_5"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro11_5")
          }
        }

        public var pro12_1: String? {
          get {
            return snapshot["pro12_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro12_1")
          }
        }

        public var pro12_2: String? {
          get {
            return snapshot["pro12_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro12_2")
          }
        }

        public var pro12_3: String? {
          get {
            return snapshot["pro12_3"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro12_3")
          }
        }

        public var pro12_4: String? {
          get {
            return snapshot["pro12_4"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro12_4")
          }
        }

        public var pro12_5: String? {
          get {
            return snapshot["pro12_5"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pro12_5")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var owner: String? {
          get {
            return snapshot["owner"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }
      }
    }
  }
}

public final class GetUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetUser($id: ID!) {\n  getUser(id: $id) {\n    __typename\n    id\n    name\n    isAgree\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUser", arguments: ["id": GraphQLVariable("id")], type: .object(GetUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUser: GetUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUser": getUser.flatMap { $0.snapshot }])
    }

    public var getUser: GetUser? {
      get {
        return (snapshot["getUser"] as? Snapshot).flatMap { GetUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUser")
      }
    }

    public struct GetUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("isAgree", type: .scalar(Bool.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, isAgree: Bool? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "name": name, "isAgree": isAgree, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var isAgree: Bool? {
        get {
          return snapshot["isAgree"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isAgree")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class ListUsersQuery: GraphQLQuery {
  public static let operationString =
    "query ListUsers($filter: ModelUserFilterInput, $limit: Int, $nextToken: String) {\n  listUsers(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      isAgree\n      createdAt\n      updatedAt\n      owner\n    }\n    nextToken\n  }\n}"

  public var filter: ModelUserFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelUserFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUsers", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUsers: ListUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUsers": listUsers.flatMap { $0.snapshot }])
    }

    public var listUsers: ListUser? {
      get {
        return (snapshot["listUsers"] as? Snapshot).flatMap { ListUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUsers")
      }
    }

    public struct ListUser: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUserConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUserConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("isAgree", type: .scalar(Bool.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("owner", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, isAgree: Bool? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "name": name, "isAgree": isAgree, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var isAgree: Bool? {
          get {
            return snapshot["isAgree"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isAgree")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var owner: String? {
          get {
            return snapshot["owner"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }
      }
    }
  }
}

public final class OnCreatePerceptionSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreatePerception {\n  onCreatePerception {\n    __typename\n    id\n    name\n    gender\n    race\n    ethnicity\n    credits\n    employs\n    eigenstates\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreatePerception", type: .object(OnCreatePerception.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreatePerception: OnCreatePerception? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreatePerception": onCreatePerception.flatMap { $0.snapshot }])
    }

    public var onCreatePerception: OnCreatePerception? {
      get {
        return (snapshot["onCreatePerception"] as? Snapshot).flatMap { OnCreatePerception(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreatePerception")
      }
    }

    public struct OnCreatePerception: GraphQLSelectionSet {
      public static let possibleTypes = ["Perception"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("gender", type: .scalar(String.self)),
        GraphQLField("race", type: .scalar(String.self)),
        GraphQLField("ethnicity", type: .scalar(String.self)),
        GraphQLField("credits", type: .scalar(String.self)),
        GraphQLField("employs", type: .scalar(String.self)),
        GraphQLField("eigenstates", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, gender: String? = nil, race: String? = nil, ethnicity: String? = nil, credits: String? = nil, employs: String? = nil, eigenstates: String? = nil, createdAt: String? = nil, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Perception", "id": id, "name": name, "gender": gender, "race": race, "ethnicity": ethnicity, "credits": credits, "employs": employs, "eigenstates": eigenstates, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var gender: String? {
        get {
          return snapshot["gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }

      public var race: String? {
        get {
          return snapshot["race"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "race")
        }
      }

      public var ethnicity: String? {
        get {
          return snapshot["ethnicity"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ethnicity")
        }
      }

      public var credits: String? {
        get {
          return snapshot["credits"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "credits")
        }
      }

      public var employs: String? {
        get {
          return snapshot["employs"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "employs")
        }
      }

      public var eigenstates: String? {
        get {
          return snapshot["eigenstates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "eigenstates")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class OnUpdatePerceptionSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdatePerception {\n  onUpdatePerception {\n    __typename\n    id\n    name\n    gender\n    race\n    ethnicity\n    credits\n    employs\n    eigenstates\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdatePerception", type: .object(OnUpdatePerception.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdatePerception: OnUpdatePerception? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdatePerception": onUpdatePerception.flatMap { $0.snapshot }])
    }

    public var onUpdatePerception: OnUpdatePerception? {
      get {
        return (snapshot["onUpdatePerception"] as? Snapshot).flatMap { OnUpdatePerception(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdatePerception")
      }
    }

    public struct OnUpdatePerception: GraphQLSelectionSet {
      public static let possibleTypes = ["Perception"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("gender", type: .scalar(String.self)),
        GraphQLField("race", type: .scalar(String.self)),
        GraphQLField("ethnicity", type: .scalar(String.self)),
        GraphQLField("credits", type: .scalar(String.self)),
        GraphQLField("employs", type: .scalar(String.self)),
        GraphQLField("eigenstates", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, gender: String? = nil, race: String? = nil, ethnicity: String? = nil, credits: String? = nil, employs: String? = nil, eigenstates: String? = nil, createdAt: String? = nil, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Perception", "id": id, "name": name, "gender": gender, "race": race, "ethnicity": ethnicity, "credits": credits, "employs": employs, "eigenstates": eigenstates, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var gender: String? {
        get {
          return snapshot["gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }

      public var race: String? {
        get {
          return snapshot["race"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "race")
        }
      }

      public var ethnicity: String? {
        get {
          return snapshot["ethnicity"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ethnicity")
        }
      }

      public var credits: String? {
        get {
          return snapshot["credits"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "credits")
        }
      }

      public var employs: String? {
        get {
          return snapshot["employs"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "employs")
        }
      }

      public var eigenstates: String? {
        get {
          return snapshot["eigenstates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "eigenstates")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class OnDeletePerceptionSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeletePerception {\n  onDeletePerception {\n    __typename\n    id\n    name\n    gender\n    race\n    ethnicity\n    credits\n    employs\n    eigenstates\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeletePerception", type: .object(OnDeletePerception.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeletePerception: OnDeletePerception? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeletePerception": onDeletePerception.flatMap { $0.snapshot }])
    }

    public var onDeletePerception: OnDeletePerception? {
      get {
        return (snapshot["onDeletePerception"] as? Snapshot).flatMap { OnDeletePerception(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeletePerception")
      }
    }

    public struct OnDeletePerception: GraphQLSelectionSet {
      public static let possibleTypes = ["Perception"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("gender", type: .scalar(String.self)),
        GraphQLField("race", type: .scalar(String.self)),
        GraphQLField("ethnicity", type: .scalar(String.self)),
        GraphQLField("credits", type: .scalar(String.self)),
        GraphQLField("employs", type: .scalar(String.self)),
        GraphQLField("eigenstates", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, gender: String? = nil, race: String? = nil, ethnicity: String? = nil, credits: String? = nil, employs: String? = nil, eigenstates: String? = nil, createdAt: String? = nil, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Perception", "id": id, "name": name, "gender": gender, "race": race, "ethnicity": ethnicity, "credits": credits, "employs": employs, "eigenstates": eigenstates, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var gender: String? {
        get {
          return snapshot["gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }

      public var race: String? {
        get {
          return snapshot["race"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "race")
        }
      }

      public var ethnicity: String? {
        get {
          return snapshot["ethnicity"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ethnicity")
        }
      }

      public var credits: String? {
        get {
          return snapshot["credits"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "credits")
        }
      }

      public var employs: String? {
        get {
          return snapshot["employs"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "employs")
        }
      }

      public var eigenstates: String? {
        get {
          return snapshot["eigenstates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "eigenstates")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class OnCreateQuestionsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateQuestions {\n  onCreateQuestions {\n    __typename\n    id\n    name\n    pro1\n    pro2\n    pro3\n    pro4\n    pro5\n    pro6_1\n    pro6_2\n    pro7\n    pro8\n    pro9\n    pro10_1\n    pro10_2\n    pro10_3\n    pro10_4\n    pro11_1\n    pro11_2\n    pro11_3\n    pro11_4\n    pro11_5\n    pro12_1\n    pro12_2\n    pro12_3\n    pro12_4\n    pro12_5\n    updatedAt\n    createdAt\n    owner\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateQuestions", type: .object(OnCreateQuestion.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateQuestions: OnCreateQuestion? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateQuestions": onCreateQuestions.flatMap { $0.snapshot }])
    }

    public var onCreateQuestions: OnCreateQuestion? {
      get {
        return (snapshot["onCreateQuestions"] as? Snapshot).flatMap { OnCreateQuestion(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateQuestions")
      }
    }

    public struct OnCreateQuestion: GraphQLSelectionSet {
      public static let possibleTypes = ["Questions"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("pro1", type: .scalar(String.self)),
        GraphQLField("pro2", type: .scalar(String.self)),
        GraphQLField("pro3", type: .scalar(String.self)),
        GraphQLField("pro4", type: .scalar(String.self)),
        GraphQLField("pro5", type: .scalar(String.self)),
        GraphQLField("pro6_1", type: .scalar(String.self)),
        GraphQLField("pro6_2", type: .scalar(String.self)),
        GraphQLField("pro7", type: .scalar(String.self)),
        GraphQLField("pro8", type: .scalar(String.self)),
        GraphQLField("pro9", type: .scalar(String.self)),
        GraphQLField("pro10_1", type: .scalar(String.self)),
        GraphQLField("pro10_2", type: .scalar(String.self)),
        GraphQLField("pro10_3", type: .scalar(String.self)),
        GraphQLField("pro10_4", type: .scalar(String.self)),
        GraphQLField("pro11_1", type: .scalar(String.self)),
        GraphQLField("pro11_2", type: .scalar(String.self)),
        GraphQLField("pro11_3", type: .scalar(String.self)),
        GraphQLField("pro11_4", type: .scalar(String.self)),
        GraphQLField("pro11_5", type: .scalar(String.self)),
        GraphQLField("pro12_1", type: .scalar(String.self)),
        GraphQLField("pro12_2", type: .scalar(String.self)),
        GraphQLField("pro12_3", type: .scalar(String.self)),
        GraphQLField("pro12_4", type: .scalar(String.self)),
        GraphQLField("pro12_5", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, pro1: String? = nil, pro2: String? = nil, pro3: String? = nil, pro4: String? = nil, pro5: String? = nil, pro6_1: String? = nil, pro6_2: String? = nil, pro7: String? = nil, pro8: String? = nil, pro9: String? = nil, pro10_1: String? = nil, pro10_2: String? = nil, pro10_3: String? = nil, pro10_4: String? = nil, pro11_1: String? = nil, pro11_2: String? = nil, pro11_3: String? = nil, pro11_4: String? = nil, pro11_5: String? = nil, pro12_1: String? = nil, pro12_2: String? = nil, pro12_3: String? = nil, pro12_4: String? = nil, pro12_5: String? = nil, updatedAt: String? = nil, createdAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Questions", "id": id, "name": name, "pro1": pro1, "pro2": pro2, "pro3": pro3, "pro4": pro4, "pro5": pro5, "pro6_1": pro6_1, "pro6_2": pro6_2, "pro7": pro7, "pro8": pro8, "pro9": pro9, "pro10_1": pro10_1, "pro10_2": pro10_2, "pro10_3": pro10_3, "pro10_4": pro10_4, "pro11_1": pro11_1, "pro11_2": pro11_2, "pro11_3": pro11_3, "pro11_4": pro11_4, "pro11_5": pro11_5, "pro12_1": pro12_1, "pro12_2": pro12_2, "pro12_3": pro12_3, "pro12_4": pro12_4, "pro12_5": pro12_5, "updatedAt": updatedAt, "createdAt": createdAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var pro1: String? {
        get {
          return snapshot["pro1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro1")
        }
      }

      public var pro2: String? {
        get {
          return snapshot["pro2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro2")
        }
      }

      public var pro3: String? {
        get {
          return snapshot["pro3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro3")
        }
      }

      public var pro4: String? {
        get {
          return snapshot["pro4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro4")
        }
      }

      public var pro5: String? {
        get {
          return snapshot["pro5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro5")
        }
      }

      public var pro6_1: String? {
        get {
          return snapshot["pro6_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro6_1")
        }
      }

      public var pro6_2: String? {
        get {
          return snapshot["pro6_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro6_2")
        }
      }

      public var pro7: String? {
        get {
          return snapshot["pro7"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro7")
        }
      }

      public var pro8: String? {
        get {
          return snapshot["pro8"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro8")
        }
      }

      public var pro9: String? {
        get {
          return snapshot["pro9"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro9")
        }
      }

      public var pro10_1: String? {
        get {
          return snapshot["pro10_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_1")
        }
      }

      public var pro10_2: String? {
        get {
          return snapshot["pro10_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_2")
        }
      }

      public var pro10_3: String? {
        get {
          return snapshot["pro10_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_3")
        }
      }

      public var pro10_4: String? {
        get {
          return snapshot["pro10_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_4")
        }
      }

      public var pro11_1: String? {
        get {
          return snapshot["pro11_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_1")
        }
      }

      public var pro11_2: String? {
        get {
          return snapshot["pro11_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_2")
        }
      }

      public var pro11_3: String? {
        get {
          return snapshot["pro11_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_3")
        }
      }

      public var pro11_4: String? {
        get {
          return snapshot["pro11_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_4")
        }
      }

      public var pro11_5: String? {
        get {
          return snapshot["pro11_5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_5")
        }
      }

      public var pro12_1: String? {
        get {
          return snapshot["pro12_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_1")
        }
      }

      public var pro12_2: String? {
        get {
          return snapshot["pro12_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_2")
        }
      }

      public var pro12_3: String? {
        get {
          return snapshot["pro12_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_3")
        }
      }

      public var pro12_4: String? {
        get {
          return snapshot["pro12_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_4")
        }
      }

      public var pro12_5: String? {
        get {
          return snapshot["pro12_5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_5")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class OnUpdateQuestionsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateQuestions {\n  onUpdateQuestions {\n    __typename\n    id\n    name\n    pro1\n    pro2\n    pro3\n    pro4\n    pro5\n    pro6_1\n    pro6_2\n    pro7\n    pro8\n    pro9\n    pro10_1\n    pro10_2\n    pro10_3\n    pro10_4\n    pro11_1\n    pro11_2\n    pro11_3\n    pro11_4\n    pro11_5\n    pro12_1\n    pro12_2\n    pro12_3\n    pro12_4\n    pro12_5\n    updatedAt\n    createdAt\n    owner\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateQuestions", type: .object(OnUpdateQuestion.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateQuestions: OnUpdateQuestion? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateQuestions": onUpdateQuestions.flatMap { $0.snapshot }])
    }

    public var onUpdateQuestions: OnUpdateQuestion? {
      get {
        return (snapshot["onUpdateQuestions"] as? Snapshot).flatMap { OnUpdateQuestion(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateQuestions")
      }
    }

    public struct OnUpdateQuestion: GraphQLSelectionSet {
      public static let possibleTypes = ["Questions"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("pro1", type: .scalar(String.self)),
        GraphQLField("pro2", type: .scalar(String.self)),
        GraphQLField("pro3", type: .scalar(String.self)),
        GraphQLField("pro4", type: .scalar(String.self)),
        GraphQLField("pro5", type: .scalar(String.self)),
        GraphQLField("pro6_1", type: .scalar(String.self)),
        GraphQLField("pro6_2", type: .scalar(String.self)),
        GraphQLField("pro7", type: .scalar(String.self)),
        GraphQLField("pro8", type: .scalar(String.self)),
        GraphQLField("pro9", type: .scalar(String.self)),
        GraphQLField("pro10_1", type: .scalar(String.self)),
        GraphQLField("pro10_2", type: .scalar(String.self)),
        GraphQLField("pro10_3", type: .scalar(String.self)),
        GraphQLField("pro10_4", type: .scalar(String.self)),
        GraphQLField("pro11_1", type: .scalar(String.self)),
        GraphQLField("pro11_2", type: .scalar(String.self)),
        GraphQLField("pro11_3", type: .scalar(String.self)),
        GraphQLField("pro11_4", type: .scalar(String.self)),
        GraphQLField("pro11_5", type: .scalar(String.self)),
        GraphQLField("pro12_1", type: .scalar(String.self)),
        GraphQLField("pro12_2", type: .scalar(String.self)),
        GraphQLField("pro12_3", type: .scalar(String.self)),
        GraphQLField("pro12_4", type: .scalar(String.self)),
        GraphQLField("pro12_5", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, pro1: String? = nil, pro2: String? = nil, pro3: String? = nil, pro4: String? = nil, pro5: String? = nil, pro6_1: String? = nil, pro6_2: String? = nil, pro7: String? = nil, pro8: String? = nil, pro9: String? = nil, pro10_1: String? = nil, pro10_2: String? = nil, pro10_3: String? = nil, pro10_4: String? = nil, pro11_1: String? = nil, pro11_2: String? = nil, pro11_3: String? = nil, pro11_4: String? = nil, pro11_5: String? = nil, pro12_1: String? = nil, pro12_2: String? = nil, pro12_3: String? = nil, pro12_4: String? = nil, pro12_5: String? = nil, updatedAt: String? = nil, createdAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Questions", "id": id, "name": name, "pro1": pro1, "pro2": pro2, "pro3": pro3, "pro4": pro4, "pro5": pro5, "pro6_1": pro6_1, "pro6_2": pro6_2, "pro7": pro7, "pro8": pro8, "pro9": pro9, "pro10_1": pro10_1, "pro10_2": pro10_2, "pro10_3": pro10_3, "pro10_4": pro10_4, "pro11_1": pro11_1, "pro11_2": pro11_2, "pro11_3": pro11_3, "pro11_4": pro11_4, "pro11_5": pro11_5, "pro12_1": pro12_1, "pro12_2": pro12_2, "pro12_3": pro12_3, "pro12_4": pro12_4, "pro12_5": pro12_5, "updatedAt": updatedAt, "createdAt": createdAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var pro1: String? {
        get {
          return snapshot["pro1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro1")
        }
      }

      public var pro2: String? {
        get {
          return snapshot["pro2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro2")
        }
      }

      public var pro3: String? {
        get {
          return snapshot["pro3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro3")
        }
      }

      public var pro4: String? {
        get {
          return snapshot["pro4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro4")
        }
      }

      public var pro5: String? {
        get {
          return snapshot["pro5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro5")
        }
      }

      public var pro6_1: String? {
        get {
          return snapshot["pro6_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro6_1")
        }
      }

      public var pro6_2: String? {
        get {
          return snapshot["pro6_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro6_2")
        }
      }

      public var pro7: String? {
        get {
          return snapshot["pro7"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro7")
        }
      }

      public var pro8: String? {
        get {
          return snapshot["pro8"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro8")
        }
      }

      public var pro9: String? {
        get {
          return snapshot["pro9"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro9")
        }
      }

      public var pro10_1: String? {
        get {
          return snapshot["pro10_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_1")
        }
      }

      public var pro10_2: String? {
        get {
          return snapshot["pro10_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_2")
        }
      }

      public var pro10_3: String? {
        get {
          return snapshot["pro10_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_3")
        }
      }

      public var pro10_4: String? {
        get {
          return snapshot["pro10_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_4")
        }
      }

      public var pro11_1: String? {
        get {
          return snapshot["pro11_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_1")
        }
      }

      public var pro11_2: String? {
        get {
          return snapshot["pro11_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_2")
        }
      }

      public var pro11_3: String? {
        get {
          return snapshot["pro11_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_3")
        }
      }

      public var pro11_4: String? {
        get {
          return snapshot["pro11_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_4")
        }
      }

      public var pro11_5: String? {
        get {
          return snapshot["pro11_5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_5")
        }
      }

      public var pro12_1: String? {
        get {
          return snapshot["pro12_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_1")
        }
      }

      public var pro12_2: String? {
        get {
          return snapshot["pro12_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_2")
        }
      }

      public var pro12_3: String? {
        get {
          return snapshot["pro12_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_3")
        }
      }

      public var pro12_4: String? {
        get {
          return snapshot["pro12_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_4")
        }
      }

      public var pro12_5: String? {
        get {
          return snapshot["pro12_5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_5")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class OnDeleteQuestionsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteQuestions {\n  onDeleteQuestions {\n    __typename\n    id\n    name\n    pro1\n    pro2\n    pro3\n    pro4\n    pro5\n    pro6_1\n    pro6_2\n    pro7\n    pro8\n    pro9\n    pro10_1\n    pro10_2\n    pro10_3\n    pro10_4\n    pro11_1\n    pro11_2\n    pro11_3\n    pro11_4\n    pro11_5\n    pro12_1\n    pro12_2\n    pro12_3\n    pro12_4\n    pro12_5\n    updatedAt\n    createdAt\n    owner\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteQuestions", type: .object(OnDeleteQuestion.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteQuestions: OnDeleteQuestion? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteQuestions": onDeleteQuestions.flatMap { $0.snapshot }])
    }

    public var onDeleteQuestions: OnDeleteQuestion? {
      get {
        return (snapshot["onDeleteQuestions"] as? Snapshot).flatMap { OnDeleteQuestion(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteQuestions")
      }
    }

    public struct OnDeleteQuestion: GraphQLSelectionSet {
      public static let possibleTypes = ["Questions"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("pro1", type: .scalar(String.self)),
        GraphQLField("pro2", type: .scalar(String.self)),
        GraphQLField("pro3", type: .scalar(String.self)),
        GraphQLField("pro4", type: .scalar(String.self)),
        GraphQLField("pro5", type: .scalar(String.self)),
        GraphQLField("pro6_1", type: .scalar(String.self)),
        GraphQLField("pro6_2", type: .scalar(String.self)),
        GraphQLField("pro7", type: .scalar(String.self)),
        GraphQLField("pro8", type: .scalar(String.self)),
        GraphQLField("pro9", type: .scalar(String.self)),
        GraphQLField("pro10_1", type: .scalar(String.self)),
        GraphQLField("pro10_2", type: .scalar(String.self)),
        GraphQLField("pro10_3", type: .scalar(String.self)),
        GraphQLField("pro10_4", type: .scalar(String.self)),
        GraphQLField("pro11_1", type: .scalar(String.self)),
        GraphQLField("pro11_2", type: .scalar(String.self)),
        GraphQLField("pro11_3", type: .scalar(String.self)),
        GraphQLField("pro11_4", type: .scalar(String.self)),
        GraphQLField("pro11_5", type: .scalar(String.self)),
        GraphQLField("pro12_1", type: .scalar(String.self)),
        GraphQLField("pro12_2", type: .scalar(String.self)),
        GraphQLField("pro12_3", type: .scalar(String.self)),
        GraphQLField("pro12_4", type: .scalar(String.self)),
        GraphQLField("pro12_5", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, pro1: String? = nil, pro2: String? = nil, pro3: String? = nil, pro4: String? = nil, pro5: String? = nil, pro6_1: String? = nil, pro6_2: String? = nil, pro7: String? = nil, pro8: String? = nil, pro9: String? = nil, pro10_1: String? = nil, pro10_2: String? = nil, pro10_3: String? = nil, pro10_4: String? = nil, pro11_1: String? = nil, pro11_2: String? = nil, pro11_3: String? = nil, pro11_4: String? = nil, pro11_5: String? = nil, pro12_1: String? = nil, pro12_2: String? = nil, pro12_3: String? = nil, pro12_4: String? = nil, pro12_5: String? = nil, updatedAt: String? = nil, createdAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Questions", "id": id, "name": name, "pro1": pro1, "pro2": pro2, "pro3": pro3, "pro4": pro4, "pro5": pro5, "pro6_1": pro6_1, "pro6_2": pro6_2, "pro7": pro7, "pro8": pro8, "pro9": pro9, "pro10_1": pro10_1, "pro10_2": pro10_2, "pro10_3": pro10_3, "pro10_4": pro10_4, "pro11_1": pro11_1, "pro11_2": pro11_2, "pro11_3": pro11_3, "pro11_4": pro11_4, "pro11_5": pro11_5, "pro12_1": pro12_1, "pro12_2": pro12_2, "pro12_3": pro12_3, "pro12_4": pro12_4, "pro12_5": pro12_5, "updatedAt": updatedAt, "createdAt": createdAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var pro1: String? {
        get {
          return snapshot["pro1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro1")
        }
      }

      public var pro2: String? {
        get {
          return snapshot["pro2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro2")
        }
      }

      public var pro3: String? {
        get {
          return snapshot["pro3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro3")
        }
      }

      public var pro4: String? {
        get {
          return snapshot["pro4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro4")
        }
      }

      public var pro5: String? {
        get {
          return snapshot["pro5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro5")
        }
      }

      public var pro6_1: String? {
        get {
          return snapshot["pro6_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro6_1")
        }
      }

      public var pro6_2: String? {
        get {
          return snapshot["pro6_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro6_2")
        }
      }

      public var pro7: String? {
        get {
          return snapshot["pro7"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro7")
        }
      }

      public var pro8: String? {
        get {
          return snapshot["pro8"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro8")
        }
      }

      public var pro9: String? {
        get {
          return snapshot["pro9"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro9")
        }
      }

      public var pro10_1: String? {
        get {
          return snapshot["pro10_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_1")
        }
      }

      public var pro10_2: String? {
        get {
          return snapshot["pro10_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_2")
        }
      }

      public var pro10_3: String? {
        get {
          return snapshot["pro10_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_3")
        }
      }

      public var pro10_4: String? {
        get {
          return snapshot["pro10_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro10_4")
        }
      }

      public var pro11_1: String? {
        get {
          return snapshot["pro11_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_1")
        }
      }

      public var pro11_2: String? {
        get {
          return snapshot["pro11_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_2")
        }
      }

      public var pro11_3: String? {
        get {
          return snapshot["pro11_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_3")
        }
      }

      public var pro11_4: String? {
        get {
          return snapshot["pro11_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_4")
        }
      }

      public var pro11_5: String? {
        get {
          return snapshot["pro11_5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro11_5")
        }
      }

      public var pro12_1: String? {
        get {
          return snapshot["pro12_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_1")
        }
      }

      public var pro12_2: String? {
        get {
          return snapshot["pro12_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_2")
        }
      }

      public var pro12_3: String? {
        get {
          return snapshot["pro12_3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_3")
        }
      }

      public var pro12_4: String? {
        get {
          return snapshot["pro12_4"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_4")
        }
      }

      public var pro12_5: String? {
        get {
          return snapshot["pro12_5"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pro12_5")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class OnCreateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUser($owner: String) {\n  onCreateUser(owner: $owner) {\n    __typename\n    id\n    name\n    isAgree\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var owner: String?

  public init(owner: String? = nil) {
    self.owner = owner
  }

  public var variables: GraphQLMap? {
    return ["owner": owner]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUser", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnCreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUser: OnCreateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUser": onCreateUser.flatMap { $0.snapshot }])
    }

    public var onCreateUser: OnCreateUser? {
      get {
        return (snapshot["onCreateUser"] as? Snapshot).flatMap { OnCreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUser")
      }
    }

    public struct OnCreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("isAgree", type: .scalar(Bool.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, isAgree: Bool? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "name": name, "isAgree": isAgree, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var isAgree: Bool? {
        get {
          return snapshot["isAgree"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isAgree")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class OnUpdateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUser($owner: String) {\n  onUpdateUser(owner: $owner) {\n    __typename\n    id\n    name\n    isAgree\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var owner: String?

  public init(owner: String? = nil) {
    self.owner = owner
  }

  public var variables: GraphQLMap? {
    return ["owner": owner]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUser", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnUpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUser: OnUpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUser": onUpdateUser.flatMap { $0.snapshot }])
    }

    public var onUpdateUser: OnUpdateUser? {
      get {
        return (snapshot["onUpdateUser"] as? Snapshot).flatMap { OnUpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUser")
      }
    }

    public struct OnUpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("isAgree", type: .scalar(Bool.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, isAgree: Bool? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "name": name, "isAgree": isAgree, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var isAgree: Bool? {
        get {
          return snapshot["isAgree"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isAgree")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class OnDeleteUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUser($owner: String) {\n  onDeleteUser(owner: $owner) {\n    __typename\n    id\n    name\n    isAgree\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var owner: String?

  public init(owner: String? = nil) {
    self.owner = owner
  }

  public var variables: GraphQLMap? {
    return ["owner": owner]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUser", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnDeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUser: OnDeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUser": onDeleteUser.flatMap { $0.snapshot }])
    }

    public var onDeleteUser: OnDeleteUser? {
      get {
        return (snapshot["onDeleteUser"] as? Snapshot).flatMap { OnDeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUser")
      }
    }

    public struct OnDeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("isAgree", type: .scalar(Bool.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, isAgree: Bool? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "name": name, "isAgree": isAgree, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var isAgree: Bool? {
        get {
          return snapshot["isAgree"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isAgree")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}