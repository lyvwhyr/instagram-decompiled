.class public Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;
.super Ljava/lang/Object;
.source "HttpRequestHandlerRegistry.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;


# instance fields
.field private final matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;

    .line 55
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;
    .locals 1
    .parameter "requestURI"

    .prologue
    .line 92
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;

    return-object v0
.end method

.method protected matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "pattern"
    .parameter "requestUri"

    .prologue
    .line 99
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public register(Ljava/lang/String;Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;)V
    .locals 2
    .parameter "pattern"
    .parameter "handler"

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI request pattern may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    if-nez p2, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request handler may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public setHandlers(Ljava/util/Map;)V
    .locals 1
    .parameter "map"

    .prologue
    .line 88
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->setObjects(Ljava/util/Map;)V

    .line 89
    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 1
    .parameter "pattern"

    .prologue
    .line 80
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->unregister(Ljava/lang/String;)V

    .line 81
    return-void
.end method
