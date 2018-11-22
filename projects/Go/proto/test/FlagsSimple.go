// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: test.fbe
// Version: 1.1.0.0

package test

import "strings"
import "encoding/json"

type FlagsSimple int32

//noinspection GoSnakeCaseUsage
const (
    FlagsSimple_FLAG_VALUE_0 = FlagsSimple(0x0)
    FlagsSimple_FLAG_VALUE_1 = FlagsSimple(0x1)
    FlagsSimple_FLAG_VALUE_2 = FlagsSimple(0x2)
    FlagsSimple_FLAG_VALUE_3 = FlagsSimple(0x4)
    FlagsSimple_FLAG_VALUE_4 = FlagsSimple(FlagsSimple_FLAG_VALUE_3)
    FlagsSimple_FLAG_VALUE_5 = FlagsSimple(FlagsSimple_FLAG_VALUE_1 | FlagsSimple_FLAG_VALUE_3)
)

//noinspection GoBoolExpressions
func (f FlagsSimple) String() string {
    var sb strings.Builder
    first := true
    if ((f & FlagsSimple_FLAG_VALUE_0) != 0) && ((f & FlagsSimple_FLAG_VALUE_0) == FlagsSimple_FLAG_VALUE_0) {
        if first {
            first = false
        } else {
            sb.WriteRune('|')
        }
        sb.WriteString("FLAG_VALUE_0")
    }
    if ((f & FlagsSimple_FLAG_VALUE_1) != 0) && ((f & FlagsSimple_FLAG_VALUE_1) == FlagsSimple_FLAG_VALUE_1) {
        if first {
            first = false
        } else {
            sb.WriteRune('|')
        }
        sb.WriteString("FLAG_VALUE_1")
    }
    if ((f & FlagsSimple_FLAG_VALUE_2) != 0) && ((f & FlagsSimple_FLAG_VALUE_2) == FlagsSimple_FLAG_VALUE_2) {
        if first {
            first = false
        } else {
            sb.WriteRune('|')
        }
        sb.WriteString("FLAG_VALUE_2")
    }
    if ((f & FlagsSimple_FLAG_VALUE_3) != 0) && ((f & FlagsSimple_FLAG_VALUE_3) == FlagsSimple_FLAG_VALUE_3) {
        if first {
            first = false
        } else {
            sb.WriteRune('|')
        }
        sb.WriteString("FLAG_VALUE_3")
    }
    if ((f & FlagsSimple_FLAG_VALUE_4) != 0) && ((f & FlagsSimple_FLAG_VALUE_4) == FlagsSimple_FLAG_VALUE_4) {
        if first {
            first = false
        } else {
            sb.WriteRune('|')
        }
        sb.WriteString("FLAG_VALUE_4")
    }
    if ((f & FlagsSimple_FLAG_VALUE_5) != 0) && ((f & FlagsSimple_FLAG_VALUE_5) == FlagsSimple_FLAG_VALUE_5) {
        if first {
            first = false
        } else {
            sb.WriteRune('|')
        }
        sb.WriteString("FLAG_VALUE_5")
    }
    return sb.String()
}

func (f FlagsSimple) MarshalJSON() ([]byte, error) {
    return json.Marshal(int32(f))
}

func (f *FlagsSimple) UnmarshalJSON(b []byte) error {
    var value int32
    err := json.Unmarshal(b, &value)
    if err != nil {
        return err
    }
    *f = FlagsSimple(value)
    return nil
}
