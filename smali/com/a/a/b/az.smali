.class final Lcom/a/a/b/az;
.super Ljava/util/AbstractSet;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/ah;


# direct methods
.method constructor <init>(Lcom/a/a/b/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 3885
    iput-object p1, p0, Lcom/a/a/b/az;->a:Lcom/a/a/b/ah;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3929
    iget-object v0, p0, Lcom/a/a/b/az;->a:Lcom/a/a/b/ah;

    invoke-virtual {v0}, Lcom/a/a/b/ah;->clear()V

    .line 3930
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .local p0, this:Lcom/a/a/b/az;,"Lcom/a/a/b/ah<TK;TV;>.com/a/a/b/az;"
    const/4 v0, 0x0

    .line 3894
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 3904
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 3897
    .restart local p1
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 3898
    .end local p1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3899
    if-eqz v1, :cond_0

    .line 3902
    iget-object v2, p0, Lcom/a/a/b/az;->a:Lcom/a/a/b/ah;

    invoke-virtual {v2, v1}, Lcom/a/a/b/ah;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3904
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/a/a/b/az;->a:Lcom/a/a/b/ah;

    iget-object v2, v2, Lcom/a/a/b/ah;->g:Lcom/a/a/a/c;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3924
    iget-object v0, p0, Lcom/a/a/b/az;->a:Lcom/a/a/b/ah;

    invoke-virtual {v0}, Lcom/a/a/b/ah;->isEmpty()Z

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
    .line 3889
    new-instance v0, Lcom/a/a/b/ay;

    iget-object v1, p0, Lcom/a/a/b/az;->a:Lcom/a/a/b/ah;

    invoke-direct {v0, v1}, Lcom/a/a/b/ay;-><init>(Lcom/a/a/b/ah;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .local p0, this:Lcom/a/a/b/az;,"Lcom/a/a/b/ah<TK;TV;>.com/a/a/b/az;"
    const/4 v0, 0x0

    .line 3909
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 3914
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 3912
    .restart local p1
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 3913
    .end local p1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3914
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/a/a/b/az;->a:Lcom/a/a/b/ah;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/a/a/b/ah;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3919
    iget-object v0, p0, Lcom/a/a/b/az;->a:Lcom/a/a/b/ah;

    invoke-virtual {v0}, Lcom/a/a/b/ah;->size()I

    move-result v0

    return v0
.end method
