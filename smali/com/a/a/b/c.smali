.class Lcom/a/a/b/c;
.super Lcom/a/a/b/cw;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/cw",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/a/a/b/a;


# direct methods
.method private constructor <init>(Lcom/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/a/a/b/c;->b:Lcom/a/a/b/a;

    invoke-direct {p0}, Lcom/a/a/b/cw;-><init>()V

    .line 277
    iget-object v0, p0, Lcom/a/a/b/c;->b:Lcom/a/a/b/a;

    invoke-static {v0}, Lcom/a/a/b/a;->a(Lcom/a/a/b/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/c;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/b/a;Lcom/a/a/b/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/a/a/b/c;-><init>(Lcom/a/a/b/a;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/a/a/b/c;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected synthetic b()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/a/a/b/c;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/a/a/b/c;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/a/a/b/c;->b:Lcom/a/a/b/a;

    invoke-virtual {v0}, Lcom/a/a/b/a;->clear()V

    .line 285
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 358
    .local p0, this:Lcom/a/a/b/c;,"Lcom/a/a/b/a<TK;TV;>.com/a/a/b/c;"
    invoke-virtual {p0}, Lcom/a/a/b/c;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/a/b/fx;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
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
    .line 361
    .local p0, this:Lcom/a/a/b/c;,"Lcom/a/a/b/a<TK;TV;>.com/a/a/b/c;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lcom/a/a/b/c;->a(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/a/a/b/c;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 306
    new-instance v1, Lcom/a/a/b/d;

    invoke-direct {v1, p0, v0}, Lcom/a/a/b/d;-><init>(Lcom/a/a/b/c;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 288
    .local p0, this:Lcom/a/a/b/c;,"Lcom/a/a/b/a<TK;TV;>.com/a/a/b/c;"
    iget-object v0, p0, Lcom/a/a/b/c;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x0

    .line 301
    .end local p1
    :goto_0
    return v0

    .line 293
    .restart local p1
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 294
    .end local p1
    iget-object v0, p0, Lcom/a/a/b/c;->b:Lcom/a/a/b/a;

    invoke-static {v0}, Lcom/a/a/b/a;->b(Lcom/a/a/b/a;)Lcom/a/a/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/b/a;->a(Lcom/a/a/b/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/a/a/b/c;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 301
    const/4 v0, 0x1

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
    .line 364
    .local p0, this:Lcom/a/a/b/c;,"Lcom/a/a/b/a<TK;TV;>.com/a/a/b/c;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lcom/a/a/b/c;->b(Ljava/util/Collection;)Z

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
    .line 367
    .local p0, this:Lcom/a/a/b/c;,"Lcom/a/a/b/a<TK;TV;>.com/a/a/b/c;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lcom/a/a/b/c;->c(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/a/a/b/c;->f()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, this:Lcom/a/a/b/c;,"Lcom/a/a/b/a<TK;TV;>.com/a/a/b/c;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0, p1}, Lcom/a/a/b/c;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
