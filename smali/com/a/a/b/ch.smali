.class final Lcom/a/a/b/ch;
.super Ljava/lang/ref/WeakReference;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/a/a/b/cb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TV;>;",
        "Lcom/a/a/b/cb",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/a/a/b/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/a/a/b/bk;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1743
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1744
    iput-object p3, p0, Lcom/a/a/b/ch;->a:Lcom/a/a/b/bk;

    .line 1745
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/b/bk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/a/a/b/ch;->a:Lcom/a/a/b/bk;

    return-object v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/a/a/b/bk;)Lcom/a/a/b/cb;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)",
            "Lcom/a/a/b/cb",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1760
    new-instance v0, Lcom/a/a/b/ch;

    invoke-virtual {p0}, Lcom/a/a/b/ch;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/a/a/b/ch;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/a/a/b/bk;)V

    return-object v0
.end method

.method public a(Lcom/a/a/b/cb;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/cb",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1754
    invoke-virtual {p0}, Lcom/a/a/b/ch;->clear()V

    .line 1755
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1765
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/a/a/b/ch;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
