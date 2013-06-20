.class public Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;
.super Ljava/lang/Object;
.source "BasicHttpContext.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/protocol/HttpContext;


# instance fields
.field private map:Ljava/util/Map;

.field private final parentContext:Lch/boye/httpclientandroidlib/protocol/HttpContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;-><init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 1
    .parameter "parentContext"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;

    .line 52
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->parentContext:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    .line 53
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "id"

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 61
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->parentContext:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    if-eqz v1, :cond_2

    .line 64
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->parentContext:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    :cond_2
    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "id"

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "id"
    .parameter "obj"

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;

    .line 76
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method
