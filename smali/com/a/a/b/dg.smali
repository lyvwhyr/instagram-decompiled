.class public abstract Lcom/a/a/b/dg;
.super Ljava/lang/Object;
.source "ImmutableCollection.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Collection",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final c:Lcom/a/a/b/dg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/dg",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient a:Lcom/a/a/b/dl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/dl",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/a/a/b/dj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/b/dj;-><init>(Lcom/a/a/b/dh;)V

    sput-object v0, Lcom/a/a/b/dg;->c:Lcom/a/a/b/dg;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Z
.end method

.method public abstract a_()Lcom/a/a/b/id;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/id",
            "<TE;>;"
        }
    .end annotation
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Lcom/a/a/b/dg;,"Lcom/a/a/b/dg<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, this:Lcom/a/a/b/dg;,"Lcom/a/a/b/dg<TE;>;"
    .local p1, newElements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 67
    .local p0, this:Lcom/a/a/b/dg;,"Lcom/a/a/b/dg<TE;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/b/dg;->a_()Lcom/a/a/b/id;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/a/b/er;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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
    .line 72
    .local p0, this:Lcom/a/a/b/dg;,"Lcom/a/a/b/dg<TE;>;"
    .local p1, targets:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/a/a/b/x;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public h()Lcom/a/a/b/dl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dl",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/a/a/b/dg;->a:Lcom/a/a/b/dl;

    .line 157
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/b/dg;->i()Lcom/a/a/b/dl;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/dg;->a:Lcom/a/a/b/dl;

    :cond_0
    return-object v0
.end method

.method i()Lcom/a/a/b/dl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dl",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/a/a/b/dg;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    new-instance v0, Lcom/a/a/b/dc;

    invoke-virtual {p0}, Lcom/a/a/b/dg;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/a/a/b/dc;-><init>([Ljava/lang/Object;Lcom/a/a/b/dg;)V

    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    invoke-static {}, Lcom/a/a/b/dl;->d()Lcom/a/a/b/dl;

    move-result-object v0

    goto :goto_0

    .line 165
    :pswitch_1
    invoke-virtual {p0}, Lcom/a/a/b/dg;->a_()Lcom/a/a/b/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/id;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/b/dl;->a(Ljava/lang/Object;)Lcom/a/a/b/dl;

    move-result-object v0

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/a/a/b/dg;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/a/a/b/dg;->a_()Lcom/a/a/b/id;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 101
    .local p0, this:Lcom/a/a/b/dg;,"Lcom/a/a/b/dg<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
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
    .line 121
    .local p0, this:Lcom/a/a/b/dg;,"Lcom/a/a/b/dg<TE;>;"
    .local p1, oldElements:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
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
    .line 131
    .local p0, this:Lcom/a/a/b/dg;,"Lcom/a/a/b/dg<TE;>;"
    .local p1, elementsToKeep:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/a/a/b/gk;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lcom/a/a/b/dg;,"Lcom/a/a/b/dg<TE;>;"
    .local p1, other:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0, p1}, Lcom/a/a/b/gk;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-static {p0}, Lcom/a/a/b/x;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
