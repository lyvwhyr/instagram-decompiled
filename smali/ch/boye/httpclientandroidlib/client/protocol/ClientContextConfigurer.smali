.class public Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;
.super Ljava/lang/Object;
.source "ClientContextConfigurer.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/protocol/ClientContext;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final context:Lch/boye/httpclientandroidlib/protocol/HttpContext;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    .line 55
    return-void
.end method


# virtual methods
.method public setAuthSchemePref(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    const-string v1, "http.auth.scheme-pref"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public setAuthSchemeRegistry(Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;)V
    .locals 2
    .parameter "registry"

    .prologue
    .line 62
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    const-string v1, "http.authscheme-registry"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public setCookieSpecRegistry(Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;)V
    .locals 2
    .parameter "registry"

    .prologue
    .line 58
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    const-string v1, "http.cookiespec-registry"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public setCookieStore(Lch/boye/httpclientandroidlib/client/CookieStore;)V
    .locals 2
    .parameter "store"

    .prologue
    .line 66
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public setCredentialsProvider(Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 70
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    const-string v1, "http.auth.credentials-provider"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    return-void
.end method
