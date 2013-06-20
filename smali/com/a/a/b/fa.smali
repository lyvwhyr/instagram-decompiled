.class Lcom/a/a/b/fa;
.super Ljava/util/AbstractSequentialList;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSequentialList",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/a/a/b/ez;


# direct methods
.method constructor <init>(Lcom/a/a/b/ez;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/a/a/b/fa;->b:Lcom/a/a/b/ez;

    iput-object p2, p0, Lcom/a/a/b/fa;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, this:Lcom/a/a/b/fa;,"Lcom/a/a/b/ez.com/a/a/b/fa;"
    new-instance v0, Lcom/a/a/b/fi;

    iget-object v1, p0, Lcom/a/a/b/fa;->b:Lcom/a/a/b/ez;

    iget-object v2, p0, Lcom/a/a/b/fa;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lcom/a/a/b/fi;-><init>(Lcom/a/a/b/ez;Ljava/lang/Object;I)V

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
    .line 666
    .local p0, this:Lcom/a/a/b/fa;,"Lcom/a/a/b/ez.com/a/a/b/fa;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/a/a/b/fa;->iterator()Ljava/util/Iterator;

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
    .line 669
    .local p0, this:Lcom/a/a/b/fa;,"Lcom/a/a/b/ez.com/a/a/b/fa;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/a/a/b/fa;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/a/b/er;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/a/a/b/fa;->b:Lcom/a/a/b/ez;

    invoke-static {v0}, Lcom/a/a/b/ez;->c(Lcom/a/a/b/ez;)Lcom/a/a/b/ga;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b/fa;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/a/a/b/ga;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
