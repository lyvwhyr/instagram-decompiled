.class Lcom/a/a/b/fb;
.super Ljava/util/AbstractSet;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/ez;


# direct methods
.method constructor <init>(Lcom/a/a/b/ez;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/a/a/b/fb;->a:Lcom/a/a/b/ez;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 688
    .local p0, this:Lcom/a/a/b/fb;,"Lcom/a/a/b/ez.com/a/a/b/fb;"
    iget-object v0, p0, Lcom/a/a/b/fb;->a:Lcom/a/a/b/ez;

    invoke-static {v0}, Lcom/a/a/b/ez;->c(Lcom/a/a/b/ez;)Lcom/a/a/b/ga;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/b/ga;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 685
    new-instance v0, Lcom/a/a/b/fg;

    iget-object v1, p0, Lcom/a/a/b/fb;->a:Lcom/a/a/b/ez;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/fg;-><init>(Lcom/a/a/b/ez;Lcom/a/a/b/fa;)V

    return-object v0
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
    .line 691
    .local p0, this:Lcom/a/a/b/fb;,"Lcom/a/a/b/ez.com/a/a/b/fb;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/a/a/b/fb;->a:Lcom/a/a/b/ez;

    invoke-static {v0}, Lcom/a/a/b/ez;->c(Lcom/a/a/b/ez;)Lcom/a/a/b/ga;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/b/ga;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
