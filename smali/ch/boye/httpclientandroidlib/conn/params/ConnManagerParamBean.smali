.class public Lch/boye/httpclientandroidlib/conn/params/ConnManagerParamBean;
.super Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;
.source "ConnManagerParamBean.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 48
    return-void
.end method


# virtual methods
.method public setConnectionsPerRoute(Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;)V
    .locals 2
    .parameter "connPerRoute"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.conn-manager.max-per-route"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 64
    return-void
.end method

.method public setMaxTotalConnections(I)V
    .locals 2
    .parameter "maxConnections"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.conn-manager.max-total"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 58
    return-void
.end method

.method public setTimeout(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 51
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.conn-manager.timeout"

    invoke-interface {v0, v1, p1, p2}, Lch/boye/httpclientandroidlib/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 52
    return-void
.end method
