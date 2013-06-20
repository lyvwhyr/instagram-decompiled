.class Lcom/a/a/b/ei;
.super Lcom/a/a/b/dv;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dv",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final transient a:Lcom/a/a/b/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/ec",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/b/ec;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/ec",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/a/a/b/dv;-><init>()V

    .line 467
    iput-object p1, p0, Lcom/a/a/b/ei;->a:Lcom/a/a/b/ec;

    .line 468
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/a/a/b/ei;->a:Lcom/a/a/b/ec;

    invoke-virtual {v0}, Lcom/a/a/b/ec;->d()Z

    move-result v0

    return v0
.end method

.method public a_()Lcom/a/a/b/id;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/id",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/a/a/b/ei;->a:Lcom/a/a/b/ec;

    iget-object v0, v0, Lcom/a/a/b/ec;->a:Lcom/a/a/b/dl;

    invoke-virtual {v0}, Lcom/a/a/b/dl;->a_()Lcom/a/a/b/id;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter "target"

    .prologue
    .local p0, this:Lcom/a/a/b/ei;,"Lcom/a/a/b/ei<TK;TV;>;"
    const/4 v0, 0x0

    .line 484
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 485
    check-cast p1, Ljava/util/Map$Entry;

    .line 486
    .end local p1
    iget-object v1, p0, Lcom/a/a/b/ei;->a:Lcom/a/a/b/ec;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/b/ec;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 487
    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 489
    :cond_0
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/a/a/b/ei;->a_()Lcom/a/a/b/id;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/a/a/b/ei;->a:Lcom/a/a/b/ec;

    invoke-virtual {v0}, Lcom/a/a/b/ec;->size()I

    move-result v0

    return v0
.end method
