.class public Lcom/a/a/b/eh;
.super Lcom/a/a/b/dp;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dp",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/a/a/b/dp;-><init>()V

    .line 359
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/a/a/b/eh;->b:Ljava/util/Comparator;

    .line 360
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/b/ec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/ec",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/a/a/b/eh;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/a/a/b/eh;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/a/a/b/ec;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 394
    iget-object v0, p0, Lcom/a/a/b/eh;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/a/a/b/eh;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/a/a/b/ec;->b(Ljava/util/List;Ljava/util/Comparator;)V

    .line 395
    new-instance v0, Lcom/a/a/b/ec;

    iget-object v1, p0, Lcom/a/a/b/eh;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/a/a/b/dl;->a(Ljava/util/Collection;)Lcom/a/a/b/dl;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/eh;->b:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/ec;-><init>(Lcom/a/a/b/dl;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/eh;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/a/a/b/eh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/a/a/b/eh;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/a/a/b/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    return-object p0
.end method

.method public synthetic b()Lcom/a/a/b/do;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/a/a/b/eh;->a()Lcom/a/a/b/ec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/dp;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 351
    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/eh;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/eh;

    move-result-object v0

    return-object v0
.end method
