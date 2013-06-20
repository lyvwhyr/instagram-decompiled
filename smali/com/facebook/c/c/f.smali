.class final Lcom/facebook/c/c/f;
.super Lcom/facebook/common/d/c;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/common/d/c",
        "<",
        "Lcom/facebook/c/c/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/common/d/c;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/facebook/c/c/f;->b()Lcom/facebook/c/c/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/c/c/e;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/c/c/e;->a(Lcom/facebook/c/c/e;Lcom/facebook/c/c/a;)Lcom/facebook/c/c/a;

    .line 35
    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/facebook/c/c/e;->a(Lcom/facebook/c/c/e;J)J

    .line 36
    return-void
.end method

.method public b()Lcom/facebook/c/c/e;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/facebook/c/c/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/c/c/e;-><init>(Lcom/facebook/c/c/f;)V

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    check-cast p1, Lcom/facebook/c/c/e;

    invoke-virtual {p0, p1}, Lcom/facebook/c/c/f;->a(Lcom/facebook/c/c/e;)V

    return-void
.end method
