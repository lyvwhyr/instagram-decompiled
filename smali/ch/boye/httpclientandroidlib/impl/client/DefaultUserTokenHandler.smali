.class public Lch/boye/httpclientandroidlib/impl/client/DefaultUserTokenHandler;
.super Ljava/lang/Object;
.source "DefaultUserTokenHandler.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/UserTokenHandler;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAuthPrincipal(Lch/boye/httpclientandroidlib/auth/AuthState;)Ljava/security/Principal;
    .locals 2
    .parameter "authState"

    .prologue
    .line 91
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isConnectionBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getUserToken(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
    .locals 3
    .parameter "context"

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 65
    const-string v0, "http.auth.target-scope"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/auth/AuthState;

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultUserTokenHandler;->getAuthPrincipal(Lch/boye/httpclientandroidlib/auth/AuthState;)Ljava/security/Principal;

    move-result-object v1

    .line 69
    if-nez v1, :cond_0

    .line 70
    const-string v0, "http.auth.proxy-scope"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/auth/AuthState;

    .line 72
    invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultUserTokenHandler;->getAuthPrincipal(Lch/boye/httpclientandroidlib/auth/AuthState;)Ljava/security/Principal;

    move-result-object v1

    .line 76
    :cond_0
    if-nez v1, :cond_1

    .line 77
    const-string v0, "http.connection"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;

    .line 79
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
