// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: test.fbe
// Version: 1.1.0.0

package test

import "strconv"
import "strings"
import "encoding/json"
import "../fbe"
import "../proto"

// Workaround for Go unused imports issue
var _ = fbe.Version
var _ = proto.Version

// StructList struct
type StructList struct {
    F1 []byte
    F2 []*byte
    F3 [][]byte
    F4 []*[]byte
    F5 []EnumSimple
    F6 []*EnumSimple
    F7 []FlagsSimple
    F8 []*FlagsSimple
    F9 []StructSimple
    F10 []*StructSimple
}
