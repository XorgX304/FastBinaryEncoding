// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: test.fbe
// Version: 1.3.0.0


import fbe

// Fast Binary Encoding EnumEmpty final model
public class FinalModelEnumEmpty: FinalModel {

    public var _buffer: Buffer
    public var _offset: Int

    // Final size
    public let fbeSize: Int = 4

    public init(buffer: Buffer = Buffer(), offset: Int = 0) {
        _buffer = buffer
        _offset = offset
    }

    // Get the allocation size
    public func fbeAllocationSize(value: EnumEmpty) -> Int { fbeSize }

    public func verify() -> Int  {
        if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            return Int.max
        }

        return fbeSize
    }

    // Get the value
    public func get(size: inout Size) -> EnumEmpty {
        if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            return EnumEmpty()
        }

        size.value = fbeSize
        return EnumEmpty(value: readInt32(offset: fbeOffset))
    }

    // Set the value
    public func set(value: EnumEmpty) -> Int {
        assert(_buffer.offset + fbeOffset + fbeSize <= _buffer.size, "Model is broken!")
        if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            return 0
        }

        write(offset: fbeOffset, value: value.raw)
        return fbeSize
    }
}
