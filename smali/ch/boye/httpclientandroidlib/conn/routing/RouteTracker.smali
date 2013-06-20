.class public final Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;
.super Ljava/lang/Object;
.source "RouteTracker.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private connected:Z

.field private layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

.field private final localAddress:Ljava/net/InetAddress;

.field private proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

.field private secure:Z

.field private final targetHost:Lch/boye/httpclientandroidlib/HttpHost;

.field private tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;)V
    .locals 2
    .parameter "target"
    .parameter "local"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    .line 85
    iput-object p2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    .line 86
    sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    .line 87
    sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    .line 88
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .locals 2
    .parameter "route"

    .prologue
    .line 99
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;)V

    .line 100
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 373
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final connectProxy(Lch/boye/httpclientandroidlib/HttpHost;Z)V
    .locals 2
    .parameter "proxy"
    .parameter "secure"

    .prologue
    const/4 v1, 0x1

    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    iput-boolean v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    .line 131
    new-array v0, v1, [Lch/boye/httpclientandroidlib/HttpHost;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    .line 132
    iput-boolean p2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    .line 133
    return-void
.end method

.method public final connectTarget(Z)V
    .locals 2
    .parameter "secure"

    .prologue
    .line 109
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    .line 113
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    .line 114
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 291
    if-ne p1, p0, :cond_1

    .line 297
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 293
    .restart local p1
    :cond_1
    instance-of v2, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    if-nez v2, :cond_2

    move v0, v1

    .line 294
    goto :goto_0

    .line 296
    :cond_2
    check-cast p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    .line 297
    .end local p1
    iget-boolean v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    iget-boolean v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    iget-boolean v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getHopCount()I
    .locals 2

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-eqz v1, :cond_0

    .line 210
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    if-nez v0, :cond_1

    .line 211
    const/4 v0, 0x1

    .line 215
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getHopTarget(I)Lch/boye/httpclientandroidlib/HttpHost;
    .locals 4
    .parameter "hop"

    .prologue
    .line 219
    if-gez p1, :cond_0

    .line 220
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

    .line 222
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->getHopCount()I

    move-result v0

    .line 223
    if-lt p1, v0, :cond_1

    .line 224
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hop index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exceeds tracked route length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    .line 231
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    aget-object v0, v0, p1

    .line 235
    :goto_0
    return-object v0

    .line 233
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    goto :goto_0
.end method

.method public final getLayerType()Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    return-object v0
.end method

.method public final getTunnelType()Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 318
    const/16 v0, 0x11

    .line 319
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 320
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v1

    .line 321
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 323
    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v1

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(IZ)I

    move-result v0

    .line 327
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(IZ)I

    move-result v0

    .line 328
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 329
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 330
    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    return v0
.end method

.method public final isLayered()Z
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

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
    .line 263
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    return v0
.end method

.method public final isTunnelled()Z
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    sget-object v1, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final layerProtocol(Z)V
    .locals 2
    .parameter "secure"

    .prologue
    .line 191
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No layered protocol unless connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->LAYERED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    .line 196
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    .line 197
    return-void
.end method

.method public final toRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
    .locals 7

    .prologue
    .line 275
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    iget-boolean v4, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    iget-object v5, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    iget-object v6, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->getHopCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x32

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 342
    const-string v0, "RouteTracker["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    const-string v0, "->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_0
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-eqz v0, :cond_1

    .line 349
    const/16 v0, 0x63

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    sget-object v2, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    if-ne v0, v2, :cond_2

    .line 351
    const/16 v0, 0x74

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    sget-object v2, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->LAYERED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    if-ne v0, v2, :cond_3

    .line 353
    const/16 v0, 0x6c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    :cond_3
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    if-eqz v0, :cond_4

    .line 355
    const/16 v0, 0x73

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    :cond_4
    const-string v0, "}->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    if-eqz v0, :cond_5

    .line 358
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 359
    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_5
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tunnelProxy(Lch/boye/httpclientandroidlib/HttpHost;Z)V
    .locals 4
    .parameter "proxy"
    .parameter "secure"

    .prologue
    const/4 v3, 0x0

    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No tunnel unless connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    if-nez v0, :cond_2

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No proxy tunnel without proxy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lch/boye/httpclientandroidlib/HttpHost;

    .line 174
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 178
    iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    .line 179
    iput-boolean p2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    .line 180
    return-void
.end method

.method public final tunnelTarget(Z)V
    .locals 2
    .parameter "secure"

    .prologue
    .line 142
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No tunnel unless connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No tunnel without proxy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    .line 149
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    .line 150
    return-void
.end method
