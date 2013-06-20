.class public Lch/boye/httpclientandroidlib/cookie/params/CookieSpecParamBean;
.super Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;
.source "CookieSpecParamBean.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 49
    return-void
.end method


# virtual methods
.method public setDatePatterns(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, patterns:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lch/boye/httpclientandroidlib/cookie/params/CookieSpecParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.protocol.cookie-datepatterns"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 53
    return-void
.end method

.method public setSingleHeader(Z)V
    .locals 2
    .parameter "singleHeader"

    .prologue
    .line 56
    iget-object v0, p0, Lch/boye/httpclientandroidlib/cookie/params/CookieSpecParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.protocol.single-cookie-header"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 57
    return-void
.end method
