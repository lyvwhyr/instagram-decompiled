.class synthetic Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance$1;
.super Ljava/lang/Object;
.source "RequestProtocolCompliance.java"


# static fields
.field static final synthetic $SwitchMap$ch$boye$httpclientandroidlib$impl$client$cache$RequestProtocolError:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 300
    invoke-static {}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->values()[Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance$1;->$SwitchMap$ch$boye$httpclientandroidlib$impl$client$cache$RequestProtocolError:[I

    :try_start_0
    sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance$1;->$SwitchMap$ch$boye$httpclientandroidlib$impl$client$cache$RequestProtocolError:[I

    sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->BODY_BUT_NO_LENGTH_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance$1;->$SwitchMap$ch$boye$httpclientandroidlib$impl$client$cache$RequestProtocolError:[I

    sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->WEAK_ETAG_AND_RANGE_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance$1;->$SwitchMap$ch$boye$httpclientandroidlib$impl$client$cache$RequestProtocolError:[I

    sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance$1;->$SwitchMap$ch$boye$httpclientandroidlib$impl$client$cache$RequestProtocolError:[I

    sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->NO_CACHE_DIRECTIVE_WITH_FIELD_NAME:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
