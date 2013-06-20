.class Lcom/a/a/b/o;
.super Lcom/a/a/b/gd;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/gd",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/a/a/b/n;


# direct methods
.method constructor <init>(Lcom/a/a/b/n;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/a/a/b/o;->b:Lcom/a/a/b/n;

    iput-object p2, p0, Lcom/a/a/b/o;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/a/a/b/gd;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/a/a/b/o;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/a/a/b/o;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/ag;

    invoke-virtual {v0}, Lcom/a/a/b/ag;->a()I

    move-result v1

    .line 114
    if-nez v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/a/a/b/o;->b:Lcom/a/a/b/n;

    iget-object v0, v0, Lcom/a/a/b/n;->c:Lcom/a/a/b/m;

    invoke-static {v0}, Lcom/a/a/b/m;->a(Lcom/a/a/b/m;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/b/o;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/ag;

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/a/a/b/ag;->a()I

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
