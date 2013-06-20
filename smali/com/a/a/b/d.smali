.class Lcom/a/a/b/d;
.super Ljava/lang/Object;
.source "AbstractBiMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/a/a/b/c;


# direct methods
.method constructor <init>(Lcom/a/a/b/c;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/a/a/b/d;->c:Lcom/a/a/b/c;

    iput-object p2, p0, Lcom/a/a/b/d;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/a/a/b/d;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/a/a/b/d;->a:Ljava/util/Map$Entry;

    .line 315
    iget-object v0, p0, Lcom/a/a/b/d;->a:Ljava/util/Map$Entry;

    .line 317
    new-instance v1, Lcom/a/a/b/e;

    invoke-direct {v1, p0, v0}, Lcom/a/a/b/e;-><init>(Lcom/a/a/b/d;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/a/a/b/d;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/a/a/b/d;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/a/a/b/d;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/a/a/a/t;->b(Z)V

    .line 342
    iget-object v0, p0, Lcom/a/a/b/d;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/a/a/b/d;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 344
    iget-object v1, p0, Lcom/a/a/b/d;->c:Lcom/a/a/b/c;

    iget-object v1, v1, Lcom/a/a/b/c;->b:Lcom/a/a/b/a;

    invoke-static {v1, v0}, Lcom/a/a/b/a;->b(Lcom/a/a/b/a;Ljava/lang/Object;)V

    .line 345
    return-void

    .line 341
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
