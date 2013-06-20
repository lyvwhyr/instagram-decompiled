.class final Lcom/a/a/b/ba;
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
    .line 3156
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3157
    new-instance v0, Lcom/a/a/b/bb;

    invoke-direct {v0, p0}, Lcom/a/a/b/bb;-><init>(Lcom/a/a/b/ba;)V

    iput-object v0, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

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
    .line 3200
    iget-object v0, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

    invoke-interface {v0}, Lcom/a/a/b/bk;->h()Lcom/a/a/b/bk;

    move-result-object v0

    .line 3201
    iget-object v1, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

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
    .line 3189
    invoke-interface {p1}, Lcom/a/a/b/bk;->i()Lcom/a/a/b/bk;

    move-result-object v0

    invoke-interface {p1}, Lcom/a/a/b/bk;->h()Lcom/a/a/b/bk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/b/ah;->b(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V

    .line 3192
    iget-object v0, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

    invoke-interface {v0}, Lcom/a/a/b/bk;->i()Lcom/a/a/b/bk;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/a/b/ah;->b(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V

    .line 3193
    iget-object v0, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

    invoke-static {p1, v0}, Lcom/a/a/b/ah;->b(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V

    .line 3195
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
    .line 3206
    iget-object v0, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

    invoke-interface {v0}, Lcom/a/a/b/bk;->h()Lcom/a/a/b/bk;

    move-result-object v0

    .line 3207
    iget-object v1, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

    if-ne v0, v1, :cond_0

    .line 3208
    const/4 v0, 0x0

    .line 3212
    :goto_0
    return-object v0

    .line 3211
    :cond_0
    invoke-virtual {p0, v0}, Lcom/a/a/b/ba;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 3250
    iget-object v0, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

    invoke-interface {v0}, Lcom/a/a/b/bk;->h()Lcom/a/a/b/bk;

    move-result-object v0

    .line 3251
    :goto_0
    iget-object v1, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

    if-eq v0, v1, :cond_0

    .line 3252
    invoke-interface {v0}, Lcom/a/a/b/bk;->h()Lcom/a/a/b/bk;

    move-result-object v1

    .line 3253
    invoke-static {v0}, Lcom/a/a/b/ah;->e(Lcom/a/a/b/bk;)V

    move-object v0, v1

    .line 3255
    goto :goto_0

    .line 3257
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

    iget-object v1, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

    invoke-interface {v0, v1}, Lcom/a/a/b/bk;->c(Lcom/a/a/b/bk;)V

    .line 3258
    iget-object v0, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

    iget-object v1, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

    invoke-interface {v0, v1}, Lcom/a/a/b/bk;->d(Lcom/a/a/b/bk;)V

    .line 3259
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 3230
    .local p0, this:Lcom/a/a/b/ba;,"Lcom/a/a/b/ba<TK;TV;>;"
    check-cast p1, Lcom/a/a/b/bk;

    .line 3231
    .end local p1
    invoke-interface {p1}, Lcom/a/a/b/bk;->h()Lcom/a/a/b/bk;

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
    .line 3236
    iget-object v0, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

    invoke-interface {v0}, Lcom/a/a/b/bk;->h()Lcom/a/a/b/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

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
    .line 3263
    new-instance v0, Lcom/a/a/b/bc;

    invoke-virtual {p0}, Lcom/a/a/b/ba;->a()Lcom/a/a/b/bk;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/bc;-><init>(Lcom/a/a/b/ba;Lcom/a/a/b/bk;)V

    return-object v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 3156
    .local p0, this:Lcom/a/a/b/ba;,"Lcom/a/a/b/ba<TK;TV;>;"
    check-cast p1, Lcom/a/a/b/bk;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/a/a/b/ba;->a(Lcom/a/a/b/bk;)Z

    move-result v0

    return v0
.end method

.method public synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3156
    invoke-virtual {p0}, Lcom/a/a/b/ba;->a()Lcom/a/a/b/bk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3156
    invoke-virtual {p0}, Lcom/a/a/b/ba;->b()Lcom/a/a/b/bk;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 3218
    .local p0, this:Lcom/a/a/b/ba;,"Lcom/a/a/b/ba<TK;TV;>;"
    check-cast p1, Lcom/a/a/b/bk;

    .line 3219
    .end local p1
    invoke-interface {p1}, Lcom/a/a/b/bk;->i()Lcom/a/a/b/bk;

    move-result-object v0

    .line 3220
    invoke-interface {p1}, Lcom/a/a/b/bk;->h()Lcom/a/a/b/bk;

    move-result-object v1

    .line 3221
    invoke-static {v0, v1}, Lcom/a/a/b/ah;->b(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V

    .line 3222
    invoke-static {p1}, Lcom/a/a/b/ah;->e(Lcom/a/a/b/bk;)V

    .line 3224
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
    .line 3241
    const/4 v1, 0x0

    .line 3242
    iget-object v0, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

    invoke-interface {v0}, Lcom/a/a/b/bk;->h()Lcom/a/a/b/bk;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/a/a/b/ba;->a:Lcom/a/a/b/bk;

    if-eq v0, v2, :cond_0

    .line 3243
    add-int/lit8 v1, v1, 0x1

    .line 3242
    invoke-interface {v0}, Lcom/a/a/b/bk;->h()Lcom/a/a/b/bk;

    move-result-object v0

    goto :goto_0

    .line 3245
    :cond_0
    return v1
.end method
