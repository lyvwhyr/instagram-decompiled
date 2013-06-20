.class public final Lcom/a/a/b/gc;
.super Ljava/lang/Object;
.source "Multisets.java"


# direct methods
.method static a(Ljava/lang/Iterable;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 368
    instance-of v0, p0, Lcom/a/a/b/ga;

    if-eqz v0, :cond_0

    .line 369
    check-cast p0, Lcom/a/a/b/ga;

    invoke-interface {p0}, Lcom/a/a/b/ga;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 371
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;I)Lcom/a/a/b/gb;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lcom/a/a/b/gb",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Lcom/a/a/b/gh;

    invoke-direct {v0, p0, p1}, Lcom/a/a/b/gh;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method static a(Lcom/a/a/b/ga;)Ljava/util/Iterator;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/ga",
            "<TE;>;)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 772
    new-instance v0, Lcom/a/a/b/gi;

    invoke-interface {p0}, Lcom/a/a/b/ga;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/gi;-><init>(Lcom/a/a/b/ga;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static a(Lcom/a/a/b/ga;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/ga",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 597
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 619
    :goto_0
    return v0

    .line 600
    :cond_0
    instance-of v0, p1, Lcom/a/a/b/ga;

    if-eqz v0, :cond_5

    .line 601
    check-cast p1, Lcom/a/a/b/ga;

    .line 608
    invoke-interface {p0}, Lcom/a/a/b/ga;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/a/a/b/ga;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    invoke-interface {p0}, Lcom/a/a/b/ga;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/a/a/b/ga;->b()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    :cond_1
    move v0, v2

    .line 610
    goto :goto_0

    .line 612
    :cond_2
    invoke-interface {p1}, Lcom/a/a/b/ga;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/gb;

    .line 613
    invoke-interface {v0}, Lcom/a/a/b/gb;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/a/a/b/ga;->a(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0}, Lcom/a/a/b/gb;->b()I

    move-result v0

    if-eq v4, v0, :cond_3

    move v0, v2

    .line 614
    goto :goto_0

    :cond_4
    move v0, v1

    .line 617
    goto :goto_0

    :cond_5
    move v0, v2

    .line 619
    goto :goto_0
.end method

.method static a(Lcom/a/a/b/ga;Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/ga",
            "<TE;>;",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 627
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    const/4 v0, 0x0

    .line 638
    :goto_0
    return v0

    .line 630
    :cond_0
    instance-of v0, p1, Lcom/a/a/b/ga;

    if-eqz v0, :cond_1

    .line 631
    invoke-static {p1}, Lcom/a/a/b/gc;->b(Ljava/lang/Iterable;)Lcom/a/a/b/ga;

    move-result-object v0

    .line 632
    invoke-interface {v0}, Lcom/a/a/b/ga;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/gb;

    .line 633
    invoke-interface {v0}, Lcom/a/a/b/gb;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/a/a/b/gb;->b()I

    move-result v0

    invoke-interface {p0, v2, v0}, Lcom/a/a/b/ga;->a(Ljava/lang/Object;I)I

    goto :goto_1

    .line 636
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/a/a/b/er;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 638
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static b(Lcom/a/a/b/ga;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/ga",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 829
    const-wide/16 v0, 0x0

    .line 830
    invoke-interface {p0}, Lcom/a/a/b/ga;->b()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/gb;

    .line 831
    invoke-interface {v0}, Lcom/a/a/b/gb;->b()I

    move-result v0

    int-to-long v4, v0

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    .line 833
    :cond_0
    invoke-static {v1, v2}, Lcom/a/a/d/a;->a(J)I

    move-result v0

    return v0
.end method

.method static b(Ljava/lang/Iterable;)Lcom/a/a/b/ga;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lcom/a/a/b/ga",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 844
    check-cast p0, Lcom/a/a/b/ga;

    return-object p0
.end method

.method static b(Lcom/a/a/b/ga;Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/ga",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 646
    instance-of v0, p1, Lcom/a/a/b/ga;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/a/a/b/ga;

    invoke-interface {p1}, Lcom/a/a/b/ga;->f()Ljava/util/Set;

    move-result-object p1

    .line 649
    :cond_0
    invoke-interface {p0}, Lcom/a/a/b/ga;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static c(Lcom/a/a/b/ga;Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/ga",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 657
    instance-of v0, p1, Lcom/a/a/b/ga;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/a/a/b/ga;

    invoke-interface {p1}, Lcom/a/a/b/ga;->f()Ljava/util/Set;

    move-result-object p1

    .line 660
    :cond_0
    invoke-interface {p0}, Lcom/a/a/b/ga;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
