// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: test.fbe
// Version: 1.3.0.0


import fbe

// Fast Binary Encoding StructNested model
public class StructNestedModel: Model {
    public let model: FieldModelStructNested

    public override init(buffer: Buffer = Buffer()) {
        model = FieldModelStructNested(buffer: buffer, offset: 4)
        super.init(buffer: buffer)
    }

    // Model size
    public func fbeSize() -> Int { model.fbeSize + model.fbeExtra }
    // Model type
    public var fbeType: Int = fbeTypeConst
    static let fbeTypeConst: Int = FieldModelStructNested.fbeTypeConst

    // Check if the struct value is valid
    public func verify() -> Bool {
        if buffer.offset + model.fbeOffset - 4 > buffer.size {
            return false
        }

        let fbeFullSize = Int(readUInt32(offset: model.fbeOffset - 4))
        if (fbeFullSize < model.fbeSize) {
            return false
        }

        return model.verify()
    }

    // Create a new model (begin phase)
    public func createBegin() throws -> Int {
        return try buffer.allocate(size: 4 + model.fbeSize)
    }

    // Create a new model (end phase)
    public func createEnd(fbeBegin: Int) -> Int {
        let fbeEnd = buffer.size
        let fbeFullSize = fbeEnd - fbeBegin
        write(offset: model.fbeOffset - 4, value: UInt32(fbeFullSize))
        return fbeFullSize
    }

    // Serialize the struct value
    public func serialize(value: StructNested) throws -> Int {
        let fbeBegin = try createBegin()
        try model.set(value: value)
        return createEnd(fbeBegin: fbeBegin)
    }

    // Deserialize the struct value
    public func deserialize() -> StructNested { var value = StructNested(); _ = deserialize(value: &value); return value }
    public func deserialize(value: inout StructNested) -> Int {
        var valueRef = value

        if buffer.offset + model.fbeOffset - 4 > buffer.size {
            valueRef = StructNested()
            return 0
        }

        let fbeFullSize = Int(readUInt32(offset: model.fbeOffset - 4))
        assert(fbeFullSize >= model.fbeSize, "Model is broken!")
        if (fbeFullSize < model.fbeSize) {
            valueRef = StructNested()
            return 0
        }

        valueRef = model.get(fbeValue: &valueRef)
        return fbeFullSize
    }

    // Move to the next struct value
    public func next(prev: Int) {
        model.fbeShift(size: prev)
    }
}
