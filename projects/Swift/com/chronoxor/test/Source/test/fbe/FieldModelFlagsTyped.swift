// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: test.fbe
// Version: 1.3.0.0


import fbe

// Fast Binary Encoding FlagsTyped field model
public class FieldModelFlagsTyped: FieldModel {

    public var _buffer: Buffer = Buffer()
    public var _offset: Int = 0

    public var fbeSize: Int = 8

    public required init() {
        _buffer = Buffer()
        _offset = 0
    }

    // Get the value
    public func get(defaults: FlagsTyped = FlagsTyped()) -> FlagsTyped {
        if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            return defaults
        }

        return FlagsTyped(value: readUInt64(offset: fbeOffset))
    }

    // Set the value
    public func set(value: FlagsTyped) {
        assert((_buffer.offset + fbeOffset + fbeSize) <= _buffer.size, "Model is broken!")
        if ((_buffer.offset + fbeOffset + fbeSize) > _buffer.size) {
            return
        }

        write(offset: fbeOffset, value: value.raw)
    }
}
