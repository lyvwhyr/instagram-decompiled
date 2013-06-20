.class public Lcom/googlecode/mp4parser/util/Math;
.super Ljava/lang/Object;
.source "Math.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gcd(II)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 14
    move v0, p1

    .end local p1
    .local v0, b:I
    :goto_0
    if-lez v0, :cond_0

    .line 16
    rem-int p1, p0, v0

    .line 17
    .end local v0           #b:I
    .restart local p1
    move p0, v0

    move v0, p1

    .line 18
    .end local p1
    .restart local v0       #b:I
    goto :goto_0

    .line 19
    :cond_0
    return p0
.end method

.method public static gcd(JJ)J
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 5
    move-wide v0, p2

    .end local p2
    .local v0, b:J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 7
    rem-long p2, p0, v0

    .line 8
    .end local v0           #b:J
    .restart local p2
    move-wide p0, v0

    move-wide v0, p2

    .line 9
    .end local p2
    .restart local v0       #b:J
    goto :goto_0

    .line 10
    :cond_0
    return-wide p0
.end method

.method public static lcm(II)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/googlecode/mp4parser/util/Math;->gcd(II)I

    move-result v0

    div-int v0, p1, v0

    mul-int/2addr v0, p0

    return v0
.end method

.method public static lcm(JJ)J
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3}, Lcom/googlecode/mp4parser/util/Math;->gcd(JJ)J

    move-result-wide v0

    div-long v0, p2, v0

    mul-long/2addr v0, p0

    return-wide v0
.end method
