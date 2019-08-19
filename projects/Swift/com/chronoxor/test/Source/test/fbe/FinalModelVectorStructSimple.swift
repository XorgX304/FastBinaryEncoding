// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: test.fbe
// Version: 1.3.0.0


import Foundation

import fbe

import proto

// Fast Binary Encoding StructSimple vector final model
class FinalModelVectorStructSimple: FinalModel {
    var _buffer: Buffer = Buffer()
    var _offset: Int = 0

    private var _model: FinalModelStructSimple

    init(buffer: Buffer, offset: Int) {
        _buffer = buffer
        _offset = offset

        _model = FinalModelStructSimple(buffer: buffer, offset: offset)
    }

    // Get the allocation size
    func fbeAllocationSize(value values: Array<test.StructSimple>) -> Int {
        var size: Int = 4
        for value in values {
            size += _model.fbeAllocationSize(value: value)
        }

        return size
    }

    // Check if the vector is valid
    public func verify() -> Int {
        if _buffer.offset + fbeOffset + 4 > _buffer.size {
            return Int.max
        }

        let fbeVectorSize = Int(readUInt32(offset: fbeOffset))

        var size: Int = 4
        _model.fbeOffset = fbeOffset + 4
        var i = fbeVectorSize
        while (i > 0) {
            let offset = _model.verify()
            if offset == Int.max { return Int.max }
            _model.fbeShift(size: offset)
            size += offset
            i -= 1
        }
        return size
    }

    public func get(values: inout Array<test.StructSimple>) -> Int {
        values.removeAll()

        assert(_buffer.offset + fbeOffset + 4 <= _buffer.size, "Model is broken!")
        if _buffer.offset + fbeOffset + 4 > _buffer.size {
            return 0
        }

        let fbeVectorSize = Int(readUInt32(offset: fbeOffset))
        if fbeVectorSize == 0 {
            return 4
        }

        //values.ensureCapacity(fbeVectorSize.toInt())

        var size: Int = 4
        var offset = Size()
        _model.fbeOffset = fbeOffset + 4
        for _ in 1...fbeVectorSize {
            offset.value = 0
            let value = _model.get(size: &offset)
            values.append(value)
            _model.fbeShift(size: offset.value)
            size += offset.value
        }
        return size
    }

    public func set(value values: Array<test.StructSimple>) throws -> Int {
        assert(_buffer.offset + fbeOffset + 4 <= _buffer.size, "Model is broken!")
        if _buffer.offset + fbeOffset + 4 > _buffer.size {
            return 0
        }

        write(offset: fbeOffset, value: UInt32(values.count))

        var size: Int = 4
        _model.fbeOffset = fbeOffset + 4
        for value in values {
            let offset = try _model.set(value: value)
            _model.fbeShift(size: offset)
            size += offset
        }
        return size
    }
}
