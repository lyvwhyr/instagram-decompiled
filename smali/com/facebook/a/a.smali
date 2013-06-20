.class public Lcom/facebook/a/a;
.super Ljava/lang/Throwable;
.source "DialogError.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 41
    iput p2, p0, Lcom/facebook/a/a;->a:I

    .line 42
    iput-object p3, p0, Lcom/facebook/a/a;->b:Ljava/lang/String;

    .line 43
    return-void
.end method
