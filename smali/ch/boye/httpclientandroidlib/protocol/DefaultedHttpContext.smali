.class public final Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;
.super Ljava/lang/Object;
.source "DefaultedHttpContext.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/protocol/HttpContext;


# instance fields
.field private final defaults:Lch/boye/httpclientandroidlib/protocol/HttpContext;

.field private final local:Lch/boye/httpclientandroidlib/protocol/HttpContext;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 2
    .parameter "local"
    .parameter "defaults"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->local:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    .line 49
    iput-object p2, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->defaults:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    .line 50
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "id"

    .prologue
    .line 53
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->local:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->defaults:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    :cond_0
    return-object v0
.end method

.method public getDefaults()Lch/boye/httpclientandroidlib/protocol/HttpContext;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->defaults:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "id"

    .prologue
    .line 62
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->local:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "id"
    .parameter "obj"

    .prologue
    .line 66
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->local:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    return-void
.end method
