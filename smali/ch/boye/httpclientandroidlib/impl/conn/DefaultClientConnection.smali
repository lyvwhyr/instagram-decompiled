.class public Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;
.super Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;
.source "DefaultClientConnection.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
.implements Lch/boye/httpclientandroidlib/protocol/HttpContext;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private connSecure:Z

.field public headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private volatile shutdown:Z

.field private volatile socket:Ljava/net/Socket;

.field private targetHost:Lch/boye/httpclientandroidlib/HttpHost;

.field public wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;-><init>()V

    .line 74
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 75
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "ch.boye.httpclientandroidlib.headers"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 76
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "ch.boye.httpclientandroidlib.wire"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->attributes:Ljava/util/Map;

    .line 96
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 164
    :try_start_0
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->close()V

    .line 165
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Connection closed"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected createResponseParser(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageParser;
    .locals 2
    .parameter "buffer"
    .parameter "responseFactory"
    .parameter "params"

    .prologue
    .line 219
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected createSessionInputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
    .locals 4
    .parameter "socket"
    .parameter "buffersize"
    .parameter "params"

    .prologue
    .line 176
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 177
    const/16 p2, 0x2000

    .line 179
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->createSessionInputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    move-result-object v1

    .line 183
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;

    new-instance v2, Lch/boye/httpclientandroidlib/impl/conn/Wire;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/impl/conn/Wire;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;)V

    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getHttpElementCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;Ljava/lang/String;)V

    .line 189
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected createSessionOutputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;
    .locals 4
    .parameter "socket"
    .parameter "buffersize"
    .parameter "params"

    .prologue
    .line 197
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 198
    const/16 p2, 0x2000

    .line 200
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->createSessionOutputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    move-result-object v1

    .line 204
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;

    new-instance v2, Lch/boye/httpclientandroidlib/impl/conn/Wire;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/impl/conn/Wire;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;)V

    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getHttpElementCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;Ljava/lang/String;)V

    .line 210
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "id"

    .prologue
    .line 277
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public final getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    return-object v0
.end method

.method public final isSecure()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->connSecure:Z

    return v0
.end method

.method public openCompleted(ZLch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 2
    .parameter "secure"
    .parameter "params"

    .prologue
    .line 125
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->assertNotOpen()V

    .line 126
    if-nez p2, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->connSecure:Z

    .line 131
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p0, v0, p2}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->bind(Ljava/net/Socket;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 132
    return-void
.end method

.method public opening(Ljava/net/Socket;Lch/boye/httpclientandroidlib/HttpHost;)V
    .locals 2
    .parameter "sock"
    .parameter "target"

    .prologue
    .line 112
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->assertNotOpen()V

    .line 113
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    .line 114
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    .line 117
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->shutdown:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 120
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection already shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    return-void
.end method

.method public receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 8

    .prologue
    .line 247
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    .line 248
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiving response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 253
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    .line 254
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 255
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_1
    return-object v1
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "id"

    .prologue
    .line 281
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 7
    .parameter "request"

    .prologue
    .line 263
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 266
    :cond_0
    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V

    .line 267
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 269
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 270
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 271
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "id"
    .parameter "obj"

    .prologue
    .line 285
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->shutdown:Z

    .line 151
    :try_start_0
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->shutdown()V

    .line 152
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Connection shut down"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "I/O error shutting down connection"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public update(Ljava/net/Socket;Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 2
    .parameter "sock"
    .parameter "target"
    .parameter "secure"
    .parameter "params"

    .prologue
    .line 227
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->assertOpen()V

    .line 228
    if-nez p2, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    if-nez p4, :cond_1

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_1
    if-eqz p1, :cond_2

    .line 238
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    .line 239
    invoke-virtual {p0, p1, p4}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->bind(Ljava/net/Socket;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 241
    :cond_2
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    .line 242
    iput-boolean p3, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->connSecure:Z

    .line 243
    return-void
.end method
