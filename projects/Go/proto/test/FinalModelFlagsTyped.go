// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: test.fbe
// Version: 1.1.0.0

package test

import "../fbe"

import "errors"

// Fast Binary Encoding FlagsTyped final model class
type FinalModelFlagsTyped struct {
    buffer *fbe.Buffer  // Final model buffer
    offset int          // Final model buffer offset
}

// Get the allocation size
func (fm FinalModelFlagsTyped) FBEAllocationSize(value FlagsTyped) int { return fm.FBESize() }

// Get the final size
func (fm FinalModelFlagsTyped) FBESize() int { return 8 }

// Get the final offset
func (fm FinalModelFlagsTyped) FBEOffset() int { return fm.offset }
// Set the final offset
func (fm *FinalModelFlagsTyped) SetFBEOffset(value int) { fm.offset = value }

// Shift the current final offset
func (fm *FinalModelFlagsTyped) FBEShift(size int) { fm.offset += size }
// Unshift the current final offset
func (fm *FinalModelFlagsTyped) FBEUnshift(size int) { fm.offset -= size }

// Create a new final model
func NewFinalModelFlagsTyped(buffer *fbe.Buffer, offset int) *FinalModelFlagsTyped {
    return &FinalModelFlagsTyped{ buffer: buffer, offset: offset }
}

// Check if the value is valid
func (fm FinalModelFlagsTyped) Verify() (bool, int) {
    if (fm.buffer.Offset() + fm.FBEOffset() + fm.FBESize()) > fm.buffer.Size() {
        return false, 0
    }

    return true, fm.FBESize()
}

// Get the value
func (fm FinalModelFlagsTyped) Get() (FlagsTyped, int, error) {
    if (fm.buffer.Offset() + fm.FBEOffset() + fm.FBESize()) > fm.buffer.Size() {
        return FlagsTyped(0), 0, errors.New("model is broken")
    }

    return FlagsTyped(fbe.ReadUInt64(fm.buffer.Data(), fm.buffer.Offset() + fm.FBEOffset())), fm.FBESize(), nil
}

// Set the value
func (fm *FinalModelFlagsTyped) Set(value FlagsTyped) (int, error) {
    if (fm.buffer.Offset() + fm.FBEOffset() + fm.FBESize()) > fm.buffer.Size() {
        return 0, errors.New("model is broken")
    }

    fbe.WriteUInt64(fm.buffer.Data(), fm.buffer.Offset() + fm.FBEOffset(), uint64(value))
    return fm.FBESize(), nil
}
