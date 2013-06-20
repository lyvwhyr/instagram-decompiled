.class public Lch/boye/httpclientandroidlib/conn/params/ConnRouteParamBean;
.super Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;
.source "ConnRouteParamBean.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 51
    return-void
.end method


# virtual methods
.method public setDefaultProxy(Lch/boye/httpclientandroidlib/HttpHost;)V
    .locals 2
    .parameter "defaultProxy"

    .prologue
    .line 55
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.route.default-proxy"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 56
    return-void
.end method

.method public setForcedRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .locals 2
    .parameter "route"

    .prologue
    .line 65
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.route.forced-route"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 66
    return-void
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 60
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.route.local-address"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 61
    return-void
.end method
