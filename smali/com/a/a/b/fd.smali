.class Lcom/a/a/b/fd;
.super Ljava/util/AbstractSet;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/ez;


# direct methods
.method private constructor <init>(Lcom/a/a/b/ez;)V
    .locals 0
    .parameter

    .prologue
    .line 996
    iput-object p1, p0, Lcom/a/a/b/fd;->a:Lcom/a/a/b/ez;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/b/ez;Lcom/a/a/b/fa;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lcom/a/a/b/fd;-><init>(Lcom/a/a/b/ez;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1002
    new-instance v0, Lcom/a/a/b/fg;

    iget-object v1, p0, Lcom/a/a/b/fd;->a:Lcom/a/a/b/ez;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/fg;-><init>(Lcom/a/a/b/ez;Lcom/a/a/b/fa;)V

    .line 1003
    new-instance v1, Lcom/a/a/b/fe;

    invoke-direct {v1, p0, v0}, Lcom/a/a/b/fe;-><init>(Lcom/a/a/b/fd;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/a/a/b/fd;->a:Lcom/a/a/b/ez;

    invoke-static {v0}, Lcom/a/a/b/ez;->c(Lcom/a/a/b/ez;)Lcom/a/a/b/ga;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/b/ga;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
