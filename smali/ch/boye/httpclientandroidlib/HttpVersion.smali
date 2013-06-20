.class public final Lch/boye/httpclientandroidlib/HttpVersion;
.super Lch/boye/httpclientandroidlib/ProtocolVersion;
.source "HttpVersion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HTTP:Ljava/lang/String; = "HTTP"

.field public static final HTTP_0_9:Lch/boye/httpclientandroidlib/HttpVersion; = null

.field public static final HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion; = null

.field public static final HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion; = null

.field private static final serialVersionUID:J = -0x514703574c384bf0L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 54
    new-instance v0, Lch/boye/httpclientandroidlib/HttpVersion;

    const/16 v1, 0x9

    invoke-direct {v0, v3, v1}, Lch/boye/httpclientandroidlib/HttpVersion;-><init>(II)V

    sput-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_0_9:Lch/boye/httpclientandroidlib/HttpVersion;

    .line 57
    new-instance v0, Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-direct {v0, v2, v3}, Lch/boye/httpclientandroidlib/HttpVersion;-><init>(II)V

    sput-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    .line 60
    new-instance v0, Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-direct {v0, v2, v2}, Lch/boye/httpclientandroidlib/HttpVersion;-><init>(II)V

    sput-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "major"
    .parameter "minor"

    .prologue
    .line 72
    const-string v0, "HTTP"

    invoke-direct {p0, v0, p1, p2}, Lch/boye/httpclientandroidlib/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 73
    return-void
.end method


# virtual methods
.method public forVersion(II)Lch/boye/httpclientandroidlib/ProtocolVersion;
    .locals 2
    .parameter "major"
    .parameter "minor"

    .prologue
    const/4 v1, 0x1

    .line 86
    iget v0, p0, Lch/boye/httpclientandroidlib/HttpVersion;->major:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lch/boye/httpclientandroidlib/HttpVersion;->minor:I

    if-ne p2, v0, :cond_0

    .line 103
    .end local p0
    :goto_0
    return-object p0

    .line 90
    .restart local p0
    :cond_0
    if-ne p1, v1, :cond_2

    .line 91
    if-nez p2, :cond_1

    .line 92
    sget-object p0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    goto :goto_0

    .line 94
    :cond_1
    if-ne p2, v1, :cond_2

    .line 95
    sget-object p0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    goto :goto_0

    .line 98
    :cond_2
    if-nez p1, :cond_3

    const/16 v0, 0x9

    if-ne p2, v0, :cond_3

    .line 99
    sget-object p0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_0_9:Lch/boye/httpclientandroidlib/HttpVersion;

    goto :goto_0

    .line 103
    :cond_3
    new-instance p0, Lch/boye/httpclientandroidlib/HttpVersion;

    .end local p0
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/HttpVersion;-><init>(II)V

    goto :goto_0
.end method
