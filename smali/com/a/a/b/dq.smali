.class public abstract Lcom/a/a/b/dq;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"

# interfaces
.implements Lcom/a/a/b/fz;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/b/fz",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final transient a:Lcom/a/a/b/do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/do",
            "<TK;+",
            "Lcom/a/a/b/dg",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final transient b:I


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/a/a/b/dq;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/a/a/b/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/do",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/a/a/b/dq;->a:Lcom/a/a/b/do;

    return-object v0
.end method

.method public synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/a/a/b/dq;->b()Lcom/a/a/b/do;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 427
    .local p0, this:Lcom/a/a/b/dq;,"Lcom/a/a/b/dq<TK;TV;>;"
    instance-of v0, p1, Lcom/a/a/b/fz;

    if-eqz v0, :cond_0

    .line 428
    check-cast p1, Lcom/a/a/b/fz;

    .line 429
    .end local p1
    iget-object v0, p0, Lcom/a/a/b/dq;->a:Lcom/a/a/b/do;

    invoke-interface {p1}, Lcom/a/a/b/fz;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/b/do;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 431
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/a/a/b/dq;->a:Lcom/a/a/b/do;

    invoke-virtual {v0}, Lcom/a/a/b/do;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/a/a/b/dq;->a:Lcom/a/a/b/do;

    invoke-virtual {v0}, Lcom/a/a/b/do;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
