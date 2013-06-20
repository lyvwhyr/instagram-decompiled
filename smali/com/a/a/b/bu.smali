.class final enum Lcom/a/a/b/bu;
.super Lcom/a/a/b/br;
.source "CustomConcurrentHashMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/b/br;-><init>(Ljava/lang/String;ILcom/a/a/b/ai;)V

    return-void
.end method


# virtual methods
.method a()Lcom/a/a/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/a/c",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    invoke-static {}, Lcom/a/a/a/d;->b()Lcom/a/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/a/a/b/bl;Lcom/a/a/b/bk;Ljava/lang/Object;)Lcom/a/a/b/cb;
    .locals 2
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
            "<TK;TV;>;TV;)",
            "Lcom/a/a/b/cb",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Lcom/a/a/b/ch;

    iget-object v1, p1, Lcom/a/a/b/bl;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lcom/a/a/b/ch;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/a/a/b/bk;)V

    return-object v0
.end method
