// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: proto.fbe
// Version: 1.1.0.0

package proto

import "strconv"
import "strings"
import "encoding/json"
import "../fbe"

// Workaround for Go unused imports issue
var _ = fbe.Version

// Order struct
type Order struct {
    Uid int32
    Symbol string
    Side OrderSide
    Type OrderType
    Price float64
    Volume float64
}
