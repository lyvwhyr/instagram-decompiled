.class public Lcom/facebook/common/f/a;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/common/g/a;

.field private final b:I

.field private final c:J

.field private d:D


# direct methods
.method public constructor <init>(Lcom/facebook/common/g/a;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/common/f/a;->a:Lcom/facebook/common/g/a;

    .line 34
    iput p2, p0, Lcom/facebook/common/f/a;->b:I

    .line 35
    iput-wide p3, p0, Lcom/facebook/common/f/a;->c:J

    .line 36
    int-to-double v0, p2

    iput-wide v0, p0, Lcom/facebook/common/f/a;->d:D

    .line 37
    return-void
.end method
