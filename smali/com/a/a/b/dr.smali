.class public abstract Lcom/a/a/b/dr;
.super Lcom/a/a/b/dg;
.source "ImmutableMultiset.java"

# interfaces
.implements Lcom/a/a/b/ga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dg",
        "<TE;>;",
        "Lcom/a/a/b/ga",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient a:Lcom/a/a/b/dv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/dv",
            "<",
            "Lcom/a/a/b/gb",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/a/a/b/dg;-><init>()V

    return-void
.end method

.method private static a(Lcom/a/a/b/ga;)Lcom/a/a/b/dr;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/ga",
            "<+TE;>;)",
            "Lcom/a/a/b/dr",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 203
    .line 204
    invoke-static {}, Lcom/a/a/b/do;->k()Lcom/a/a/b/dp;

    move-result-object v5

    .line 206
    invoke-interface {p0}, Lcom/a/a/b/ga;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v1, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/gb;

    .line 207
    invoke-interface {v0}, Lcom/a/a/b/gb;->b()I

    move-result v7

    .line 208
    if-lez v7, :cond_2

    .line 211
    invoke-interface {v0}, Lcom/a/a/b/gb;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Lcom/a/a/b/dp;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/dp;

    .line 212
    int-to-long v7, v7

    add-long v0, v1, v7

    :goto_1
    move-wide v1, v0

    .line 214
    goto :goto_0

    .line 216
    :cond_0
    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 217
    invoke-static {}, Lcom/a/a/b/dr;->j()Lcom/a/a/b/dr;

    move-result-object v0

    .line 219
    :goto_2
    return-object v0

    :cond_1
    new-instance v0, Lcom/a/a/b/gy;

    invoke-virtual {v5}, Lcom/a/a/b/dp;->b()Lcom/a/a/b/do;

    move-result-object v3

    invoke-static {v1, v2}, Lcom/a/a/d/a;->a(J)I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/a/a/b/gy;-><init>(Lcom/a/a/b/do;I)V

    goto :goto_2

    :cond_2
    move-wide v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/a/a/b/dr;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/a/a/b/dr",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 182
    instance-of v0, p0, Lcom/a/a/b/dr;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 184
    check-cast v0, Lcom/a/a/b/dr;

    .line 185
    invoke-virtual {v0}, Lcom/a/a/b/dr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    :goto_0
    return-object v0

    .line 190
    :cond_0
    instance-of v0, p0, Lcom/a/a/b/ga;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/a/a/b/gc;->b(Ljava/lang/Iterable;)Lcom/a/a/b/ga;

    move-result-object v0

    .line 194
    :goto_1
    invoke-static {v0}, Lcom/a/a/b/dr;->a(Lcom/a/a/b/ga;)Lcom/a/a/b/dr;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_1
    invoke-static {p0}, Lcom/a/a/b/ey;->a(Ljava/lang/Iterable;)Lcom/a/a/b/ey;

    move-result-object v0

    goto :goto_1
.end method

.method public static j()Lcom/a/a/b/dr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/b/dr",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/a/a/b/cm;->a:Lcom/a/a/b/cm;

    return-object v0
.end method

.method public static k()Lcom/a/a/b/dt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/b/dt",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 492
    new-instance v0, Lcom/a/a/b/dt;

    invoke-direct {v0}, Lcom/a/a/b/dt;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a_()Lcom/a/a/b/id;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/id",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/a/a/b/dr;->d()Lcom/a/a/b/id;

    move-result-object v0

    .line 245
    new-instance v1, Lcom/a/a/b/ds;

    invoke-direct {v1, p0, v0}, Lcom/a/a/b/ds;-><init>(Lcom/a/a/b/dr;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final b(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 294
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/a/a/b/gb",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/a/a/b/dr;->a:Lcom/a/a/b/dv;

    .line 349
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/b/dr;->g()Lcom/a/a/b/dv;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/dr;->a:Lcom/a/a/b/dv;

    :cond_0
    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 269
    .local p0, this:Lcom/a/a/b/dr;,"Lcom/a/a/b/dr<TE;>;"
    invoke-virtual {p0, p1}, Lcom/a/a/b/dr;->a(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, this:Lcom/a/a/b/dr;,"Lcom/a/a/b/dr<TE;>;"
    .local p1, targets:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/a/a/b/dr;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method abstract d()Lcom/a/a/b/id;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/id",
            "<",
            "Lcom/a/a/b/gb",
            "<TE;>;>;"
        }
    .end annotation
.end method

.method abstract e()I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/a/a/b/dr;,"Lcom/a/a/b/dr<TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 318
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 333
    .end local p1
    :goto_0
    return v0

    .line 321
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/a/a/b/ga;

    if-eqz v0, :cond_4

    .line 322
    check-cast p1, Lcom/a/a/b/ga;

    .line 323
    .end local p1
    invoke-virtual {p0}, Lcom/a/a/b/dr;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/a/a/b/ga;->size()I

    move-result v3

    if-eq v0, v3, :cond_1

    move v0, v2

    .line 324
    goto :goto_0

    .line 326
    :cond_1
    invoke-interface {p1}, Lcom/a/a/b/ga;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/gb;

    .line 327
    invoke-interface {v0}, Lcom/a/a/b/gb;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/a/a/b/dr;->a(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0}, Lcom/a/a/b/gb;->b()I

    move-result v0

    if-eq v4, v0, :cond_2

    move v0, v2

    .line 328
    goto :goto_0

    :cond_3
    move v0, v1

    .line 331
    goto :goto_0

    .restart local p1
    :cond_4
    move v0, v2

    .line 333
    goto :goto_0
.end method

.method g()Lcom/a/a/b/dv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dv",
            "<",
            "Lcom/a/a/b/gb",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lcom/a/a/b/du;

    invoke-direct {v0, p0}, Lcom/a/a/b/du;-><init>(Lcom/a/a/b/dr;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/a/a/b/dr;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/b/hd;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/a/a/b/dr;->a_()Lcom/a/a/b/id;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/a/a/b/dr;->b()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
