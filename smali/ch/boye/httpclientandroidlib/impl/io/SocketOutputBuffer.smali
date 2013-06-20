.class public Lch/boye/httpclientandroidlib/impl/io/SocketOutputBuffer;
.super Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;
.source "SocketOutputBuffer.java"


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 2
    .parameter "socket"
    .parameter "buffersize"
    .parameter "params"

    .prologue
    .line 64
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;-><init>()V

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    if-gez p2, :cond_1

    .line 69
    invoke-virtual {p1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result p2

    .line 71
    :cond_1
    const/16 v0, 0x400

    if-ge p2, v0, :cond_2

    .line 72
    const/16 p2, 0x400

    .line 74
    :cond_2
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/SocketOutputBuffer;->init(Ljava/io/OutputStream;ILch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 75
    return-void
.end method
