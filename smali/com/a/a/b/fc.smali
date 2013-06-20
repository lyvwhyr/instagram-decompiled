.class Lcom/a/a/b/fc;
.super Ljava/util/AbstractMap;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/a/a/b/ez;


# direct methods
.method constructor <init>(Lcom/a/a/b/ez;)V
    .locals 0
    .parameter

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/a/a/b/fc;->b:Lcom/a/a/b/ez;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/a/a/b/fc;->b:Lcom/a/a/b/ez;

    invoke-virtual {v0, p1}, Lcom/a/a/b/ez;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1059
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/a/a/b/fc;->b:Lcom/a/a/b/ez;

    invoke-virtual {v0, p1}, Lcom/a/a/b/ez;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1064
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1053
    .local p0, this:Lcom/a/a/b/fc;,"Lcom/a/a/b/ez.com/a/a/b/fc;"
    iget-object v0, p0, Lcom/a/a/b/fc;->b:Lcom/a/a/b/ez;

    invoke-virtual {v0, p1}, Lcom/a/a/b/ez;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/a/a/b/fc;->a:Ljava/util/Set;

    .line 1044
    if-nez v0, :cond_0

    .line 1045
    new-instance v0, Lcom/a/a/b/fd;

    iget-object v1, p0, Lcom/a/a/b/fc;->b:Lcom/a/a/b/ez;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/fd;-><init>(Lcom/a/a/b/ez;Lcom/a/a/b/fa;)V

    iput-object v0, p0, Lcom/a/a/b/fc;->a:Ljava/util/Set;

    .line 1047
    :cond_0
    return-object v0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1039
    .local p0, this:Lcom/a/a/b/fc;,"Lcom/a/a/b/ez.com/a/a/b/fc;"
    invoke-virtual {p0, p1}, Lcom/a/a/b/fc;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1039
    .local p0, this:Lcom/a/a/b/fc;,"Lcom/a/a/b/ez.com/a/a/b/fc;"
    invoke-virtual {p0, p1}, Lcom/a/a/b/fc;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
