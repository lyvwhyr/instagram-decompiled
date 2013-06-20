.class public final Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
.super Ljava/lang/Object;
.source "ImmutableHttpProcessor.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/protocol/HttpProcessor;


# instance fields
.field private final requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

.field private final responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpRequestInterceptorList;Lch/boye/httpclientandroidlib/protocol/HttpResponseInterceptorList;)V
    .locals 5
    .parameter "requestInterceptors"
    .parameter "responseInterceptors"

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/protocol/HttpRequestInterceptorList;->getRequestInterceptorCount()I

    move-result v2

    .line 78
    new-array v1, v2, [Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    iput-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    move v1, v0

    .line 79
    :goto_0
    if-ge v1, v2, :cond_1

    .line 80
    iget-object v3, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/protocol/HttpRequestInterceptorList;->getRequestInterceptor(I)Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    move-result-object v4

    aput-object v4, v3, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    new-array v1, v0, [Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    iput-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    .line 85
    :cond_1
    if-eqz p2, :cond_2

    .line 86
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/protocol/HttpResponseInterceptorList;->getResponseInterceptorCount()I

    move-result v1

    .line 87
    new-array v2, v1, [Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    iput-object v2, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    .line 88
    :goto_1
    if-ge v0, v1, :cond_3

    .line 89
    iget-object v2, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpResponseInterceptorList;->getResponseInterceptor(I)Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    move-result-object v3

    aput-object v3, v2, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_2
    new-array v0, v0, [Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    .line 94
    :cond_3
    return-void
.end method

.method public constructor <init>([Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V
    .locals 1
    .parameter "requestInterceptors"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;-><init>([Lch/boye/httpclientandroidlib/HttpRequestInterceptor;[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    .line 98
    return-void
.end method

.method public constructor <init>([Lch/boye/httpclientandroidlib/HttpRequestInterceptor;[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
    .locals 5
    .parameter "requestInterceptors"
    .parameter "responseInterceptors"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    array-length v2, p1

    .line 54
    new-array v1, v2, [Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    iput-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    move v1, v0

    .line 55
    :goto_0
    if-ge v1, v2, :cond_1

    .line 56
    iget-object v3, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    aget-object v4, p1, v1

    aput-object v4, v3, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-array v1, v0, [Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    iput-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    .line 61
    :cond_1
    if-eqz p2, :cond_2

    .line 62
    array-length v1, p2

    .line 63
    new-array v2, v1, [Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    iput-object v2, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    .line 64
    :goto_1
    if-ge v0, v1, :cond_3

    .line 65
    iget-object v2, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    aget-object v3, p2, v0

    aput-object v3, v2, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_2
    new-array v0, v0, [Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    .line 70
    :cond_3
    return-void
.end method

.method public constructor <init>([Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
    .locals 1
    .parameter "responseInterceptors"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;-><init>([Lch/boye/httpclientandroidlib/HttpRequestInterceptor;[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    .line 102
    return-void
.end method


# virtual methods
.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 2
    .parameter "request"
    .parameter "context"

    .prologue
    .line 107
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lch/boye/httpclientandroidlib/HttpRequestInterceptor;->process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 2
    .parameter "response"
    .parameter "context"

    .prologue
    .line 115
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lch/boye/httpclientandroidlib/HttpResponseInterceptor;->process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method
