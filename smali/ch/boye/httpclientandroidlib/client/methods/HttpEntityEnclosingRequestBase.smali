.class public abstract Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;
.super Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;
.source "HttpEntityEnclosingRequestBase.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private entity:Lch/boye/httpclientandroidlib/HttpEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;

    .line 71
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-static {v1}, Lch/boye/httpclientandroidlib/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/HttpEntity;

    iput-object v1, v0, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    .line 74
    :cond_0
    return-object v0
.end method

.method public expectContinue()Z
    .locals 2

    .prologue
    .line 63
    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    const-string v1, "100-continue"

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .locals 0
    .parameter "entity"

    .prologue
    .line 59
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    .line 60
    return-void
.end method
