.class public Lch/boye/httpclientandroidlib/params/HttpProtocolParamBean;
.super Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;
.source "HttpProtocolParamBean.java"


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 43
    return-void
.end method


# virtual methods
.method public setContentCharset(Ljava/lang/String;)V
    .locals 1
    .parameter "contentCharset"

    .prologue
    .line 50
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpProtocolParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setContentCharset(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public setHttpElementCharset(Ljava/lang/String;)V
    .locals 1
    .parameter "httpElementCharset"

    .prologue
    .line 46
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpProtocolParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setHttpElementCharset(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public setUseExpectContinue(Z)V
    .locals 1
    .parameter "useExpectContinue"

    .prologue
    .line 62
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpProtocolParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setUseExpectContinue(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V

    .line 63
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 58
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpProtocolParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setUserAgent(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public setVersion(Lch/boye/httpclientandroidlib/HttpVersion;)V
    .locals 1
    .parameter "version"

    .prologue
    .line 54
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpProtocolParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setVersion(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    .line 55
    return-void
.end method
