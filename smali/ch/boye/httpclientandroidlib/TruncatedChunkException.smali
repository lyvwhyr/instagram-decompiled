.class public Lch/boye/httpclientandroidlib/TruncatedChunkException;
.super Lch/boye/httpclientandroidlib/MalformedChunkCodingException;
.source "TruncatedChunkException.java"


# static fields
.field private static final serialVersionUID:J = -0x5382d28f8f9624L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method
