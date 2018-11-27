// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: protoex.fbe
// Version: 1.1.0.0

package protoex;

import java.io.*;
import java.lang.*;
import java.lang.reflect.*;
import java.math.*;
import java.nio.ByteBuffer;
import java.nio.charset.*;
import java.time.*;
import java.util.*;

import fbe.*;
import proto.*;

public class Account implements Comparable<Object>
{
    public int uid = 0;
    public String name = "";
    public StateEx state = StateEx.fromSet(EnumSet.of(StateEx.initialized.getEnum(), StateEx.bad.getEnum(), StateEx.sad.getEnum()));
    public Balance wallet = new Balance();
    public Balance asset = null;
    public ArrayList<Order> orders = new ArrayList<Order>();

    public Account() {}

    public Account(int uid, String name, StateEx state, Balance wallet, Balance asset, ArrayList<Order> orders)
    {
        this.uid = uid;
        this.name = name;
        this.state = state;
        this.wallet = wallet;
        this.asset = asset;
        this.orders = orders;
    }

    public Account(Account other)
    {
        this.uid = other.uid;
        this.name = other.name;
        this.state = other.state;
        this.wallet = other.wallet;
        this.asset = other.asset;
        this.orders = other.orders;
    }

    public Account clone()
    {
        // Serialize the struct to the FBE stream
        var writer = new protoex.fbe.AccountModel();
        writer.serialize(this);

        // Deserialize the struct from the FBE stream
        var reader = new protoex.fbe.AccountModel();
        reader.attach(writer.getBuffer());
        return reader.deserialize();
    }

    @Override
    public int compareTo(Object other)
    {
        if (other == null)
            return -1;

        if (!Account.class.isAssignableFrom(other.getClass()))
            return -1;

        final Account obj = (Account)other;

        int result = 0;
        result = Integer.compare(uid, obj.uid);
        if (result != 0)
            return result;
        return result;
    }

    @Override
    public boolean equals(Object other)
    {
        if (other == null)
            return false;

        if (!Account.class.isAssignableFrom(other.getClass()))
            return false;

        final Account obj = (Account)other;

        if (uid != obj.uid)
            return false;
        return true;
    }

    @Override
    public int hashCode()
    {
        int hash = 17;
        hash = hash * 31 + Integer.hashCode(uid);
        return hash;
    }

    @Override
    public String toString()
    {
        var sb = new StringBuilder();
        sb.append("Account(");
        sb.append("uid="); sb.append(uid);
        sb.append(",name="); if (name != null) sb.append("\"").append(name).append("\""); else sb.append("null");
        sb.append(",state="); sb.append(state);
        sb.append(",wallet="); sb.append(wallet);
        sb.append(",asset="); if (asset != null) sb.append(asset); else sb.append("null");
        if (orders != null)
        {
            boolean first = true;
            sb.append(",orders=[").append(orders.length).append("][");
            for (var item : orders)
            {
                sb.append(first ? "" : ",").append(item);
                first = false;
            }
            sb.append("]");
        }
        sb.append(")");
        return sb.toString();
    }

    public String toJson() { return protoex.fbe.Json.getEngine().toJson(this); }
    public static Account fromJson(String json) { return protoex.fbe.Json.getEngine().fromJson(json, Account.class); }
}
