.class Lcom/a/a/b/e;
.super Lcom/a/a/b/cu;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/cu",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/a/a/b/d;


# direct methods
.method constructor <init>(Lcom/a/a/b/d;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/a/a/b/e;->b:Lcom/a/a/b/d;

    iput-object p2, p0, Lcom/a/a/b/e;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/a/a/b/cu;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/a/a/b/e;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/a/a/b/e;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/a/a/b/e;,"Lcom/a/a/b/d.com/a/a/b/e;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 324
    iget-object v0, p0, Lcom/a/a/b/e;->b:Lcom/a/a/b/d;

    iget-object v0, v0, Lcom/a/a/b/d;->c:Lcom/a/a/b/c;

    invoke-virtual {v0, p0}, Lcom/a/a/b/c;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "entry no longer in map"

    invoke-static {v0, v3}, Lcom/a/a/a/t;->b(ZLjava/lang/Object;)V

    .line 326
    invoke-virtual {p0}, Lcom/a/a/b/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/a/a/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    .end local p1           #value:Ljava/lang/Object;,"TV;"
    :goto_0
    return-object p1

    .line 329
    .restart local p1       #value:Ljava/lang/Object;,"TV;"
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/e;->b:Lcom/a/a/b/d;

    iget-object v0, v0, Lcom/a/a/b/d;->c:Lcom/a/a/b/c;

    iget-object v0, v0, Lcom/a/a/b/c;->b:Lcom/a/a/b/a;

    invoke-virtual {v0, p1}, Lcom/a/a/b/a;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "value already present: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/a/a/a/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/a/a/b/e;->a:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 332
    iget-object v2, p0, Lcom/a/a/b/e;->b:Lcom/a/a/b/d;

    iget-object v2, v2, Lcom/a/a/b/d;->c:Lcom/a/a/b/c;

    iget-object v2, v2, Lcom/a/a/b/c;->b:Lcom/a/a/b/a;

    invoke-virtual {p0}, Lcom/a/a/b/e;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/a/a/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/a/a/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "entry no longer in map"

    invoke-static {v2, v3}, Lcom/a/a/a/t;->b(ZLjava/lang/Object;)V

    .line 334
    iget-object v2, p0, Lcom/a/a/b/e;->b:Lcom/a/a/b/d;

    iget-object v2, v2, Lcom/a/a/b/d;->c:Lcom/a/a/b/c;

    iget-object v2, v2, Lcom/a/a/b/c;->b:Lcom/a/a/b/a;

    invoke-virtual {p0}, Lcom/a/a/b/e;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, v1, v0, p1}, Lcom/a/a/b/a;->a(Lcom/a/a/b/a;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    .line 335
    goto :goto_0

    :cond_1
    move v0, v2

    .line 329
    goto :goto_1
.end method
