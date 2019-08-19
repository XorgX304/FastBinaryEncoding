// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: test.fbe
// Version: 1.3.0.0


import Foundation

public class EnumEmpty : Comparable, Hashable, Codable {
    typealias RawValue = Int32

    var value: EnumEmptyEnum? = EnumEmptyEnum.values().first

    public var raw: Int32 { return value!.rawValue }

    public init() { }
    public init(value: Int32) { setEnum(value: value) }
    public init(value: EnumEmptyEnum) { setEnum(value: value) }
    public init(value: EnumEmpty) { setEnum(value: value) }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        setEnum(value: try container.decode(RawValue.self))
    }
    public func setDefault() { setEnum(value: NSNumber(value: 0).int32Value) }

    public func setEnum(value: Int32) { self.value = EnumEmptyEnum.mapValue(value: value) }
    public func setEnum(value: EnumEmptyEnum) { self.value = value }
    public func setEnum(value: EnumEmpty) { self.value = value.value }

    public static func < (lhs: EnumEmpty, rhs: EnumEmpty) -> Bool {
        guard let lhsValue = lhs.value, let rhsValue = rhs.value else {
            return false
            }
        return lhsValue.rawValue < rhsValue.rawValue
    }

    public static func == (lhs: EnumEmpty, rhs: EnumEmpty) -> Bool {
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
    open func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(raw)
    }

    public func toJson() throws -> String {
        return String(data: try JSONEncoder().encode(self), encoding: .utf8)!
    }

    public class func fromJson(_ json: String) -> EnumEmpty {
        return try! JSONDecoder().decode(EnumEmpty.self, from: json.data(using: .utf8)!)
    }
}
