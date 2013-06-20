.class public final Lcom/a/a/b/cp;
.super Lcom/a/a/b/a;
.source "EnumBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum",
        "<TK;>;V:",
        "Ljava/lang/Enum",
        "<TV;>;>",
        "Lcom/a/a/b/a",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic b()Lcom/a/a/b/w;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/a/a/b/a;->b()Lcom/a/a/b/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Lcom/a/a/b/a;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    .local p0, this:Lcom/a/a/b/cp;,"Lcom/a/a/b/cp<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/a;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/a/a/b/a;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/a/a/b/a;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/a/a/b/a;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    .local p0, this:Lcom/a/a/b/cp;,"Lcom/a/a/b/cp<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/a;->putAll(Ljava/util/Map;)V

    return-void
.end method
