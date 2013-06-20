.class public abstract Lcom/facebook/common/a/a;
.super Ljava/lang/Object;
.source "AbstractFbErrorReporter.java"

# interfaces
.implements Lcom/facebook/common/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-static {p1, p2}, Lcom/facebook/common/a/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/common/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/common/a/a;->a(Lcom/facebook/common/a/g;)V

    .line 13
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-static {p1, p2}, Lcom/facebook/common/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/common/a/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/common/a/h;->a(Z)Lcom/facebook/common/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/a/h;->g()Lcom/facebook/common/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/common/a/a;->a(Lcom/facebook/common/a/g;)V

    .line 28
    return-void
.end method
