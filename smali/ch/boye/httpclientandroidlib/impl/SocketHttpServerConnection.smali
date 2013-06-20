.class public Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;
.super Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;
.source "SocketHttpServerConnection.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpInetConnection;


# instance fields
.field private volatile open:Z

.field private volatile socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    .line 68
    return-void
.end method


# virtual methods
.method protected assertNotOpen()V
    .locals 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->open:Z

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    return-void
.end method

.method protected assertOpen()V
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->open:Z

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    return-void
.end method

.method protected bind(Ljava/net/Socket;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 2
    .parameter "socket"
    .parameter "params"

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    if-nez p2, :cond_1

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    .line 173
    invoke-static {p2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getSocketBufferSize(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result v0

    .line 175
    invoke-virtual {p0, p1, v0, p2}, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->createHttpDataReceiver(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, p2}, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->createHttpDataTransmitter(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->init(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->open:Z

    .line 181
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->open:Z

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 260
    :cond_0
    iput-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->open:Z

    .line 261
    iput-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->open:Z

    .line 262
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    .line 264
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->doFlush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :try_start_1
    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 271
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 278
    :goto_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    throw v0

    .line 268
    :catch_0
    move-exception v0

    goto :goto_1

    .line 272
    :catch_1
    move-exception v0

    goto :goto_2

    .line 274
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method protected createHttpDataReceiver(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
    .locals 1
    .parameter "socket"
    .parameter "buffersize"
    .parameter "params"

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->createSessionInputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createHttpDataTransmitter(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;
    .locals 1
    .parameter "socket"
    .parameter "buffersize"
    .parameter "params"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->createSessionOutputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createSessionInputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
    .locals 1
    .parameter "socket"
    .parameter "buffersize"
    .parameter "params"

    .prologue
    .line 121
    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;-><init>(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected createSessionOutputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;
    .locals 1
    .parameter "socket"
    .parameter "buffersize"
    .parameter "params"

    .prologue
    .line 143
    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/SocketOutputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/SocketOutputBuffer;-><init>(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 237
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 239
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 240
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->open:Z

    return v0
.end method

.method public setSocketTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 224
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->assertOpen()V

    .line 225
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 227
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->open:Z

    .line 250
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    .line 251
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 254
    :cond_0
    return-void
.end method
