.class public Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;
.super Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;
.source "SocketInputBuffer.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/io/EofSensor;


# static fields
.field private static final SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;


# instance fields
.field private eof:Z

.field private final socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->SocketTimeoutExceptionClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 2
    .parameter "socket"
    .parameter "buffersize"
    .parameter "params"

    .prologue
    .line 95
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;-><init>()V

    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->eof:Z

    .line 101
    if-gez p2, :cond_1

    .line 102
    invoke-virtual {p1}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result p2

    .line 104
    :cond_1
    const/16 v0, 0x400

    if-ge p2, v0, :cond_2

    .line 105
    const/16 p2, 0x400

    .line 107
    :cond_2
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->init(Ljava/io/InputStream;ILch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 108
    return-void
.end method

.method private static SocketTimeoutExceptionClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 63
    :try_start_0
    const-string v0, "java.net.SocketTimeoutException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 70
    sget-object v0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected fillBuffer()I
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v1

    .line 112
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->eof:Z

    .line 113
    return v1

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataAvailable(I)Z
    .locals 4
    .parameter "timeout"

    .prologue
    .line 117
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->hasBufferedData()Z

    move-result v0

    .line 118
    if-nez v0, :cond_0

    .line 119
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v2

    .line 121
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 122
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->fillBuffer()I

    .line 123
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->hasBufferedData()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 129
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    :try_start_1
    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0

    :cond_1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0
.end method

.method public isEof()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->eof:Z

    return v0
.end method
