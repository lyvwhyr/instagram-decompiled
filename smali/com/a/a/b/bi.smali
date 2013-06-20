.class final Lcom/a/a/b/bi;
.super Ljava/util/AbstractSet;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/ah;


# direct methods
.method constructor <init>(Lcom/a/a/b/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 3824
    iput-object p1, p0, Lcom/a/a/b/bi;->a:Lcom/a/a/b/ah;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3853
    iget-object v0, p0, Lcom/a/a/b/bi;->a:Lcom/a/a/b/ah;

    invoke-virtual {v0}, Lcom/a/a/b/ah;->clear()V

    .line 3854
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 3843
    .local p0, this:Lcom/a/a/b/bi;,"Lcom/a/a/b/ah<TK;TV;>.com/a/a/b/bi;"
    iget-object v0, p0, Lcom/a/a/b/bi;->a:Lcom/a/a/b/ah;

    invoke-virtual {v0, p1}, Lcom/a/a/b/ah;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3838
    iget-object v0, p0, Lcom/a/a/b/bi;->a:Lcom/a/a/b/ah;

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
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3828
    new-instance v0, Lcom/a/a/b/bh;

    iget-object v1, p0, Lcom/a/a/b/bi;->a:Lcom/a/a/b/ah;

    invoke-direct {v0, v1}, Lcom/a/a/b/bh;-><init>(Lcom/a/a/b/ah;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 3848
    .local p0, this:Lcom/a/a/b/bi;,"Lcom/a/a/b/ah<TK;TV;>.com/a/a/b/bi;"
    iget-object v0, p0, Lcom/a/a/b/bi;->a:Lcom/a/a/b/ah;

    invoke-virtual {v0, p1}, Lcom/a/a/b/ah;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3833
    iget-object v0, p0, Lcom/a/a/b/bi;->a:Lcom/a/a/b/ah;

    invoke-virtual {v0}, Lcom/a/a/b/ah;->size()I

    move-result v0

    return v0
.end method
