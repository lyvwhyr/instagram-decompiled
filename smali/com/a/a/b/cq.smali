.class public final Lcom/a/a/b/cq;
.super Lcom/a/a/b/a;
.source "EnumHashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum",
        "<TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/a",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public a(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/a/a/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Lcom/a/a/b/w;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/a/a/b/a;->b()Lcom/a/a/b/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/a/a/b/a;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    .local p0, this:Lcom/a/a/b/cq;,"Lcom/a/a/b/cq<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/a;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/a/a/b/a;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/a/a/b/a;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/a/a/b/a;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    .local p0, this:Lcom/a/a/b/cq;,"Lcom/a/a/b/cq<TK;TV;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/cq;->a(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    .local p0, this:Lcom/a/a/b/cq;,"Lcom/a/a/b/cq<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/a;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    .local p0, this:Lcom/a/a/b/cq;,"Lcom/a/a/b/cq<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
