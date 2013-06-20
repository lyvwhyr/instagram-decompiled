.class final enum Lcom/a/a/b/av;
.super Lcom/a/a/b/al;
.source "CustomConcurrentHashMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/b/al;-><init>(Ljava/lang/String;ILcom/a/a/b/ai;)V

    return-void
.end method


# virtual methods
.method a(Lcom/a/a/b/bl;Lcom/a/a/b/bk;Lcom/a/a/b/bk;)Lcom/a/a/b/bk;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/bl",
            "<TK;TV;>;",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 439
    invoke-super {p0, p1, p2, p3}, Lcom/a/a/b/al;->a(Lcom/a/a/b/bl;Lcom/a/a/b/bk;Lcom/a/a/b/bk;)Lcom/a/a/b/bk;

    move-result-object v0

    .line 440
    invoke-virtual {p0, p2, v0}, Lcom/a/a/b/av;->b(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V

    .line 441
    return-object v0
.end method

.method a(Lcom/a/a/b/bl;Ljava/lang/Object;ILcom/a/a/b/bk;)Lcom/a/a/b/bk;
    .locals 2
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/bl",
            "<TK;TV;>;TK;I",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 433
    new-instance v0, Lcom/a/a/b/bn;

    iget-object v1, p1, Lcom/a/a/b/bl;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/a/a/b/bn;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/a/a/b/bk;)V

    return-object v0
.end method
