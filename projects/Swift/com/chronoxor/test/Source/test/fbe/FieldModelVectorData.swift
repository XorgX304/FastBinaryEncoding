// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: test.fbe
// Version: 1.3.0.0


import Foundation

import fbe

import proto

// Fast Binary Encoding Data vector field model
class FieldModelVectorData: FieldModel {
    private let _model: FieldModelData

    var _buffer: Buffer
    var _offset: Int

    // Field size
    let fbeSize: Int = 4

    var fbeExtra: Int {
        if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            return 0
        }

        let fbeVectorOffset = Int(readUInt32(offset: fbeOffset))
        if (fbeVectorOffset == 0) || ((_buffer.offset + fbeVectorOffset + 4) > _buffer.size) {
            return 0
        }

        let fbeVectorSize = Int(readUInt32(offset: fbeVectorOffset))

        var fbeResult: Int = 4
        _model.fbeOffset = fbeVectorOffset + 4
        var i = fbeVectorSize
        while (i > 0) {
            fbeResult += _model.fbeSize + _model.fbeExtra
            _model.fbeShift(size: _model.fbeSize)
            i -= 1
        }
        return fbeResult
    }

    required init() {
        let buffer = Buffer()
        let offset = 0

        _buffer = buffer
        _offset = offset

        _model = FieldModelData(buffer: buffer, offset: offset)
    }

    required init(buffer: Buffer, offset: Int) {
        _buffer = buffer
        _offset = offset

        _model = FieldModelData(buffer: buffer, offset: offset)
    }

    // Get the vector offset
    var offset: Int {
        if (_buffer.offset + fbeOffset + fbeSize) > _buffer.size {
              return 0
        }

        return Int(readUInt32(offset: fbeOffset))
    }

    // Get the vector offset
    var size: Int {
        if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            return 0
        }

        let fbeVectorOffset = Int(readUInt32(offset: fbeOffset))
        if (fbeVectorOffset == 0) || ((_buffer.offset + fbeVectorOffset + 4) > _buffer.size) {
            return 0
        }

        return Int(readUInt32(offset: fbeVectorOffset))
    }

    // Vector index operator
    public func getItem(index: Int) -> FieldModelData {
        assert(_buffer.offset + fbeOffset + fbeSize <= _buffer.size, "Model is broken!")

        let fbeVectorOffset = Int(readUInt32(offset: fbeOffset))
        assert((fbeVectorOffset > 0) && ((_buffer.offset + fbeVectorOffset + 4) <= _buffer.size), "Model is broken!")

        let fbeVectorSize = Int(readUInt32(offset: fbeVectorOffset))
        assert(index < fbeVectorSize, "Index is out of bounds!")

        _model.fbeOffset = fbeVectorOffset + 4
        _model.fbeShift(size: index * _model.fbeSize)
        return _model
    }

    func resize(size: Int) throws -> FieldModelData {
        let fbeVectorSize = size * _model.fbeSize
        let fbeVectorOffset = try _buffer.allocate(size: 4 + fbeVectorSize) - _buffer.offset
        assert((fbeVectorOffset > 0) && ((_buffer.offset + fbeVectorOffset + 4) <= _buffer.size), "Model is broken!")

        write(offset: fbeOffset, value: UInt32(fbeVectorOffset))
        write(offset: fbeVectorOffset, value: UInt32(size))
        write(offset: fbeVectorOffset + 4, value: UInt8.zero, valueCount: fbeVectorSize)

        _model.fbeOffset = fbeVectorOffset + 4
        return _model
    }

    public func verify() -> Bool {
       if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            return true
        }

        let fbeVectorOffset = Int(readUInt32(offset: fbeOffset))
        if (fbeVectorOffset == 0) {
            return true
        }

        if _buffer.offset + fbeVectorOffset + 4 > _buffer.size {
            return false
        }

        let fbeVectorSize = Int(readUInt32(offset: fbeVectorOffset))
        _model.fbeOffset = fbeVectorOffset + 4
        var i = fbeVectorSize
        while (i > 0) {
            if !_model.verify() { return false }
            _model.fbeShift(size: _model.fbeSize)
            i -= 1
        }

        return true
    }

    public func get(values: inout Array<Data>) {
        values.removeAll()

        let fbeVectorSize = size
        if fbeVectorSize == 0 {
            return
        }

        //values.ensureCapacity(fbeVectorSize.toInt())

        let fbeModel = getItem(index: 0)
        var i = fbeVectorSize
        while (i > 0) {
            let value = fbeModel.get()
            values.append(value)
            fbeModel.fbeShift(size: fbeModel.fbeSize)
            i -= 1
        }
    }

    public func set(value values: Array<Data>) throws {
        assert(_buffer.offset + fbeOffset + fbeSize <= _buffer.size, "Model is broken!")
        if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            return
        }

        let fbeModel = try resize(size: values.count)
        for value in values {
            try fbeModel.set(value: value)
            fbeModel.fbeShift(size: fbeModel.fbeSize)
        }
    }
}
