.class public Lch/boye/httpclientandroidlib/client/cache/InputLimit;
.super Ljava/lang/Object;
.source "InputLimit.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private reached:Z

.field private final value:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->value:J

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->reached:Z

    .line 52
    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->value:J

    return-wide v0
.end method

.method public isReached()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->reached:Z

    return v0
.end method

.method public reached()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->reached:Z

    .line 67
    return-void
.end method
