// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: test.fbe
// Version: 1.3.0.0


import fbe

// Fast Binary Encoding FlagsEmpty field model
public class FieldModelFlagsEmpty: FieldModel {

    public var _buffer: Buffer = Buffer()
    public var _offset: Int = 0

    public var fbeSize: Int = 4

    public required init() {
        _buffer = Buffer()
        _offset = 0
    }

    // Get the value
    public func get(defaults: FlagsEmpty = FlagsEmpty()) -> FlagsEmpty {
        if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            return defaults
        }

        return FlagsEmpty(value: readInt32(offset: fbeOffset))
    }

    // Set the value
    public func set(value: FlagsEmpty) {
        assert((_buffer.offset + fbeOffset + fbeSize) <= _buffer.size, "Model is broken!")
        if ((_buffer.offset + fbeOffset + fbeSize) > _buffer.size) {
            return
        }

        write(offset: fbeOffset, value: value.raw)
    }
}
