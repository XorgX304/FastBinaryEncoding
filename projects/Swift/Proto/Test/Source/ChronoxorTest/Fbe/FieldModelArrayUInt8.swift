// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: test.fbe
// Version: 1.3.0.0

import Foundation
import ChronoxorFbe
import ChronoxorProto

// Fast Binary Encoding UInt8 array field model
class FieldModelArrayUInt8: FieldModel {
    private let _model: ChronoxorFbe.FieldModelUInt8

    var _buffer: Buffer
    var _offset: Int
    var size: Int

    // Field size
    var fbeSize: Int {
        return size * _model.fbeSize
    }

    // Field extra size
    var fbeExtra: Int = 0

    // Get the vector offset
    var offset: Int = 0

    required init() {
        let buffer = Buffer()
        let offset = 0

        _buffer = buffer
        _offset = offset
        self.size = 0

        _model = ChronoxorFbe.FieldModelUInt8(buffer: buffer, offset: offset)
    }

    required init(buffer: Buffer, offset: Int, size: Int) {
        _buffer = buffer
        _offset = offset
        self.size =  size

        _model = ChronoxorFbe.FieldModelUInt8(buffer: buffer, offset: offset)
    }

    // Vector index operator
    public func getItem(index: Int) -> ChronoxorFbe.FieldModelUInt8 {
        assert(_buffer.offset + fbeOffset + fbeSize <= _buffer.size, "Model is broken!")
        assert(index < size, "Model is broken!")

        _model.fbeOffset = fbeOffset
        _model.fbeShift(size: index * _model.fbeSize)
        return _model
    }

    public func verify() -> Bool {
       if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            return false
        }

        _model.fbeOffset = fbeOffset
        var i = size
        while i > 0 {
            if !_model.verify() { return false }
            _model.fbeShift(size: _model.fbeSize)
            i -= 1
        }

        return true
    }

    public func get() -> Array<UInt8> {
        var values = Array<UInt8>()
        let fbeModel = getItem(index: 0)
        for _ in 0..<size {
            values.append(fbeModel.get())
            fbeModel.fbeShift(size: fbeModel.fbeSize)
        }

        return values
    }

    public func get(values: inout Array<UInt8>) {
        values.removeAll()

        let fbeVectorSize = size
        if fbeVectorSize == 0 {
            return
        }

        values.reserveCapacity(fbeVectorSize)

        let fbeModel = getItem(index: 0)
        var i = size
        while i > 0 {
            let value = fbeModel.get()
            values.append(value)
            fbeModel.fbeShift(size: fbeModel.fbeSize)
            i -= 1
        }
    }

    public func set(value values: Array<UInt8>) throws {
        if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            assertionFailure("Model is broken!")
            return
        }

        let fbeModel = getItem(index: 0)
        for value in values {
            try fbeModel.set(value: value)
            fbeModel.fbeShift(size: fbeModel.fbeSize)
        }
    }
}
