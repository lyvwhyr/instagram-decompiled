.class Lcom/a/a/b/ff;
.super Lcom/a/a/b/s;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/s",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/a/a/b/fe;


# direct methods
.method constructor <init>(Lcom/a/a/b/fe;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/a/a/b/ff;->b:Lcom/a/a/b/fe;

    iput-object p2, p0, Lcom/a/a/b/ff;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/a/a/b/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/a/a/b/ff;->b:Lcom/a/a/b/fe;

    iget-object v0, v0, Lcom/a/a/b/fe;->b:Lcom/a/a/b/fd;

    iget-object v0, v0, Lcom/a/a/b/fd;->a:Lcom/a/a/b/ez;

    iget-object v1, p0, Lcom/a/a/b/ff;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/a/a/b/ez;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/a/a/b/ff;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1012
    invoke-virtual {p0}, Lcom/a/a/b/ff;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
