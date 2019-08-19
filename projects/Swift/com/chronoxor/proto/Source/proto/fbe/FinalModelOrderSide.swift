// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: proto.fbe
// Version: 1.3.0.0


import fbe

// Fast Binary Encoding OrderSide final model
public class FinalModelOrderSide: FinalModel {

    public var _buffer: Buffer
    public var _offset: Int

    // Final size
    public let fbeSize: Int = 1

    public init(buffer: Buffer = Buffer(), offset: Int = 0) {
        _buffer = buffer
        _offset = offset
    }

    // Get the allocation size
    public func fbeAllocationSize(value: OrderSide) -> Int { fbeSize }

    public func verify() -> Int  {
        if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            return Int.max
        }

        return fbeSize
    }

    // Get the value
    public func get(size: inout Size) -> OrderSide {
        if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            return OrderSide()
        }

        size.value = fbeSize
        return OrderSide(value: readByte(offset: fbeOffset))
    }

    // Set the value
    public func set(value: OrderSide) -> Int {
        if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            return 0
        }

        write(offset: fbeOffset, value: value.raw)
        return fbeSize
    }
}
