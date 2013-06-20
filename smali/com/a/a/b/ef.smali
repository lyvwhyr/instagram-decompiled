.class Lcom/a/a/b/ef;
.super Lcom/a/a/b/id;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/id",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/id;

.field final synthetic b:Lcom/a/a/b/ec;


# direct methods
.method constructor <init>(Lcom/a/a/b/ec;Lcom/a/a/b/id;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/a/a/b/ef;->b:Lcom/a/a/b/ec;

    iput-object p2, p0, Lcom/a/a/b/ef;->a:Lcom/a/a/b/id;

    invoke-direct {p0}, Lcom/a/a/b/id;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/a/a/b/ef;->a:Lcom/a/a/b/id;

    invoke-virtual {v0}, Lcom/a/a/b/id;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lcom/a/a/b/ef;->a:Lcom/a/a/b/id;

    invoke-virtual {v0}, Lcom/a/a/b/id;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
