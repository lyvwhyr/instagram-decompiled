.class final Lcom/a/a/b/hk;
.super Ljava/lang/Object;
.source "SortedIterables.java"


# direct methods
.method public static a(Ljava/util/Comparator;Ljava/util/Iterator;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/util/Iterator",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p0}, Lcom/a/a/b/hd;->a(Ljava/util/Comparator;)Ljava/util/TreeSet;

    move-result-object v0

    .line 71
    invoke-static {v0, p1}, Lcom/a/a/b/er;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 72
    return-object v0
.end method

.method public static a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p0}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    .line 50
    check-cast p1, Ljava/util/SortedSet;

    .line 51
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/a/a/b/gl;->a()Lcom/a/a/b/gl;

    move-result-object v0

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 55
    :cond_1
    instance-of v0, p1, Lcom/a/a/b/hj;

    if-eqz v0, :cond_2

    .line 56
    check-cast p1, Lcom/a/a/b/hj;

    invoke-interface {p1}, Lcom/a/a/b/hj;->comparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
