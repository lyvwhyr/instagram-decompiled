.class abstract Lcom/a/a/b/ge;
.super Ljava/util/AbstractSet;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/a/a/b/ga;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/ga",
            "<TE;>;"
        }
    .end annotation
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/a/a/b/ge;->a()Lcom/a/a/b/ga;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/b/ga;->clear()V

    .line 702
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 705
    .local p0, this:Lcom/a/a/b/ge;,"Lcom/a/a/b/ge<TE;>;"
    invoke-virtual {p0}, Lcom/a/a/b/ge;->a()Lcom/a/a/b/ga;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/b/ga;->contains(Ljava/lang/Object;)Z

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
    .line 709
    .local p0, this:Lcom/a/a/b/ge;,"Lcom/a/a/b/ge<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/a/a/b/ge;->a()Lcom/a/a/b/ga;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/b/ga;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/a/a/b/ge;->a()Lcom/a/a/b/ga;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/b/ga;->isEmpty()Z

    move-result v0

    return v0
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
    .line 717
    invoke-virtual {p0}, Lcom/a/a/b/ge;->a()Lcom/a/a/b/ga;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/b/ga;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/a/a/b/gf;

    invoke-direct {v1, p0}, Lcom/a/a/b/gf;-><init>(Lcom/a/a/b/ge;)V

    invoke-static {v0, v1}, Lcom/a/a/b/er;->a(Ljava/util/Iterator;Lcom/a/a/a/g;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 727
    .local p0, this:Lcom/a/a/b/ge;,"Lcom/a/a/b/ge<TE;>;"
    invoke-virtual {p0}, Lcom/a/a/b/ge;->a()Lcom/a/a/b/ga;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/b/ga;->a(Ljava/lang/Object;)I

    move-result v0

    .line 728
    if-lez v0, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/a/a/b/ge;->a()Lcom/a/a/b/ga;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/a/a/b/ga;->b(Ljava/lang/Object;I)I

    .line 730
    const/4 v0, 0x1

    .line 732
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/a/a/b/ge;->a()Lcom/a/a/b/ga;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/b/ga;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
