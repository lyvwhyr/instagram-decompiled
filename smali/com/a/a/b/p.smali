.class Lcom/a/a/b/p;
.super Lcom/a/a/b/cw;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/cw",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/m;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;",
            "Lcom/a/a/b/ag;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/b/m;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Lcom/a/a/b/ag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    iput-object p1, p0, Lcom/a/a/b/p;->a:Lcom/a/a/b/m;

    invoke-direct {p0}, Lcom/a/a/b/cw;-><init>()V

    .line 332
    iput-object p2, p0, Lcom/a/a/b/p;->b:Ljava/util/Map;

    .line 333
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/p;->c:Ljava/util/Set;

    .line 334
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/a/a/b/p;->c:Ljava/util/Set;

    return-object v0
.end method

.method protected synthetic b()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/a/a/b/p;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/a/a/b/p;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/a/a/b/p;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/a/a/b/p;->a:Lcom/a/a/b/m;

    invoke-static {v1}, Lcom/a/a/b/m;->a(Lcom/a/a/b/m;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 382
    iget-object v0, p0, Lcom/a/a/b/p;->a:Lcom/a/a/b/m;

    invoke-virtual {v0}, Lcom/a/a/b/m;->clear()V

    .line 390
    :cond_0
    return-void

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/a/a/b/p;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 385
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 387
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TE;",
            "Lcom/a/a/b/ag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/a/a/b/p;->b:Ljava/util/Map;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/a/a/b/p;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 343
    new-instance v1, Lcom/a/a/b/q;

    invoke-direct {v1, p0, v0}, Lcom/a/a/b/q;-><init>(Lcom/a/a/b/p;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "element"

    .prologue
    .line 369
    .local p0, this:Lcom/a/a/b/p;,"Lcom/a/a/b/m<TE;>.com/a/a/b/p;"
    iget-object v0, p0, Lcom/a/a/b/p;->a:Lcom/a/a/b/m;

    iget-object v1, p0, Lcom/a/a/b/p;->b:Ljava/util/Map;

    invoke-static {v0, p1, v1}, Lcom/a/a/b/m;->a(Lcom/a/a/b/m;Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, this:Lcom/a/a/b/p;,"Lcom/a/a/b/m<TE;>.com/a/a/b/p;"
    .local p1, elementsToRemove:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/a/a/b/p;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/a/b/er;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, this:Lcom/a/a/b/p;,"Lcom/a/a/b/m<TE;>.com/a/a/b/p;"
    .local p1, elementsToRetain:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/a/a/b/p;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/a/b/er;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
