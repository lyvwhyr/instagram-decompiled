.class public Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;
.super Ljava/lang/Object;
.source "RequestProxyAuthentication.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpRequestInterceptor;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 64
    return-void
.end method


# virtual methods
.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 5
    .parameter "request"
    .parameter "context"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP request may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    if-nez p2, :cond_1

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP context may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_1
    const-string v1, "Proxy-Authorization"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    :cond_2
    :goto_0
    return-void

    .line 80
    :cond_3
    const-string v1, "http.connection"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;

    .line 82
    if-nez v1, :cond_4

    .line 83
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "HTTP connection not set in the context"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_4
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    const-string v1, "http.auth.proxy-scope"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/auth/AuthState;

    .line 94
    if-nez v1, :cond_5

    .line 95
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Proxy auth state not set in the context"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_5
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_2

    .line 104
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v3

    .line 105
    if-nez v3, :cond_6

    .line 106
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "User credentials not available"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_6
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScope()Lch/boye/httpclientandroidlib/auth/AuthScope;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isConnectionBased()Z

    move-result v1

    if-nez v1, :cond_2

    .line 112
    :cond_7
    :try_start_0
    instance-of v1, v2, Lch/boye/httpclientandroidlib/auth/ContextAwareAuthScheme;

    if-eqz v1, :cond_8

    .line 113
    move-object v0, v2

    check-cast v0, Lch/boye/httpclientandroidlib/auth/ContextAwareAuthScheme;

    move-object v1, v0

    invoke-interface {v1, v3, p1, p2}, Lch/boye/httpclientandroidlib/auth/ContextAwareAuthScheme;->authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 118
    :goto_1
    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Lch/boye/httpclientandroidlib/Header;)V
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    iget-object v2, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    iget-object v2, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy authentication error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->error(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 116
    :cond_8
    :try_start_1
    invoke-interface {v2, v3, p1}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/Header;
    :try_end_1
    .catch Lch/boye/httpclientandroidlib/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method
