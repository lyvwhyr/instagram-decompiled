.class public final enum Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
.super Ljava/lang/Enum;
.source "RouteInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

.field public static final enum PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

.field public static final enum TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    const-string v1, "PLAIN"

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    const-string v1, "TUNNELLED"

    invoke-direct {v0, v1, v3}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    const/4 v0, 0x2

    new-array v0, v0, [Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    sget-object v1, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    aput-object v1, v0, v2

    sget-object v1, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    aput-object v1, v0, v3

    sput-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->$VALUES:[Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
    .locals 1
    .parameter "name"

    .prologue
    .line 49
    const-class v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    return-object v0
.end method

.method public static values()[Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->$VALUES:[Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    invoke-virtual {v0}, [Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    return-object v0
.end method
