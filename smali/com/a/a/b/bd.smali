.class final Lcom/a/a/b/bd;
.super Ljava/util/AbstractQueue;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<",
        "Lcom/a/a/b/bk",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/a/a/b/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3284
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3285
    new-instance v0, Lcom/a/a/b/be;

    invoke-direct {v0, p0}, Lcom/a/a/b/be;-><init>(Lcom/a/a/b/bd;)V

    iput-object v0, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/b/bk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    invoke-interface {v0}, Lcom/a/a/b/bk;->f()Lcom/a/a/b/bk;

    move-result-object v0

    .line 3337
    iget-object v1, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/a/a/b/bk;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3325
    invoke-interface {p1}, Lcom/a/a/b/bk;->g()Lcom/a/a/b/bk;

    move-result-object v0

    invoke-interface {p1}, Lcom/a/a/b/bk;->f()Lcom/a/a/b/bk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/b/ah;->a(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V

    .line 3328
    iget-object v0, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    invoke-interface {v0}, Lcom/a/a/b/bk;->g()Lcom/a/a/b/bk;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/a/b/ah;->a(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V

    .line 3329
    iget-object v0, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    invoke-static {p1, v0}, Lcom/a/a/b/ah;->a(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V

    .line 3331
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/a/a/b/bk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3342
    iget-object v0, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    invoke-interface {v0}, Lcom/a/a/b/bk;->f()Lcom/a/a/b/bk;

    move-result-object v0

    .line 3343
    iget-object v1, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    if-ne v0, v1, :cond_0

    .line 3344
    const/4 v0, 0x0

    .line 3348
    :goto_0
    return-object v0

    .line 3347
    :cond_0
    invoke-virtual {p0, v0}, Lcom/a/a/b/bd;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    invoke-interface {v0}, Lcom/a/a/b/bk;->f()Lcom/a/a/b/bk;

    move-result-object v0

    .line 3387
    :goto_0
    iget-object v1, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    if-eq v0, v1, :cond_0

    .line 3388
    invoke-interface {v0}, Lcom/a/a/b/bk;->f()Lcom/a/a/b/bk;

    move-result-object v1

    .line 3389
    invoke-static {v0}, Lcom/a/a/b/ah;->d(Lcom/a/a/b/bk;)V

    move-object v0, v1

    .line 3391
    goto :goto_0

    .line 3393
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    iget-object v1, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    invoke-interface {v0, v1}, Lcom/a/a/b/bk;->a(Lcom/a/a/b/bk;)V

    .line 3394
    iget-object v0, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    iget-object v1, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    invoke-interface {v0, v1}, Lcom/a/a/b/bk;->b(Lcom/a/a/b/bk;)V

    .line 3395
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 3366
    .local p0, this:Lcom/a/a/b/bd;,"Lcom/a/a/b/bd<TK;TV;>;"
    check-cast p1, Lcom/a/a/b/bk;

    .line 3367
    .end local p1
    invoke-interface {p1}, Lcom/a/a/b/bk;->f()Lcom/a/a/b/bk;

    move-result-object v0

    sget-object v1, Lcom/a/a/b/bj;->a:Lcom/a/a/b/bj;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    invoke-interface {v0}, Lcom/a/a/b/bk;->f()Lcom/a/a/b/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3399
    new-instance v0, Lcom/a/a/b/bf;

    invoke-virtual {p0}, Lcom/a/a/b/bd;->a()Lcom/a/a/b/bk;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/bf;-><init>(Lcom/a/a/b/bd;Lcom/a/a/b/bk;)V

    return-object v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 3284
    .local p0, this:Lcom/a/a/b/bd;,"Lcom/a/a/b/bd<TK;TV;>;"
    check-cast p1, Lcom/a/a/b/bk;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/a/a/b/bd;->a(Lcom/a/a/b/bk;)Z

    move-result v0

    return v0
.end method

.method public synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3284
    invoke-virtual {p0}, Lcom/a/a/b/bd;->a()Lcom/a/a/b/bk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3284
    invoke-virtual {p0}, Lcom/a/a/b/bd;->b()Lcom/a/a/b/bk;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 3354
    .local p0, this:Lcom/a/a/b/bd;,"Lcom/a/a/b/bd<TK;TV;>;"
    check-cast p1, Lcom/a/a/b/bk;

    .line 3355
    .end local p1
    invoke-interface {p1}, Lcom/a/a/b/bk;->g()Lcom/a/a/b/bk;

    move-result-object v0

    .line 3356
    invoke-interface {p1}, Lcom/a/a/b/bk;->f()Lcom/a/a/b/bk;

    move-result-object v1

    .line 3357
    invoke-static {v0, v1}, Lcom/a/a/b/ah;->a(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V

    .line 3358
    invoke-static {p1}, Lcom/a/a/b/ah;->d(Lcom/a/a/b/bk;)V

    .line 3360
    sget-object v0, Lcom/a/a/b/bj;->a:Lcom/a/a/b/bj;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 3377
    const/4 v1, 0x0

    .line 3378
    iget-object v0, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    invoke-interface {v0}, Lcom/a/a/b/bk;->f()Lcom/a/a/b/bk;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    if-eq v0, v2, :cond_0

    .line 3379
    add-int/lit8 v1, v1, 0x1

    .line 3378
    invoke-interface {v0}, Lcom/a/a/b/bk;->f()Lcom/a/a/b/bk;

    move-result-object v0

    goto :goto_0

    .line 3381
    :cond_0
    return v1
.end method
