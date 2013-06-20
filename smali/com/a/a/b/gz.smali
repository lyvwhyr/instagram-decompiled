.class Lcom/a/a/b/gz;
.super Lcom/a/a/b/id;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/id",
        "<",
        "Lcom/a/a/b/gb",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/a/a/b/gy;


# direct methods
.method constructor <init>(Lcom/a/a/b/gy;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/a/a/b/gz;->b:Lcom/a/a/b/gy;

    iput-object p2, p0, Lcom/a/a/b/gz;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/a/a/b/id;-><init>()V

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
    .line 82
    iget-object v0, p0, Lcom/a/a/b/gz;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/a/a/b/gc;->a(Ljava/lang/Object;I)Lcom/a/a/b/gb;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/a/a/b/gz;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/a/a/b/gz;->a()Lcom/a/a/b/gb;

    move-result-object v0

    return-object v0
.end method
