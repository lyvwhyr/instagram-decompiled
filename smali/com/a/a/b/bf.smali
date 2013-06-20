.class Lcom/a/a/b/bf;
.super Lcom/a/a/b/l;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/l",
        "<",
        "Lcom/a/a/b/bk",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/bd;


# direct methods
.method constructor <init>(Lcom/a/a/b/bd;Lcom/a/a/b/bk;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3399
    iput-object p1, p0, Lcom/a/a/b/bf;->a:Lcom/a/a/b/bd;

    invoke-direct {p0, p2}, Lcom/a/a/b/l;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/b/bk;)Lcom/a/a/b/bk;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3402
    invoke-interface {p1}, Lcom/a/a/b/bk;->f()Lcom/a/a/b/bk;

    move-result-object v0

    .line 3403
    iget-object v1, p0, Lcom/a/a/b/bf;->a:Lcom/a/a/b/bd;

    iget-object v1, v1, Lcom/a/a/b/bd;->a:Lcom/a/a/b/bk;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 3399
    check-cast p1, Lcom/a/a/b/bk;

    invoke-virtual {p0, p1}, Lcom/a/a/b/bf;->a(Lcom/a/a/b/bk;)Lcom/a/a/b/bk;

    move-result-object v0

    return-object v0
.end method
