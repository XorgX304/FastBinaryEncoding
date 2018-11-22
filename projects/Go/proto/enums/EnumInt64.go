// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: enums.fbe
// Version: 1.1.0.0

package enums

import "encoding/json"

type EnumInt64 int64

//noinspection GoSnakeCaseUsage
const (
    EnumInt64_ENUM_VALUE_0 = EnumInt64(0 + 0)
    EnumInt64_ENUM_VALUE_1 = EnumInt64(-9223372036854775807 + 0)
    EnumInt64_ENUM_VALUE_2 = EnumInt64(-9223372036854775807 + 1)
    EnumInt64_ENUM_VALUE_3 = EnumInt64(9223372036854775806 + 0)
    EnumInt64_ENUM_VALUE_4 = EnumInt64(9223372036854775806 + 1)
    EnumInt64_ENUM_VALUE_5 = EnumInt64(EnumInt64_ENUM_VALUE_3)
)

func (e EnumInt64) String() string {
    if e == EnumInt64_ENUM_VALUE_0 {
        return "ENUM_VALUE_0"
    }
    if e == EnumInt64_ENUM_VALUE_1 {
        return "ENUM_VALUE_1"
    }
    if e == EnumInt64_ENUM_VALUE_2 {
        return "ENUM_VALUE_2"
    }
    if e == EnumInt64_ENUM_VALUE_3 {
        return "ENUM_VALUE_3"
    }
    if e == EnumInt64_ENUM_VALUE_4 {
        return "ENUM_VALUE_4"
    }
    if e == EnumInt64_ENUM_VALUE_5 {
        return "ENUM_VALUE_5"
    }
    return "<unknown>"
}

func (e EnumInt64) MarshalJSON() ([]byte, error) {
    return json.Marshal(int64(e))
}

func (e *EnumInt64) UnmarshalJSON(b []byte) error {
    var value int64
    err := json.Unmarshal(b, &value)
    if err != nil {
        return err
    }
    *e = EnumInt64(value)
    return nil
}
