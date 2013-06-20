.class public final Lcom/a/a/d/a;
.super Ljava/lang/Object;
.source "Ints.java"


# direct methods
.method public static a(J)I
    .locals 2
    .parameter

    .prologue
    .line 94
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 95
    const v0, 0x7fffffff

    .line 100
    :goto_0
    return v0

    .line 97
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 98
    const/high16 v0, -0x8000

    goto :goto_0

    .line 100
    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method
