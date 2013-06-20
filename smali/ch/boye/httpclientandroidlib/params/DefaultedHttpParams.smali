.class public final Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;
.super Lch/boye/httpclientandroidlib/params/AbstractHttpParams;
.source "DefaultedHttpParams.java"


# instance fields
.field private final defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

.field private final local:Lch/boye/httpclientandroidlib/params/HttpParams;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 2
    .parameter "local"
    .parameter "defaults"

    .prologue
    .line 50
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/params/AbstractHttpParams;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 55
    iput-object p2, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 56
    return-void
.end method


# virtual methods
.method public copy()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->copy()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    .line 65
    new-instance v1, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {v1, v0, v2}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v1
.end method

.method public getDefaults()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 74
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

    if-eqz v1, :cond_0

    .line 76
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    :cond_0
    return-object v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 86
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 94
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
