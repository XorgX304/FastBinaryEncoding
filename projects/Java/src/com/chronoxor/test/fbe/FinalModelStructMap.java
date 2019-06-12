// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: test.fbe
// Version: 1.3.0.0

package com.chronoxor.test.fbe;

// Fast Binary Encoding StructMap final model
public final class FinalModelStructMap extends com.chronoxor.fbe.FinalModel
{
    public final FinalModelMapInt32Byte f1;
    public final FinalModelMapInt32OptionalByte f2;
    public final FinalModelMapInt32Bytes f3;
    public final FinalModelMapInt32OptionalBytes f4;
    public final FinalModelMapInt32EnumSimple f5;
    public final FinalModelMapInt32OptionalEnumSimple f6;
    public final FinalModelMapInt32FlagsSimple f7;
    public final FinalModelMapInt32OptionalFlagsSimple f8;
    public final FinalModelMapInt32StructSimple f9;
    public final FinalModelMapInt32OptionalStructSimple f10;

    public FinalModelStructMap(com.chronoxor.fbe.Buffer buffer, long offset)
    {
        super(buffer, offset);
        f1 = new FinalModelMapInt32Byte(buffer, 0);
        f2 = new FinalModelMapInt32OptionalByte(buffer, 0);
        f3 = new FinalModelMapInt32Bytes(buffer, 0);
        f4 = new FinalModelMapInt32OptionalBytes(buffer, 0);
        f5 = new FinalModelMapInt32EnumSimple(buffer, 0);
        f6 = new FinalModelMapInt32OptionalEnumSimple(buffer, 0);
        f7 = new FinalModelMapInt32FlagsSimple(buffer, 0);
        f8 = new FinalModelMapInt32OptionalFlagsSimple(buffer, 0);
        f9 = new FinalModelMapInt32StructSimple(buffer, 0);
        f10 = new FinalModelMapInt32OptionalStructSimple(buffer, 0);
    }

    // Get the allocation size
    public long fbeAllocationSize(com.chronoxor.test.StructMap fbeValue)
    {
        long fbeResult = 0
            + f1.fbeAllocationSize(fbeValue.f1)
            + f2.fbeAllocationSize(fbeValue.f2)
            + f3.fbeAllocationSize(fbeValue.f3)
            + f4.fbeAllocationSize(fbeValue.f4)
            + f5.fbeAllocationSize(fbeValue.f5)
            + f6.fbeAllocationSize(fbeValue.f6)
            + f7.fbeAllocationSize(fbeValue.f7)
            + f8.fbeAllocationSize(fbeValue.f8)
            + f9.fbeAllocationSize(fbeValue.f9)
            + f10.fbeAllocationSize(fbeValue.f10)
            ;
        return fbeResult;
    }

    // Get the final type
    public static final long fbeTypeConst = 140;
    public long fbeType() { return fbeTypeConst; }

    // Check if the struct value is valid
    @Override
    public long verify()
    {
        _buffer.shift(fbeOffset());
        long fbeResult = verifyFields();
        _buffer.unshift(fbeOffset());
        return fbeResult;
    }

    // Check if the struct fields are valid
    public long verifyFields()
    {
        long fbeCurrentOffset = 0;
        long fbeFieldSize = 0;

        f1.fbeOffset(fbeCurrentOffset);
        fbeFieldSize = f1.verify();
        if (fbeFieldSize == Long.MAX_VALUE)
            return Long.MAX_VALUE;
        fbeCurrentOffset += fbeFieldSize;

        f2.fbeOffset(fbeCurrentOffset);
        fbeFieldSize = f2.verify();
        if (fbeFieldSize == Long.MAX_VALUE)
            return Long.MAX_VALUE;
        fbeCurrentOffset += fbeFieldSize;

        f3.fbeOffset(fbeCurrentOffset);
        fbeFieldSize = f3.verify();
        if (fbeFieldSize == Long.MAX_VALUE)
            return Long.MAX_VALUE;
        fbeCurrentOffset += fbeFieldSize;

        f4.fbeOffset(fbeCurrentOffset);
        fbeFieldSize = f4.verify();
        if (fbeFieldSize == Long.MAX_VALUE)
            return Long.MAX_VALUE;
        fbeCurrentOffset += fbeFieldSize;

        f5.fbeOffset(fbeCurrentOffset);
        fbeFieldSize = f5.verify();
        if (fbeFieldSize == Long.MAX_VALUE)
            return Long.MAX_VALUE;
        fbeCurrentOffset += fbeFieldSize;

        f6.fbeOffset(fbeCurrentOffset);
        fbeFieldSize = f6.verify();
        if (fbeFieldSize == Long.MAX_VALUE)
            return Long.MAX_VALUE;
        fbeCurrentOffset += fbeFieldSize;

        f7.fbeOffset(fbeCurrentOffset);
        fbeFieldSize = f7.verify();
        if (fbeFieldSize == Long.MAX_VALUE)
            return Long.MAX_VALUE;
        fbeCurrentOffset += fbeFieldSize;

        f8.fbeOffset(fbeCurrentOffset);
        fbeFieldSize = f8.verify();
        if (fbeFieldSize == Long.MAX_VALUE)
            return Long.MAX_VALUE;
        fbeCurrentOffset += fbeFieldSize;

        f9.fbeOffset(fbeCurrentOffset);
        fbeFieldSize = f9.verify();
        if (fbeFieldSize == Long.MAX_VALUE)
            return Long.MAX_VALUE;
        fbeCurrentOffset += fbeFieldSize;

        f10.fbeOffset(fbeCurrentOffset);
        fbeFieldSize = f10.verify();
        if (fbeFieldSize == Long.MAX_VALUE)
            return Long.MAX_VALUE;
        fbeCurrentOffset += fbeFieldSize;

        return fbeCurrentOffset;
    }

    // Get the struct value
    public com.chronoxor.test.StructMap get(com.chronoxor.fbe.Size fbeSize) { return get(fbeSize, new com.chronoxor.test.StructMap()); }
    public com.chronoxor.test.StructMap get(com.chronoxor.fbe.Size fbeSize, com.chronoxor.test.StructMap fbeValue)
    {
        _buffer.shift(fbeOffset());
        fbeSize.value = getFields(fbeValue);
        _buffer.unshift(fbeOffset());
        return fbeValue;
    }

    // Get the struct fields values
    public long getFields(com.chronoxor.test.StructMap fbeValue)
    {
        long fbeCurrentOffset = 0;
        long fbeCurrentSize = 0;
        var fbeFieldSize = new com.chronoxor.fbe.Size(0);

        f1.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f1.get(fbeValue.f1);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f2.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f2.get(fbeValue.f2);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f3.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f3.get(fbeValue.f3);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f4.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f4.get(fbeValue.f4);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f5.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f5.get(fbeValue.f5);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f6.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f6.get(fbeValue.f6);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f7.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f7.get(fbeValue.f7);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f8.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f8.get(fbeValue.f8);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f9.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f9.get(fbeValue.f9);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f10.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f10.get(fbeValue.f10);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        return fbeCurrentSize;
    }

    // Set the struct value
    public long set(com.chronoxor.test.StructMap fbeValue)
    {
        _buffer.shift(fbeOffset());
        long fbeSize = setFields(fbeValue);
        _buffer.unshift(fbeOffset());
        return fbeSize;
    }

    // Set the struct fields values
    public long setFields(com.chronoxor.test.StructMap fbeValue)
    {
        long fbeCurrentOffset = 0;
        long fbeCurrentSize = 0;
        var fbeFieldSize = new com.chronoxor.fbe.Size();

        f1.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f1.set(fbeValue.f1);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f2.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f2.set(fbeValue.f2);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f3.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f3.set(fbeValue.f3);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f4.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f4.set(fbeValue.f4);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f5.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f5.set(fbeValue.f5);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f6.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f6.set(fbeValue.f6);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f7.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f7.set(fbeValue.f7);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f8.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f8.set(fbeValue.f8);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f9.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f9.set(fbeValue.f9);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        f10.fbeOffset(fbeCurrentOffset);
        fbeFieldSize.value = f10.set(fbeValue.f10);
        fbeCurrentOffset += fbeFieldSize.value;
        fbeCurrentSize += fbeFieldSize.value;

        return fbeCurrentSize;
    }
}