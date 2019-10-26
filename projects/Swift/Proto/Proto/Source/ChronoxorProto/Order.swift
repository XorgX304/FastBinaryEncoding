// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: proto.fbe
// Version: 1.3.0.0

import Foundation
import ChronoxorFbe

public struct Order: Comparable, Hashable, Codable {
    public var id: Int32 = 0
    public var symbol: String = ""
    public var side: OrderSide = ChronoxorProto.OrderSide()
    public var type: OrderType = ChronoxorProto.OrderType()
    public var price: Double = 0.0
    public var volume: Double = 0.0


    public init() { }
    public init(id: Int32, symbol: String, side: OrderSide, type: OrderType, price: Double, volume: Double) {

        self.id = id
        self.symbol = symbol
        self.side = side
        self.type = type
        self.price = price
        self.volume = volume
    }

    public init(other: Order) {
        self.id = other.id
        self.symbol = other.symbol
        self.side = other.side
        self.type = other.type
        self.price = other.price
        self.volume = other.volume
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int32.self, forKey: .id)
        symbol = try container.decode(String.self, forKey: .symbol)
        side = try container.decode(ChronoxorProto.OrderSide.self, forKey: .side)
        type = try container.decode(ChronoxorProto.OrderType.self, forKey: .type)
        price = try container.decode(Double.self, forKey: .price)
        volume = try container.decode(Double.self, forKey: .volume)
    }

    public func clone() throws -> Order {
        // Serialize the struct to the FBE stream
        let writer = OrderModel()
        try _ = writer.serialize(value: self)

        // Deserialize the struct from the FBE stream
        let reader = OrderModel()
        reader.attach(buffer: writer.buffer)
        return reader.deserialize()
    }

    public static func < (lhs: Order, rhs: Order) -> Bool {
        if !(lhs.id < rhs.id) { return false }
        return true
    }

    public static func == (lhs: Order, rhs: Order) -> Bool {
        if !(lhs.id == rhs.id) { return false }
        return true
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    public var description: String {
        var sb = String()
        sb.append("Order(")
        sb.append("id="); sb.append(id.description)
        sb.append(",symbol="); sb.append("\""); sb.append(symbol); sb.append("\"")
        sb.append(",side="); sb.append(side.description)
        sb.append(",type="); sb.append(type.description)
        sb.append(",price="); sb.append(price.description)
        sb.append(",volume="); sb.append(volume.description)
        sb.append(")")
        return sb
    }
    private enum CodingKeys: String, CodingKey {
        case id
        case symbol
        case side
        case type
        case price
        case volume
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(symbol, forKey: .symbol)
        try container.encode(side, forKey: .side)
        try container.encode(type, forKey: .type)
        try container.encode(price, forKey: .price)
        try container.encode(volume, forKey: .volume)
    }

    public func toJson() throws -> String {
        return String(data: try JSONEncoder().encode(self), encoding: .utf8)!
    }

    public static func fromJson(_ json: String) throws -> Order {
        return try JSONDecoder().decode(Order.self, from: json.data(using: .utf8)!)
    }
}
