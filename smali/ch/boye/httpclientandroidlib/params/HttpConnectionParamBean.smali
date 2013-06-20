.class public Lch/boye/httpclientandroidlib/params/HttpConnectionParamBean;
.super Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;
.source "HttpConnectionParamBean.java"


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 41
    return-void
.end method


# virtual methods
.method public setConnectionTimeout(I)V
    .locals 1
    .parameter "connectionTimeout"

    .prologue
    .line 60
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpConnectionParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 61
    return-void
.end method

.method public setLinger(I)V
    .locals 1
    .parameter "linger"

    .prologue
    .line 56
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpConnectionParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setLinger(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 57
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .parameter "soTimeout"

    .prologue
    .line 44
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpConnectionParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 45
    return-void
.end method

.method public setSocketBufferSize(I)V
    .locals 1
    .parameter "socketBufferSize"

    .prologue
    .line 52
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpConnectionParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setSocketBufferSize(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 53
    return-void
.end method

.method public setStaleCheckingEnabled(Z)V
    .locals 1
    .parameter "staleCheckingEnabled"

    .prologue
    .line 64
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpConnectionParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setStaleCheckingEnabled(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V

    .line 65
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .parameter "tcpNoDelay"

    .prologue
    .line 48
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpConnectionParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V

    .line 49
    return-void
.end method
