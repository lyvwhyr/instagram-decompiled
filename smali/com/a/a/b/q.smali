.class Lcom/a/a/b/q;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
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

.field final synthetic c:Lcom/a/a/b/p;


# direct methods
.method constructor <init>(Lcom/a/a/b/p;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/a/a/b/q;->c:Lcom/a/a/b/p;

    iput-object p2, p0, Lcom/a/a/b/q;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/a/a/b/q;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/a/a/b/q;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/a/a/b/q;->a:Ljava/util/Map$Entry;

    .line 354
    iget-object v0, p0, Lcom/a/a/b/q;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-object v0, p0, Lcom/a/a/b/q;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v0, v2}, Lcom/a/a/a/t;->b(ZLjava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/a/a/b/q;->c:Lcom/a/a/b/p;

    iget-object v2, v0, Lcom/a/a/b/p;->a:Lcom/a/a/b/m;

    iget-object v0, p0, Lcom/a/a/b/q;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/ag;

    invoke-virtual {v0, v1}, Lcom/a/a/b/ag;->d(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/a/a/b/m;->a(Lcom/a/a/b/m;J)J

    .line 362
    iget-object v0, p0, Lcom/a/a/b/q;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/q;->a:Ljava/util/Map$Entry;

    .line 364
    return-void

    :cond_0
    move v0, v1

    .line 359
    goto :goto_0
.end method
