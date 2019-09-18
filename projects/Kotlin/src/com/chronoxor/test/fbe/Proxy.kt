// Automatically generated by the Fast Binary Encoding compiler, do not modify!
// https://github.com/chronoxor/FastBinaryEncoding
// Source: test.fbe
// Version: 1.3.0.0

@file:Suppress("UnusedImport", "unused")

package com.chronoxor.test.fbe

// Fast Binary Encoding com.chronoxor.test proxy
@Suppress("MemberVisibilityCanBePrivate", "PrivatePropertyName", "UNUSED_PARAMETER")
open class Proxy : com.chronoxor.fbe.Receiver, IProxyListener
{
    // Imported proxy
    var protoProxy: com.chronoxor.proto.fbe.Proxy? = null

    // Proxy models accessors

    constructor() : super(false)
    {
        protoProxy = com.chronoxor.proto.fbe.Proxy(buffer)
    }

    constructor(buffer: com.chronoxor.fbe.Buffer) : super(buffer, false)
    {
        protoProxy = com.chronoxor.proto.fbe.Proxy(buffer)
    }

    override fun onReceive(type: Long, buffer: ByteArray, offset: Long, size: Long): Boolean
    {
        return onReceiveListener(this, type, buffer, offset, size)
    }

    open fun onReceiveListener(listener: IProxyListener, type: Long, buffer: ByteArray, offset: Long, size: Long): Boolean
    {

        if ((protoProxy != null) && protoProxy!!.onReceiveListener(listener, type, buffer, offset, size))
            return true

        return false
    }
}
