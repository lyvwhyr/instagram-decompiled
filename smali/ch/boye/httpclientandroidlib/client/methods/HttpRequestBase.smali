.class public abstract Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;
.super Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;
.source "HttpRequestBase.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;
.implements Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private abortLock:Ljava/util/concurrent/locks/Lock;

.field private aborted:Z

.field private connRequest:Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;

.field private releaseTrigger:Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    .line 69
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 141
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z

    .line 146
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->connRequest:Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;

    .line 147
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->releaseTrigger:Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    iget-object v2, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 156
    if-eqz v0, :cond_2

    .line 157
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;->abortRequest()V

    .line 159
    :cond_2
    if-eqz v1, :cond_0

    .line 161
    :try_start_2
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;->abortConnection()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;

    .line 175
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z

    .line 177
    iput-object v2, v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->releaseTrigger:Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;

    .line 178
    iput-object v2, v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->connRequest:Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;

    .line 179
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-static {v1}, Lch/boye/httpclientandroidlib/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/message/HeaderGroup;

    iput-object v1, v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    .line 180
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v1}, Lch/boye/httpclientandroidlib/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/params/HttpParams;

    iput-object v1, v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 181
    return-object v0
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getVersion(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
    .locals 4

    .prologue
    .line 88
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v2

    .line 90
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    .line 91
    const/4 v0, 0x0

    .line 92
    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 96
    :cond_1
    const-string v0, "/"

    .line 98
    :cond_2
    new-instance v3, Lch/boye/httpclientandroidlib/message/BasicRequestLine;

    invoke-direct {v3, v1, v0, v2}, Lch/boye/httpclientandroidlib/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    return-object v3
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public isAborted()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z

    return v0
.end method

.method public setConnectionRequest(Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;)V
    .locals 2
    .parameter "connRequest"

    .prologue
    .line 107
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 109
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Request already aborted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->releaseTrigger:Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;

    .line 114
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->connRequest:Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 118
    return-void
.end method

.method public setReleaseTrigger(Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;)V
    .locals 2
    .parameter "releaseTrigger"

    .prologue
    .line 122
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Request already aborted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->connRequest:Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;

    .line 129
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->releaseTrigger:Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 133
    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 102
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->uri:Ljava/net/URI;

    .line 103
    return-void
.end method
