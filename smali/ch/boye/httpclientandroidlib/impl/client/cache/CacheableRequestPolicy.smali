.class Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;
.super Ljava/lang/Object;
.source "CacheableRequestPolicy.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    return-void
.end method


# virtual methods
.method public isServableFromCache(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 10
    .parameter "request"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/RequestLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v2

    .line 60
    sget-object v3, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {v3, v2}, Lch/boye/httpclientandroidlib/HttpVersion;->compareToVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "non-HTTP/1.1 request was not serveable from cache"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 93
    :goto_0
    return v0

    .line 65
    :cond_0
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "non-GET request was not serveable from cache"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_1
    const-string v1, "Pragma"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    .line 71
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "request with Pragma header was not serveable from cache"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_2
    const-string v1, "Cache-Control"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v3

    .line 76
    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_6

    aget-object v1, v3, v2

    .line 77
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v5

    array-length v6, v5

    move v1, v0

    :goto_2
    if-ge v1, v6, :cond_5

    aget-object v7, v5, v1

    .line 78
    const-string v8, "no-store"

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 80
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Request with no-store was not serveable from cache"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :cond_3
    const-string v8, "no-cache"

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 86
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Request with no-cache was not serveable from cache"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 76
    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 92
    :cond_6
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Request was serveable from cache"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 93
    const/4 v0, 0x1

    goto :goto_0
.end method
