.class Lcom/a/a/b/v;
.super Lcom/a/a/b/gg;
.source "AbstractMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/gg",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/t;


# direct methods
.method constructor <init>(Lcom/a/a/b/t;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/a/a/b/v;->a:Lcom/a/a/b/t;

    invoke-direct {p0}, Lcom/a/a/b/gg;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/a/a/b/ga;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/ga",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/a/a/b/v;->a:Lcom/a/a/b/t;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/a/a/b/gb",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/a/a/b/v;->a:Lcom/a/a/b/t;

    invoke-virtual {v0}, Lcom/a/a/b/t;->c()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/a/a/b/v;->a:Lcom/a/a/b/t;

    invoke-virtual {v0}, Lcom/a/a/b/t;->d()I

    move-result v0

    return v0
.end method
