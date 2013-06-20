.class Lcom/a/a/b/g;
.super Lcom/a/a/b/cw;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/cw",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/a;


# direct methods
.method private constructor <init>(Lcom/a/a/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/a/a/b/g;->a:Lcom/a/a/b/a;

    invoke-direct {p0}, Lcom/a/a/b/cw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/b/a;Lcom/a/a/b/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/a/a/b/g;-><init>(Lcom/a/a/b/a;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/a/a/b/g;->a:Lcom/a/a/b/a;

    invoke-static {v0}, Lcom/a/a/b/a;->a(Lcom/a/a/b/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/a/a/b/g;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/a/a/b/g;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/a/a/b/g;->a:Lcom/a/a/b/a;

    invoke-virtual {v0}, Lcom/a/a/b/a;->clear()V

    .line 175
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/a/a/b/g;->a:Lcom/a/a/b/a;

    invoke-static {v0}, Lcom/a/a/b/a;->a(Lcom/a/a/b/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 195
    new-instance v1, Lcom/a/a/b/h;

    invoke-direct {v1, p0, v0}, Lcom/a/a/b/h;-><init>(Lcom/a/a/b/g;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 178
    .local p0, this:Lcom/a/a/b/g;,"Lcom/a/a/b/a<TK;TV;>.com/a/a/b/g;"
    invoke-virtual {p0, p1}, Lcom/a/a/b/g;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/g;->a:Lcom/a/a/b/a;

    invoke-static {v0, p1}, Lcom/a/a/b/a;->a(Lcom/a/a/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
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
    .line 186
    .local p0, this:Lcom/a/a/b/g;,"Lcom/a/a/b/a<TK;TV;>.com/a/a/b/g;"
    .local p1, keysToRemove:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lcom/a/a/b/g;->b(Ljava/util/Collection;)Z

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
    .line 190
    .local p0, this:Lcom/a/a/b/g;,"Lcom/a/a/b/a<TK;TV;>.com/a/a/b/g;"
    .local p1, keysToRetain:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lcom/a/a/b/g;->c(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
