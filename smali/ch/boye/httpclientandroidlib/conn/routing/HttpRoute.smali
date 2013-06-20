.class public final Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
.super Ljava/lang/Object;
.source "HttpRoute.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final EMPTY_HTTP_HOST_ARRAY:[Lch/boye/httpclientandroidlib/HttpHost;


# instance fields
.field private final layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

.field private final localAddress:Ljava/net/InetAddress;

.field private final proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

.field private final secure:Z

.field private final targetHost:Lch/boye/httpclientandroidlib/HttpHost;

.field private final tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Lch/boye/httpclientandroidlib/HttpHost;

    sput-object v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->EMPTY_HTTP_HOST_ARRAY:[Lch/boye/httpclientandroidlib/HttpHost;

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;)V
    .locals 7
    .parameter "target"

    .prologue
    .line 186
    const/4 v1, 0x0

    sget-object v3, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->EMPTY_HTTP_HOST_ARRAY:[Lch/boye/httpclientandroidlib/HttpHost;

    const/4 v4, 0x0

    sget-object v5, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;Z)V
    .locals 7
    .parameter "target"
    .parameter "local"
    .parameter "proxy"
    .parameter "secure"

    .prologue
    .line 205
    invoke-static {p3}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->toChain(Lch/boye/httpclientandroidlib/HttpHost;)[Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v3

    if-eqz p4, :cond_0

    sget-object v5, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    :goto_0
    if-eqz p4, :cond_1

    sget-object v6, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->LAYERED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    :goto_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V

    .line 208
    if-nez p3, :cond_2

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    sget-object v5, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    goto :goto_0

    :cond_1
    sget-object v6, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    goto :goto_1

    .line 212
    :cond_2
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V
    .locals 7
    .parameter "target"
    .parameter "local"
    .parameter "proxy"
    .parameter "secure"
    .parameter "tunnelled"
    .parameter "layered"

    .prologue
    .line 161
    invoke-static {p3}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->toChain(Lch/boye/httpclientandroidlib/HttpHost;)[Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;Z)V
    .locals 7
    .parameter "target"
    .parameter "local"
    .parameter "secure"

    .prologue
    .line 176
    sget-object v3, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->EMPTY_HTTP_HOST_ARRAY:[Lch/boye/httpclientandroidlib/HttpHost;

    sget-object v5, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V
    .locals 7
    .parameter "target"
    .parameter "local"
    .parameter "proxies"
    .parameter "secure"
    .parameter "tunnelled"
    .parameter "layered"

    .prologue
    .line 138
    invoke-static {p3}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->toChain([Lch/boye/httpclientandroidlib/HttpHost;)[Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V

    .line 139
    return-void
.end method

.method private constructor <init>(Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V
    .locals 2
    .parameter "local"
    .parameter "target"
    .parameter "proxies"
    .parameter "secure"
    .parameter "tunnelled"
    .parameter "layered"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    if-nez p2, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    if-nez p3, :cond_1

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxies may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    if-ne p5, v0, :cond_2

    array-length v0, p3

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy required if tunnelled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_2
    if-nez p5, :cond_3

    .line 110
    sget-object p5, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    .line 111
    :cond_3
    if-nez p6, :cond_4

    .line 112
    sget-object p6, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    .line 114
    :cond_4
    iput-object p2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    .line 115
    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    .line 116
    iput-object p3, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    .line 117
    iput-boolean p4, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->secure:Z

    .line 118
    iput-object p5, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    .line 119
    iput-object p6, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    .line 120
    return-void
.end method

.method private static toChain(Lch/boye/httpclientandroidlib/HttpHost;)[Lch/boye/httpclientandroidlib/HttpHost;
    .locals 2
    .parameter "proxy"

    .prologue
    .line 223
    if-nez p0, :cond_0

    .line 224
    sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->EMPTY_HTTP_HOST_ARRAY:[Lch/boye/httpclientandroidlib/HttpHost;

    .line 226
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lch/boye/httpclientandroidlib/HttpHost;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    goto :goto_0
.end method

.method private static toChain([Lch/boye/httpclientandroidlib/HttpHost;)[Lch/boye/httpclientandroidlib/HttpHost;
    .locals 4
    .parameter "proxies"

    .prologue
    const/4 v1, 0x0

    .line 239
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 240
    :cond_0
    sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->EMPTY_HTTP_HOST_ARRAY:[Lch/boye/httpclientandroidlib/HttpHost;

    .line 252
    :goto_0
    return-object v0

    .line 242
    :cond_1
    array-length v2, p0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, p0, v0

    .line 243
    if-nez v3, :cond_2

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy chain may not contain null elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    :cond_3
    array-length v0, p0

    new-array v0, v0, [Lch/boye/httpclientandroidlib/HttpHost;

    .line 250
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 407
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 334
    if-ne p0, p1, :cond_1

    .line 346
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 335
    .restart local p1
    :cond_1
    instance-of v2, p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    if-eqz v2, :cond_3

    .line 336
    check-cast p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    .line 337
    .end local p1
    iget-boolean v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->secure:Z

    iget-boolean v3, p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->secure:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .restart local p1
    :cond_3
    move v0, v1

    .line 346
    goto :goto_0
.end method

.method public final getHopCount()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getHopTarget(I)Lch/boye/httpclientandroidlib/HttpHost;
    .locals 4
    .parameter "hop"

    .prologue
    .line 275
    if-gez p1, :cond_0

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hop index must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getHopCount()I

    move-result v0

    .line 279
    if-lt p1, v0, :cond_1

    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hop index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exceeds route length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    .line 286
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    aget-object v0, v0, p1

    .line 290
    :goto_0
    return-object v0

    .line 288
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    goto :goto_0
.end method

.method public final getLayerType()Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    return-object v0
.end method

.method public final getTunnelType()Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 358
    const/16 v0, 0x11

    .line 359
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 360
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v1

    .line 361
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 362
    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v1

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->secure:Z

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(IZ)I

    move-result v0

    .line 365
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 366
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 367
    return v0
.end method

.method public final isLayered()Z
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    sget-object v1, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->LAYERED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSecure()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->secure:Z

    return v0
.end method

.method public final isTunnelled()Z
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    sget-object v1, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getHopCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x32

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 380
    const-string v0, "HttpRoute["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    const-string v0, "->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_0
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    sget-object v2, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    if-ne v0, v2, :cond_1

    .line 387
    const/16 v0, 0x74

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    sget-object v2, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->LAYERED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    if-ne v0, v2, :cond_2

    .line 389
    const/16 v0, 0x6c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    :cond_2
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->secure:Z

    if-eqz v0, :cond_3

    .line 391
    const/16 v0, 0x73

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    :cond_3
    const-string v0, "}->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    .line 394
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    const-string v4, "->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_4
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
