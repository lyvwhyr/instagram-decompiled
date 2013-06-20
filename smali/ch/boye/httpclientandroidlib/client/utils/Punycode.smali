.class public Lch/boye/httpclientandroidlib/client/utils/Punycode;
.super Ljava/lang/Object;
.source "Punycode.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final impl:Lch/boye/httpclientandroidlib/client/utils/Idn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/client/utils/JdkIdn;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/client/utils/JdkIdn;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    sput-object v0, Lch/boye/httpclientandroidlib/client/utils/Punycode;->impl:Lch/boye/httpclientandroidlib/client/utils/Idn;

    .line 52
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v0, Lch/boye/httpclientandroidlib/client/utils/Rfc3492Idn;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/client/utils/Rfc3492Idn;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "punycode"

    .prologue
    .line 55
    sget-object v0, Lch/boye/httpclientandroidlib/client/utils/Punycode;->impl:Lch/boye/httpclientandroidlib/client/utils/Idn;

    invoke-interface {v0, p0}, Lch/boye/httpclientandroidlib/client/utils/Idn;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
