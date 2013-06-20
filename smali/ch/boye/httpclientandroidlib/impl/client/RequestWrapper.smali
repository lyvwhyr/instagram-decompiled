.class public Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
.super Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;
.source "RequestWrapper.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private execCount:I

.field private method:Ljava/lang/String;

.field private final original:Lch/boye/httpclientandroidlib/HttpRequest;

.field private uri:Ljava/net/URI;

.field private version:Lch/boye/httpclientandroidlib/ProtocolVersion;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 5
    .parameter "request"

    .prologue
    .line 66
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;-><init>()V

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->original:Lch/boye/httpclientandroidlib/HttpRequest;

    .line 71
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 72
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setHeaders([Lch/boye/httpclientandroidlib/Header;)V

    .line 74
    instance-of v0, p1, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 75
    check-cast v0, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    .line 76
    check-cast p1, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    .end local p1
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->method:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->version:Lch/boye/httpclientandroidlib/ProtocolVersion;

    .line 89
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->execCount:I

    .line 90
    return-void

    .line 79
    .restart local p1
    :cond_1
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    .line 81
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->method:Ljava/lang/String;

    .line 87
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->version:Lch/boye/httpclientandroidlib/ProtocolVersion;

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    new-instance v2, Lch/boye/httpclientandroidlib/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid request URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getExecCount()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->execCount:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal()Lch/boye/httpclientandroidlib/HttpRequest;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->original:Lch/boye/httpclientandroidlib/HttpRequest;

    return-object v0
.end method

.method public getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->version:Lch/boye/httpclientandroidlib/ProtocolVersion;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getVersion(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->version:Lch/boye/httpclientandroidlib/ProtocolVersion;

    .line 113
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->version:Lch/boye/httpclientandroidlib/ProtocolVersion;

    return-object v0
.end method

.method public getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
    .locals 4

    .prologue
    .line 130
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v2

    .line 132
    const/4 v0, 0x0

    .line 133
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    if-eqz v3, :cond_0

    .line 134
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 137
    :cond_1
    const-string v0, "/"

    .line 139
    :cond_2
    new-instance v3, Lch/boye/httpclientandroidlib/message/BasicRequestLine;

    invoke-direct {v3, v1, v0, v2}, Lch/boye/httpclientandroidlib/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    return-object v3
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public incrementExecCount()V
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->execCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->execCount:I

    .line 164
    return-void
.end method

.method public isAborted()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public resetHeaders()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->clear()V

    .line 95
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->original:Lch/boye/httpclientandroidlib/HttpRequest;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setHeaders([Lch/boye/httpclientandroidlib/Header;)V

    .line 96
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 2
    .parameter "method"

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->method:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setProtocolVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 117
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->version:Lch/boye/httpclientandroidlib/ProtocolVersion;

    .line 118
    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 126
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    .line 127
    return-void
.end method
