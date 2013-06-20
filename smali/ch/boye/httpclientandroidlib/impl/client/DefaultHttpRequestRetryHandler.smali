.class public Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpRequestRetryHandler.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final requestSentRetryEnabled:Z

.field private final retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 74
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .parameter "retryCount"
    .parameter "requestSentRetryEnabled"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    .line 66
    iput-boolean p2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    .line 67
    return-void
.end method

.method private handleAsIdempotent(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 1
    .parameter "request"

    .prologue
    .line 146
    instance-of v0, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getRetryCount()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    return v0
.end method

.method public isRequestSentRetryEnabled()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    return v0
.end method

.method public retryRequest(Ljava/io/IOException;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .locals 3
    .parameter "exception"
    .parameter "executionCount"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exception parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    if-nez p3, :cond_1

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    if-le p2, v0, :cond_2

    move v0, v1

    .line 127
    :goto_0
    return v0

    .line 93
    :cond_2
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_3

    move v0, v1

    .line 95
    goto :goto_0

    .line 97
    :cond_3
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_4

    move v0, v1

    .line 99
    goto :goto_0

    .line 101
    :cond_4
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_5

    move v0, v1

    .line 103
    goto :goto_0

    .line 105
    :cond_5
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_6

    move v0, v1

    .line 107
    goto :goto_0

    .line 110
    :cond_6
    const-string v0, "http.request"

    invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpRequest;

    .line 112
    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->handleAsIdempotent(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 114
    goto :goto_0

    .line 117
    :cond_7
    const-string v0, "http.request_sent"

    invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 119
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 121
    :goto_1
    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    if-eqz v0, :cond_a

    :cond_8
    move v0, v2

    .line 124
    goto :goto_0

    :cond_9
    move v0, v1

    .line 119
    goto :goto_1

    :cond_a
    move v0, v1

    .line 127
    goto :goto_0
.end method
