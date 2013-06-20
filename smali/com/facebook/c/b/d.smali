.class public final Lcom/facebook/c/b/d;
.super Ljava/lang/Object;
.source "WtfToken.java"


# instance fields
.field private final a:Lcom/facebook/common/f/a;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/facebook/common/f/a;

    invoke-static {}, Lcom/facebook/common/g/b;->b()Lcom/facebook/common/g/b;

    move-result-object v1

    const/4 v2, 0x2

    const-wide/32 v3, 0x36ee80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/common/f/a;-><init>(Lcom/facebook/common/g/a;IJ)V

    iput-object v0, p0, Lcom/facebook/c/b/d;->a:Lcom/facebook/common/f/a;

    .line 25
    return-void
.end method
