.class final Lcom/a/a/b/cc;
.super Ljava/util/AbstractCollection;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/ah;


# direct methods
.method constructor <init>(Lcom/a/a/b/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 3857
    iput-object p1, p0, Lcom/a/a/b/cc;->a:Lcom/a/a/b/ah;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3881
    iget-object v0, p0, Lcom/a/a/b/cc;->a:Lcom/a/a/b/ah;

    invoke-virtual {v0}, Lcom/a/a/b/ah;->clear()V

    .line 3882
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 3876
    .local p0, this:Lcom/a/a/b/cc;,"Lcom/a/a/b/ah<TK;TV;>.com/a/a/b/cc;"
    iget-object v0, p0, Lcom/a/a/b/cc;->a:Lcom/a/a/b/ah;

    invoke-virtual {v0, p1}, Lcom/a/a/b/ah;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3871
    iget-object v0, p0, Lcom/a/a/b/cc;->a:Lcom/a/a/b/ah;

    invoke-virtual {v0}, Lcom/a/a/b/ah;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3861
    new-instance v0, Lcom/a/a/b/ca;

    iget-object v1, p0, Lcom/a/a/b/cc;->a:Lcom/a/a/b/ah;

    invoke-direct {v0, v1}, Lcom/a/a/b/ca;-><init>(Lcom/a/a/b/ah;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3866
    iget-object v0, p0, Lcom/a/a/b/cc;->a:Lcom/a/a/b/ah;

    invoke-virtual {v0}, Lcom/a/a/b/ah;->size()I

    move-result v0

    return v0
.end method
