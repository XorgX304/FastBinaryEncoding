// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: proto.fbe
// Version: 1.1.0.0

package proto

import "encoding/json"

type OrderSide byte

//noinspection GoSnakeCaseUsage
const (
    OrderSide_buy = OrderSide(0 + 0)
    OrderSide_sell = OrderSide(0 + 1)
)

func (e OrderSide) String() string {
    if e == OrderSide_buy {
        return "buy"
    }
    if e == OrderSide_sell {
        return "sell"
    }
    return "<unknown>"
}

func (e OrderSide) MarshalJSON() ([]byte, error) {
    return json.Marshal(byte(e))
}

func (e *OrderSide) UnmarshalJSON(b []byte) error {
    var value byte
    err := json.Unmarshal(b, &value)
    if err != nil {
        return err
    }
    *e = OrderSide(value)
    return nil
}
