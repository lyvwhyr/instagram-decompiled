.class final enum Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
.super Ljava/lang/Enum;
.source "RequestProtocolError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

.field public static final enum BODY_BUT_NO_LENGTH_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

.field public static final enum NO_CACHE_DIRECTIVE_WITH_FIELD_NAME:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

.field public static final enum UNKNOWN:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

.field public static final enum WEAK_ETAG_AND_RANGE_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

.field public static final enum WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->UNKNOWN:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    .line 35
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    const-string v1, "BODY_BUT_NO_LENGTH_ERROR"

    invoke-direct {v0, v1, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->BODY_BUT_NO_LENGTH_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    .line 36
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    const-string v1, "WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR"

    invoke-direct {v0, v1, v4}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    .line 37
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    const-string v1, "WEAK_ETAG_AND_RANGE_ERROR"

    invoke-direct {v0, v1, v5}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->WEAK_ETAG_AND_RANGE_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    .line 38
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    const-string v1, "NO_CACHE_DIRECTIVE_WITH_FIELD_NAME"

    invoke-direct {v0, v1, v6}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->NO_CACHE_DIRECTIVE_WITH_FIELD_NAME:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->UNKNOWN:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    aput-object v1, v0, v2

    sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->BODY_BUT_NO_LENGTH_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    aput-object v1, v0, v3

    sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    aput-object v1, v0, v4

    sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->WEAK_ETAG_AND_RANGE_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    aput-object v1, v0, v5

    sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->NO_CACHE_DIRECTIVE_WITH_FIELD_NAME:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    aput-object v1, v0, v6

    sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->$VALUES:[Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
    .locals 1
    .parameter "name"

    .prologue
    .line 32
    const-class v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    return-object v0
.end method

.method public static values()[Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->$VALUES:[Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    invoke-virtual {v0}, [Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    return-object v0
.end method
