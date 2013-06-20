.class public Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;
.super Ljava/lang/Object;
.source "ResponseAuthCache.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpResponseInterceptor;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 62
    return-void
.end method

.method private cache(Lch/boye/httpclientandroidlib/client/AuthCache;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthState;)V
    .locals 4
    .parameter "authCache"
    .parameter "host"
    .parameter "authState"

    .prologue
    .line 110
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v0

    .line 111
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScope()Lch/boye/httpclientandroidlib/auth/AuthScope;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 117
    :cond_0
    invoke-interface {p1, p2, v0}, Lch/boye/httpclientandroidlib/client/AuthCache;->put(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthScheme;)V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    invoke-interface {p1, p2}, Lch/boye/httpclientandroidlib/client/AuthCache;->remove(Lch/boye/httpclientandroidlib/HttpHost;)V

    goto :goto_0
.end method

.method private isCachable(Lch/boye/httpclientandroidlib/auth/AuthState;)Z
    .locals 3
    .parameter "authState"

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isComplete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v2, "Basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Digest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 4
    .parameter "response"
    .parameter "context"

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-nez p2, :cond_1

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    const-string v0, "http.auth.auth-cache"

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/client/AuthCache;

    .line 74
    const-string v1, "http.target_host"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/HttpHost;

    .line 75
    const-string v2, "http.auth.target-scope"

    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/boye/httpclientandroidlib/auth/AuthState;

    .line 76
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 77
    invoke-direct {p0, v2}, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;->isCachable(Lch/boye/httpclientandroidlib/auth/AuthState;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 78
    if-nez v0, :cond_2

    .line 79
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/BasicAuthCache;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/BasicAuthCache;-><init>()V

    .line 80
    const-string v3, "http.auth.auth-cache"

    invoke-interface {p2, v3, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    :cond_2
    invoke-direct {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;->cache(Lch/boye/httpclientandroidlib/client/AuthCache;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthState;)V

    move-object v2, v0

    .line 86
    :goto_0
    const-string v0, "http.proxy_host"

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpHost;

    .line 87
    const-string v1, "http.auth.proxy-scope"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/auth/AuthState;

    .line 88
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 89
    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;->isCachable(Lch/boye/httpclientandroidlib/auth/AuthState;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    if-nez v2, :cond_3

    .line 91
    new-instance v2, Lch/boye/httpclientandroidlib/impl/client/BasicAuthCache;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/client/BasicAuthCache;-><init>()V

    .line 92
    const-string v3, "http.auth.auth-cache"

    invoke-interface {p2, v3, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_3
    invoke-direct {p0, v2, v0, v1}, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;->cache(Lch/boye/httpclientandroidlib/client/AuthCache;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthState;)V

    .line 97
    :cond_4
    return-void

    :cond_5
    move-object v2, v0

    goto :goto_0
.end method
