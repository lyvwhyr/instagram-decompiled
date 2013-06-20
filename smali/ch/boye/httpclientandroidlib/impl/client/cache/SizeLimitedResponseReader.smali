.class Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;
.super Ljava/lang/Object;
.source "SizeLimitedResponseReader.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private consumed:Z

.field private instream:Ljava/io/InputStream;

.field private limit:Lch/boye/httpclientandroidlib/client/cache/InputLimit;

.field private final maxResponseSizeBytes:J

.field private final request:Lch/boye/httpclientandroidlib/HttpRequest;

.field private resource:Lch/boye/httpclientandroidlib/client/cache/Resource;

.field private final resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

.field private final response:Lch/boye/httpclientandroidlib/HttpResponse;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;JLch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 0
    .parameter "resourceFactory"
    .parameter "maxResponseSizeBytes"
    .parameter "request"
    .parameter "response"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

    .line 68
    iput-wide p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->maxResponseSizeBytes:J

    .line 69
    iput-object p4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->request:Lch/boye/httpclientandroidlib/HttpRequest;

    .line 70
    iput-object p5, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->response:Lch/boye/httpclientandroidlib/HttpResponse;

    .line 71
    return-void
.end method

.method private doConsume()V
    .locals 4

    .prologue
    .line 92
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->ensureNotConsumed()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->consumed:Z

    .line 95
    new-instance v0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;

    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->maxResponseSizeBytes:J

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/client/cache/InputLimit;-><init>(J)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->limit:Lch/boye/httpclientandroidlib/client/cache/InputLimit;

    .line 97
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->response:Lch/boye/httpclientandroidlib/HttpResponse;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    .line 98
    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->request:Lch/boye/httpclientandroidlib/HttpRequest;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->instream:Ljava/io/InputStream;

    .line 103
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->instream:Ljava/io/InputStream;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->limit:Lch/boye/httpclientandroidlib/client/cache/InputLimit;

    invoke-interface {v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;->generate(Ljava/lang/String;Ljava/io/InputStream;Lch/boye/httpclientandroidlib/client/cache/InputLimit;)Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;

    goto :goto_0
.end method

.method private ensureConsumed()V
    .locals 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->consumed:Z

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response has not been consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    return-void
.end method

.method private ensureNotConsumed()V
    .locals 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->consumed:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response has already been consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method getReconstructedResponse()Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 4

    .prologue
    .line 117
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->ensureConsumed()V

    .line 118
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->response:Lch/boye/httpclientandroidlib/HttpResponse;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;)V

    .line 119
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->response:Lch/boye/httpclientandroidlib/HttpResponse;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->setHeaders([Lch/boye/httpclientandroidlib/Header;)V

    .line 121
    new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->instream:Ljava/io/InputStream;

    invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;-><init>(Lch/boye/httpclientandroidlib/client/cache/Resource;Ljava/io/InputStream;)V

    .line 122
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->response:Lch/boye/httpclientandroidlib/HttpResponse;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    .line 123
    if-eqz v2, :cond_0

    .line 124
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;

    move-result-object v3

    invoke-virtual {v1, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->setContentType(Lch/boye/httpclientandroidlib/Header;)V

    .line 125
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentEncoding()Lch/boye/httpclientandroidlib/Header;

    move-result-object v3

    invoke-virtual {v1, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->setContentEncoding(Lch/boye/httpclientandroidlib/Header;)V

    .line 126
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->isChunked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->setChunked(Z)V

    .line 128
    :cond_0
    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 129
    return-object v0
.end method

.method getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->ensureConsumed()V

    .line 113
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;

    return-object v0
.end method

.method isLimitReached()Z
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->ensureConsumed()V

    .line 108
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->limit:Lch/boye/httpclientandroidlib/client/cache/InputLimit;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->isReached()Z

    move-result v0

    return v0
.end method

.method protected readResponse()V
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->consumed:Z

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->doConsume()V

    .line 77
    :cond_0
    return-void
.end method
