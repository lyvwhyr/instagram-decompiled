.class public Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;
.super Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;
.source "BasicClientCookie2.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/cookie/SetCookie2;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b7a571e07b044e1L


# instance fields
.field private commentURL:Ljava/lang/String;

.field private discard:Z

.field private ports:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;

    .line 96
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->ports:[I

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->ports:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->ports:[I

    .line 99
    :cond_0
    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()[I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->ports:[I

    return-object v0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .locals 1
    .parameter "date"

    .prologue
    .line 90
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->discard:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->isExpired(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->discard:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .locals 0
    .parameter "commentURL"

    .prologue
    .line 76
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->commentURL:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setDiscard(Z)V
    .locals 0
    .parameter "discard"

    .prologue
    .line 80
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->discard:Z

    .line 81
    return-void
.end method

.method public setPorts([I)V
    .locals 0
    .parameter "ports"

    .prologue
    .line 67
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->ports:[I

    .line 68
    return-void
.end method
