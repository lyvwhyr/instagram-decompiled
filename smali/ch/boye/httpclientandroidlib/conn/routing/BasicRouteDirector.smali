.class public Lch/boye/httpclientandroidlib/conn/routing/BasicRouteDirector;
.super Ljava/lang/Object;
.source "BasicRouteDirector.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/routing/HttpRouteDirector;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected directStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I
    .locals 3
    .parameter "plan"
    .parameter "fact"

    .prologue
    const/4 v0, -0x1

    .line 97
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isSecure()Z

    move-result v1

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isSecure()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 112
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected firstStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I
    .locals 2
    .parameter "plan"

    .prologue
    const/4 v0, 0x1

    .line 81
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopCount()I

    move-result v1

    if-le v1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public nextStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I
    .locals 2
    .parameter "plan"
    .parameter "fact"

    .prologue
    const/4 v1, 0x1

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Planned route may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopCount()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 61
    :cond_1
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/conn/routing/BasicRouteDirector;->firstStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I

    move-result v0

    .line 67
    :goto_0
    return v0

    .line 62
    :cond_2
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopCount()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 63
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/conn/routing/BasicRouteDirector;->proxiedStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I

    move-result v0

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/conn/routing/BasicRouteDirector;->directStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I

    move-result v0

    goto :goto_0
.end method

.method protected proxiedStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I
    .locals 7
    .parameter "plan"
    .parameter "fact"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 132
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v2

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopCount()I

    move-result v3

    .line 137
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopCount()I

    move-result v4

    .line 138
    if-lt v3, v4, :cond_0

    move v2, v1

    .line 141
    :goto_1
    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_2

    .line 142
    invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopTarget(I)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v5

    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopTarget(I)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v6

    invoke-virtual {v5, v6}, Lch/boye/httpclientandroidlib/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    :cond_2
    if-le v3, v4, :cond_3

    .line 147
    const/4 v0, 0x4

    goto :goto_0

    .line 150
    :cond_3
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isTunnelled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isTunnelled()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isLayered()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isLayered()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    :cond_5
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isTunnelled()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isTunnelled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 155
    const/4 v0, 0x3

    goto :goto_0

    .line 156
    :cond_6
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isLayered()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isLayered()Z

    move-result v2

    if-nez v2, :cond_7

    .line 157
    const/4 v0, 0x5

    goto :goto_0

    .line 162
    :cond_7
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isSecure()Z

    move-result v2

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isSecure()Z

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 165
    goto :goto_0
.end method
