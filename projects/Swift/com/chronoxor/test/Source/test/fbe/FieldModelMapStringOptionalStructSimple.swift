// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: test.fbe
// Version: 1.3.0.0


import Foundation

import fbe

import proto

import Foundation

import fbe

import proto

// Fast Binary Encoding String->OptionalStructSimple map field model
class FieldModelMapStringOptionalStructSimple: FieldModel {
    private let _modelKey: FieldModelString
    private let _modelValue: FieldModelOptionalStructSimple

    var _buffer: Buffer
    var _offset: Int

    // Field size
    let fbeSize: Int = 4

    var fbeExtra: Int {
        if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            return 0
        }

        let fbeMapOffset = Int(readUInt32(offset: fbeOffset))
        if (fbeMapOffset == 0) || ((_buffer.offset + fbeMapOffset + 4) > _buffer.size) {
            return 0
        }

        let fbeMapSize = Int(readUInt32(offset: fbeMapOffset))

        var fbeResult: Int = 4
        _modelKey.fbeOffset = fbeMapOffset + 4
        _modelValue.fbeOffset = fbeMapOffset + 4 + _modelKey.fbeSize
        var i = fbeMapSize
        while (i > 0) {
            fbeResult += _modelKey.fbeSize + _modelKey.fbeExtra
            _modelKey.fbeShift(size: _modelKey.fbeSize)
            fbeResult += _modelValue.fbeSize + _modelValue.fbeExtra
            _modelValue.fbeShift(size: _modelValue.fbeSize)
            i -= 1
        }
        return fbeResult
    }

    required init() {
        let buffer = Buffer()
        let offset = 0

        _buffer = buffer
        _offset = offset

        _modelKey = FieldModelString(buffer: buffer, offset: offset)
        _modelValue = FieldModelOptionalStructSimple(buffer: buffer, offset: offset)
    }

    required init(buffer: Buffer, offset: Int) {
        _buffer = buffer
        _offset = offset

        _modelKey = FieldModelString(buffer: buffer, offset: offset)
        _modelValue = FieldModelOptionalStructSimple(buffer: buffer, offset: offset)
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

        let fbeMapOffset = Int(readUInt32(offset: fbeOffset))
        if (fbeMapOffset == 0) || ((_buffer.offset + fbeMapOffset + 4) > _buffer.size) {
            return 0
        }

        return Int(readUInt32(offset: fbeMapOffset))
    }

    // Vector index operator
    public func getItem(index: Int) -> (FieldModelString, FieldModelOptionalStructSimple) {
        assert(_buffer.offset + fbeOffset + fbeSize <= _buffer.size, "Model is broken!")

        let fbeMapOffset = Int(readUInt32(offset: fbeOffset))
        assert((fbeMapOffset > 0) && ((_buffer.offset + fbeMapOffset + 4) <= _buffer.size), "Model is broken!")

        let fbeMapSize = Int(readUInt32(offset: fbeMapOffset))
        assert(index < fbeMapSize, "Index is out of bounds!")

        _modelKey.fbeOffset = fbeMapOffset + 4
        _modelValue.fbeOffset = fbeMapOffset + 4 + _modelKey.fbeSize
        _modelKey.fbeShift(size: index * (_modelKey.fbeSize + _modelValue.fbeSize))
        _modelValue.fbeShift(size: index * (_modelKey.fbeSize + _modelValue.fbeSize))
        return (_modelKey, _modelValue)
    }

    func resize(size: Int) throws -> (FieldModelString, FieldModelOptionalStructSimple) {
        let fbeMapSize = size * (_modelKey.fbeSize + _modelValue.fbeSize)
        let fbeMapOffset = try _buffer.allocate(size: 4 + fbeMapSize) - _buffer.offset
        assert((fbeMapOffset > 0) && ((_buffer.offset + fbeMapOffset + 4) <= _buffer.size), "Model is broken!")

        write(offset: fbeOffset, value: UInt32(fbeMapOffset))
        write(offset: fbeMapOffset, value: UInt32(size))
        write(offset: fbeMapOffset + 4, value: UInt8.zero, valueCount: fbeMapSize)

        _modelKey.fbeOffset = fbeMapOffset + 4
        _modelValue.fbeOffset = fbeMapOffset + 4 + _modelKey.fbeSize
        return (_modelKey, _modelValue)
    }

    public func verify() -> Bool {
       if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            return true
        }

        let fbeMapOffset = Int(readUInt32(offset: fbeOffset))
        if (fbeMapOffset == 0) {
            return true
        }

        if _buffer.offset + fbeMapOffset + 4 > _buffer.size {
            return false
        }

        let fbeMapSize = Int(readUInt32(offset: fbeMapOffset))
        _modelKey.fbeOffset = fbeMapOffset + 4
        _modelValue.fbeOffset = fbeMapOffset + 4 + _modelKey.fbeSize
        var i = fbeMapSize
        while (i > 0) {
            if !_modelKey.verify() { return false }
            _modelKey.fbeShift(size: _modelKey.fbeSize + _modelValue.fbeSize)
            if !_modelValue.verify() { return false }
            _modelValue.fbeShift(size: _modelKey.fbeSize + _modelValue.fbeSize)
            i -= 1
        }

        return true
    }

    public func get(values: inout Dictionary<String, test.StructSimple?>) {
        values.removeAll()

        let fbeMapSize = size
        if fbeMapSize == 0 {
            return
        }

        //values.ensureCapacity(fbeVectorSize.toInt())

        let fbeModel = getItem(index: 0)
        var i = fbeMapSize
        while (i > 0) {
            let key = fbeModel.0.get()
            let value = fbeModel.1.get()
            values[key] = value
            fbeModel.0.fbeShift(size: fbeModel.0.fbeSize + fbeModel.1.fbeSize)
            fbeModel.1.fbeShift(size: fbeModel.0.fbeSize + fbeModel.1.fbeSize)
            i -= 1
        }
    }

    public func set(value values: Dictionary<String, test.StructSimple?>) throws {
        assert(_buffer.offset + fbeOffset + fbeSize <= _buffer.size, "Model is broken!")
        if _buffer.offset + fbeOffset + fbeSize > _buffer.size {
            return
        }

        let fbeModel = try resize(size: values.count)
        for (key, value) in values {
            try fbeModel.0.set(value: key)
            fbeModel.0.fbeShift(size: fbeModel.0.fbeSize + fbeModel.1.fbeSize)
            try fbeModel.1.set(value: value)
            fbeModel.1.fbeShift(size: fbeModel.0.fbeSize + fbeModel.1.fbeSize)
        }
    }
}
