.class public Lcom/facebook/a/i;
.super Ljava/lang/RuntimeException;
.source "FacebookError.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/a/i;->a:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/a/i;->a:I

    .line 40
    iput-object p2, p0, Lcom/facebook/a/i;->b:Ljava/lang/String;

    .line 41
    iput p3, p0, Lcom/facebook/a/i;->a:I

    .line 42
    return-void
.end method
