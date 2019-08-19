// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: protoex.fbe
// Version: 1.3.0.0


import Foundation

public enum OrderSideEnum {
    typealias RawValue = UInt8
    case buy
    case sell
    case tell

    var rawValue: RawValue {
        switch self {
        case .buy: return 0 + 0
        case .sell: return 0 + 1
        case .tell: return 0 + 2
        }
    }


    init(value: UInt8) { self = OrderSideEnum(rawValue: NSNumber(value: value).uint8Value) }
    init(value: UInt16) { self = OrderSideEnum(rawValue: NSNumber(value: value).uint8Value) }
    init(value: UInt32) { self = OrderSideEnum(rawValue: NSNumber(value: value).uint8Value) }
    init(value: UInt64) { self = OrderSideEnum(rawValue: NSNumber(value: value).uint8Value) }
    init(value: OrderSideEnum) { self = OrderSideEnum(rawValue: value.rawValue) }
    init(rawValue: UInt8) { self = Self.mapValue(value: rawValue)! }

    var description: String {
        switch self {
        case .buy: return "buy"
        case .sell: return "sell"
        case .tell: return "tell"
        default: return "<unknown>"
        }
    }

    static func values() -> [OrderSideEnum] {
        return [
            OrderSideEnum.buy,
            OrderSideEnum.sell,
            OrderSideEnum.tell,
        ]
    }

    static func mapValue(value: UInt8) -> OrderSideEnum? {
        var mapping = Dictionary<UInt8, OrderSideEnum>()
        for value in values() {
            mapping[value.rawValue] = value
        }
        return mapping[value]
    }
}
