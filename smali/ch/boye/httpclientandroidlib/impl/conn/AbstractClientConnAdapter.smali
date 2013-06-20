.class public abstract Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;
.super Ljava/lang/Object;
.source "AbstractClientConnAdapter.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
.implements Lch/boye/httpclientandroidlib/protocol/HttpContext;


# instance fields
.field private volatile connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

.field private volatile duration:J

.field private volatile markedReusable:Z

.field private volatile released:Z

.field private volatile wrappedConnection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;


# direct methods
.method protected constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V
    .locals 2
    .parameter "mgr"
    .parameter "conn"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    .line 103
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->wrappedConnection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    .line 104
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    .line 105
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z

    .line 106
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J

    .line 107
    return-void
.end method


# virtual methods
.method public declared-synchronized abortConnection()V
    .locals 4

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 316
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z

    .line 317
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :try_start_2
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->shutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 322
    :goto_1
    :try_start_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->releaseConnection(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 320
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected final assertNotAborted()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "Connection has been shut down"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    return-void
.end method

.method protected final assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V
    .locals 1
    .parameter "wrappedConn"

    .prologue
    .line 153
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 154
    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 156
    :cond_1
    return-void
.end method

.method protected declared-synchronized detach()V
    .locals 2

    .prologue
    .line 114
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->wrappedConnection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    .line 116
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 196
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 197
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->flush()V

    .line 198
    return-void
.end method

.method public declared-synchronized getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "id"

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 329
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 330
    instance-of v1, v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 331
    check-cast v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 333
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 240
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 241
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 246
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 247
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getLocalPort()I

    move-result v0

    return v0
.end method

.method protected getManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    return-object v0
.end method

.method public getMetrics()Lch/boye/httpclientandroidlib/HttpConnectionMetrics;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 190
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 191
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getMetrics()Lch/boye/httpclientandroidlib/HttpConnectionMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 252
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 253
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 258
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 259
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 270
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 271
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    :goto_0
    return-object v1

    .line 275
    :cond_0
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 276
    instance-of v2, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_1

    .line 277
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 279
    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public getSocketTimeout()I
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 184
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 185
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getSocketTimeout()I

    move-result v0

    return v0
.end method

.method protected getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->wrappedConnection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    return-object v0
.end method

.method public isMarkedReusable()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 160
    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    goto :goto_0
.end method

.method protected isReleased()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z

    return v0
.end method

.method public isResponseAvailable(I)Z
    .locals 1
    .parameter "timeout"

    .prologue
    .line 201
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 202
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 203
    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isResponseAvailable(I)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 264
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 265
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isStale()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 167
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_0

    .line 173
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isStale()Z

    move-result v0

    goto :goto_0
.end method

.method public markReusable()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    .line 284
    return-void
.end method

.method public receiveResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 208
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 209
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 210
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    .line 211
    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->receiveResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 212
    return-void
.end method

.method public receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 217
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 218
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    .line 219
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized releaseConnection()V
    .locals 4

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 306
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z

    .line 307
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->releaseConnection(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "id"

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 339
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 340
    instance-of v1, v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 341
    check-cast v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 343
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 224
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 225
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 226
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    .line 227
    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->sendRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V

    .line 228
    return-void
.end method

.method public sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 232
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 233
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 234
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    .line 235
    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V

    .line 236
    return-void
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "id"
    .parameter "obj"

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 349
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 350
    instance-of v1, v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 351
    check-cast v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :cond_0
    monitor-exit p0

    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIdleDuration(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .parameter "duration"
    .parameter "unit"

    .prologue
    .line 295
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 296
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J

    goto :goto_0
.end method

.method public setSocketTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 177
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 179
    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->setSocketTimeout(I)V

    .line 180
    return-void
.end method

.method public unmarkReusable()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    .line 288
    return-void
.end method
