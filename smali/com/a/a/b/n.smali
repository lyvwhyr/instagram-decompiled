.class Lcom/a/a/b/n;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/a/a/b/gb",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TE;",
            "Lcom/a/a/b/ag;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/a/a/b/m;


# direct methods
.method constructor <init>(Lcom/a/a/b/m;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/a/a/b/n;->c:Lcom/a/a/b/m;

    iput-object p2, p0, Lcom/a/a/b/n;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/b/gb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/gb",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/a/a/b/n;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    iput-object v0, p0, Lcom/a/a/b/n;->a:Ljava/util/Map$Entry;

    .line 106
    new-instance v1, Lcom/a/a/b/o;

    invoke-direct {v1, p0, v0}, Lcom/a/a/b/o;-><init>(Lcom/a/a/b/n;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/a/a/b/n;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/a/a/b/n;->a()Lcom/a/a/b/gb;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/a/a/b/n;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v0, v2}, Lcom/a/a/a/t;->b(ZLjava/lang/Object;)V

    .line 129
    iget-object v2, p0, Lcom/a/a/b/n;->c:Lcom/a/a/b/m;

    iget-object v0, p0, Lcom/a/a/b/n;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/ag;

    invoke-virtual {v0, v1}, Lcom/a/a/b/ag;->d(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/a/a/b/m;->a(Lcom/a/a/b/m;J)J

    .line 130
    iget-object v0, p0, Lcom/a/a/b/n;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/n;->a:Ljava/util/Map$Entry;

    .line 132
    return-void

    :cond_0
    move v0, v1

    .line 127
    goto :goto_0
.end method
