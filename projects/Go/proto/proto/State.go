// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: proto.fbe
// Version: 1.1.0.0

package proto

import "strings"
import "encoding/json"
import "../fbe"

// Workaround for Go unused imports issue
var _ = fbe.Version

// State flags key
type StateKey byte

// Convert State flags key to string
func (k StateKey) String() string {
    return State(k).String()
}

// State flags
type State byte

// State flags values
//noinspection GoSnakeCaseUsage
const (
    State_unknown = State(0x00)
    State_invalid = State(0x01)
    State_initialized = State(0x02)
    State_calculated = State(0x04)
    State_broken = State(0x08)
    State_good = State(State_initialized | State_calculated)
    State_bad = State(State_unknown | State_invalid | State_broken)
)

// Create a new State flags
func NewState() *State {
    return new(State)
}

// Get the flags key
func (f State) Key() StateKey {
    return StateKey(f)
}

// Convert flags to string
//noinspection GoBoolExpressions
func (f State) String() string {
    var sb strings.Builder
    first := true
    if ((f & State_unknown) != 0) && ((f & State_unknown) == State_unknown) {
        if first {
            first = false
        } else {
            sb.WriteRune('|')
        }
        sb.WriteString("unknown")
    }
    if ((f & State_invalid) != 0) && ((f & State_invalid) == State_invalid) {
        if first {
            first = false
        } else {
            sb.WriteRune('|')
        }
        sb.WriteString("invalid")
    }
    if ((f & State_initialized) != 0) && ((f & State_initialized) == State_initialized) {
        if first {
            first = false
        } else {
            sb.WriteRune('|')
        }
        sb.WriteString("initialized")
    }
    if ((f & State_calculated) != 0) && ((f & State_calculated) == State_calculated) {
        if first {
            first = false
        } else {
            sb.WriteRune('|')
        }
        sb.WriteString("calculated")
    }
    if ((f & State_broken) != 0) && ((f & State_broken) == State_broken) {
        if first {
            first = false
        } else {
            sb.WriteRune('|')
        }
        sb.WriteString("broken")
    }
    if ((f & State_good) != 0) && ((f & State_good) == State_good) {
        if first {
            first = false
        } else {
            sb.WriteRune('|')
        }
        sb.WriteString("good")
    }
    if ((f & State_bad) != 0) && ((f & State_bad) == State_bad) {
        if first {
            first = false
        } else {
            sb.WriteRune('|')
        }
        sb.WriteString("bad")
    }
    return sb.String()
}

// Convert flags to JSON
func (f State) MarshalJSON() ([]byte, error) {
    return json.Marshal(byte(f))
}

// Convert JSON to flags
func (f *State) UnmarshalJSON(b []byte) error {
    var result byte
    err := json.Unmarshal(b, &result)
    if err != nil {
        return err
    }
    *f = State(result)
    return nil
}
