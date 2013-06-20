.class public Lch/boye/httpclientandroidlib/client/params/ClientParamBean;
.super Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;
.source "ClientParamBean.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 52
    return-void
.end method


# virtual methods
.method public setAllowCircularRedirects(Z)V
    .locals 2
    .parameter "allow"

    .prologue
    .line 76
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.protocol.allow-circular-redirects"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 77
    return-void
.end method

.method public setConnectionManagerFactory(Lch/boye/httpclientandroidlib/conn/ClientConnectionManagerFactory;)V
    .locals 2
    .parameter "factory"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.connection-manager.factory-object"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 61
    return-void
.end method

.method public setConnectionManagerFactoryClassName(Ljava/lang/String;)V
    .locals 2
    .parameter "factory"

    .prologue
    .line 55
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.connection-manager.factory-class-name"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 56
    return-void
.end method

.method public setCookiePolicy(Ljava/lang/String;)V
    .locals 2
    .parameter "policy"

    .prologue
    .line 84
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.protocol.cookie-policy"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 85
    return-void
.end method

.method public setDefaultHeaders(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, headers:Ljava/util/Collection;,"Ljava/util/Collection<Lch/boye/httpclientandroidlib/Header;>;"
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.default-headers"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 93
    return-void
.end method

.method public setDefaultHost(Lch/boye/httpclientandroidlib/HttpHost;)V
    .locals 2
    .parameter "host"

    .prologue
    .line 96
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.default-host"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 97
    return-void
.end method

.method public setHandleAuthentication(Z)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 80
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.protocol.handle-authentication"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 81
    return-void
.end method

.method public setHandleRedirects(Z)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 64
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.protocol.handle-redirects"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 65
    return-void
.end method

.method public setMaxRedirects(I)V
    .locals 2
    .parameter "maxRedirects"

    .prologue
    .line 72
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.protocol.max-redirects"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 73
    return-void
.end method

.method public setRejectRelativeRedirect(Z)V
    .locals 2
    .parameter "reject"

    .prologue
    .line 68
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.protocol.reject-relative-redirect"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 69
    return-void
.end method

.method public setVirtualHost(Lch/boye/httpclientandroidlib/HttpHost;)V
    .locals 2
    .parameter "host"

    .prologue
    .line 88
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.virtual-host"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 89
    return-void
.end method
