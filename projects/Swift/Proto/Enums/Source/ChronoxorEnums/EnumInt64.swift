// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: enums.fbe
// Version: 1.3.0.0

import Foundation

public struct EnumInt64: Comparable, Hashable, Codable {
    typealias RawValue = Int64
    public static let ENUM_VALUE_0 = EnumInt64(value: EnumInt64Enum.ENUM_VALUE_0)
    public static let ENUM_VALUE_1 = EnumInt64(value: EnumInt64Enum.ENUM_VALUE_1)
    public static let ENUM_VALUE_2 = EnumInt64(value: EnumInt64Enum.ENUM_VALUE_2)
    public static let ENUM_VALUE_3 = EnumInt64(value: EnumInt64Enum.ENUM_VALUE_3)
    public static let ENUM_VALUE_4 = EnumInt64(value: EnumInt64Enum.ENUM_VALUE_4)
    public static let ENUM_VALUE_5 = EnumInt64(value: EnumInt64Enum.ENUM_VALUE_5)

    var value: EnumInt64Enum?

    public var raw: Int64 { return value!.rawValue }

    public init() { setDefault() }
    public init(value: Int64) { setEnum(value: value) }
    public init(value: EnumInt64Enum) { setEnum(value: value) }
    public init(value: EnumInt64) { setEnum(value: value) }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        setEnum(value: try container.decode(RawValue.self))
    }
    public mutating func setDefault() { setEnum(value: NSNumber(value: 0).int64Value) }

    public mutating func setEnum(value: Int64) { self.value = EnumInt64Enum.mapValue(value: value) }
    public mutating func setEnum(value: EnumInt64Enum) { self.value = value }
    public mutating func setEnum(value: EnumInt64) { self.value = value.value }

    public static func < (lhs: EnumInt64, rhs: EnumInt64) -> Bool {
        guard let lhsValue = lhs.value, let rhsValue = rhs.value else {
            return false
            }
        return lhsValue.rawValue < rhsValue.rawValue
    }

    public static func == (lhs: EnumInt64, rhs: EnumInt64) -> Bool {
        guard let lhsValue = lhs.value, let rhsValue = rhs.value else {
            return false
            }
        return lhsValue.rawValue == rhsValue.rawValue
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(value?.rawValue ?? 0)
    }

    public var description: String {
        return value?.description ?? "<unknown>"
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(raw)
    }

    public func toJson() throws -> String {
        return String(data: try JSONEncoder().encode(self), encoding: .utf8)!
    }

    public static func fromJson(_ json: String) throws -> EnumInt64 {
        return try JSONDecoder().decode(EnumInt64.self, from: json.data(using: .utf8)!)
    }
}
