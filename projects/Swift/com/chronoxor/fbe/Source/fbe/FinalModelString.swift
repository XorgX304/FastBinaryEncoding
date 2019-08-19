// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: fbe
// Version: 1.3.0.0


// Fast Binary Encoding string final model
public class FinalModelString: FinalModel {
    public var _buffer = Buffer()
    public var _offset: Int = 0

    public init(buffer: Buffer, offset: Int) {
        _buffer = buffer
        _offset = offset
    }

    public func fbeAllocationSize(value: String) -> Int {
        return 4 + 3 * (value.count + 1)
    }

    // Check if the value is valid
    public func verify() -> Int {
        if _buffer.offset + fbeOffset + 4 > _buffer.size {
            return Int.max
        }

        let fbeStringSize = Int(readUInt32(offset: fbeOffset))
        if _buffer.offset + fbeOffset + 4 + fbeStringSize > _buffer.size {
            return Int.max
        }

        return 4 + fbeStringSize
    }

    // Get the value
    public func get(size: inout Size) -> String {
        if ((_buffer.offset + fbeOffset + 4) > _buffer.size) {
            size.value = 0
            return ""
        }

        let fbeStringSize = Int(readUInt32(offset: fbeOffset))
        if ((_buffer.offset + fbeOffset + 4 + fbeStringSize) > _buffer.size)
        {
            size.value = 4
            return ""
        }

        size.value = 4 + fbeStringSize
        return readString(offset: fbeOffset + 4, size: fbeStringSize)
    }

    // Set the value
    public func set(value: String) -> Int {
        if ((_buffer.offset + fbeOffset + 4) > _buffer.size) {
            return 0
        }

        //let bytes = value.data(using: .utf8)!

        let fbeStringSize = value.count
        if ((_buffer.offset + fbeOffset + 4 + fbeStringSize) > _buffer.size) {
            return 4
        }

        write(offset: fbeOffset, value: value)

//        write(offset: fbeOffset, value: UInt32(fbeStringSize))
//        write(offset: fbeOffset + 4, value: bytes)
        return 4 + fbeStringSize
    }
}
