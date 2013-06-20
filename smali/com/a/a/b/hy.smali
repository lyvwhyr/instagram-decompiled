.class abstract Lcom/a/a/b/hy;
.super Lcom/a/a/b/dl;
.source "TransformedImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dl",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/a/a/b/dl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/dl",
            "<TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/b/dl;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/dl",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/a/a/b/dl;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/dl;

    iput-object v0, p0, Lcom/a/a/b/hy;->a:Lcom/a/a/b/dl;

    .line 49
    return-void
.end method


# virtual methods
.method public a(II)Lcom/a/a/b/dl;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/a/a/b/dl",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/a/a/b/ia;

    iget-object v1, p0, Lcom/a/a/b/hy;->a:Lcom/a/a/b/dl;

    invoke-virtual {v1, p1, p2}, Lcom/a/a/b/dl;->a(II)Lcom/a/a/b/dl;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/ia;-><init>(Lcom/a/a/b/hy;Lcom/a/a/b/dl;)V

    return-object v0
.end method

.method public a(I)Lcom/a/a/b/ie;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/a/a/b/ie",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/a/a/b/hz;

    invoke-virtual {p0}, Lcom/a/a/b/hy;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/a/a/b/hz;-><init>(Lcom/a/a/b/hy;II)V

    return-object v0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method abstract b(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TE;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/a/a/b/hy;,"Lcom/a/a/b/hy<TD;TE;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    if-ne p1, p0, :cond_1

    .line 106
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 101
    .restart local p1
    :cond_1
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 102
    check-cast p1, Ljava/util/List;

    .line 103
    .end local p1
    invoke-virtual {p0}, Lcom/a/a/b/hy;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/a/a/b/hy;->a_()Lcom/a/a/b/id;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a/b/er;->a(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .restart local p1
    :cond_3
    move v0, v1

    .line 106
    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/a/a/b/hy;,"Lcom/a/a/b/hy<TD;TE;>;"
    iget-object v0, p0, Lcom/a/a/b/hy;->a:Lcom/a/a/b/dl;

    invoke-virtual {v0, p1}, Lcom/a/a/b/dl;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/b/hy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 110
    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0}, Lcom/a/a/b/hy;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 112
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 114
    :cond_1
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/a/a/b/hy;,"Lcom/a/a/b/hy<TD;TE;>;"
    const/4 v1, -0x1

    .line 54
    if-nez p1, :cond_1

    move v0, v1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/a/a/b/hy;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 58
    invoke-virtual {p0, v0}, Lcom/a/a/b/hy;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/a/a/b/hy;,"Lcom/a/a/b/hy<TD;TE;>;"
    const/4 v0, -0x1

    .line 66
    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/a/a/b/hy;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Lcom/a/a/b/hy;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 71
    goto :goto_0

    .line 69
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    .local p0, this:Lcom/a/a/b/hy;,"Lcom/a/a/b/hy<TD;TE;>;"
    invoke-virtual {p0, p1}, Lcom/a/a/b/hy;->a(I)Lcom/a/a/b/ie;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/a/a/b/hy;->a:Lcom/a/a/b/dl;

    invoke-virtual {v0}, Lcom/a/a/b/dl;->size()I

    move-result v0

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    .local p0, this:Lcom/a/a/b/hy;,"Lcom/a/a/b/hy<TD;TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/hy;->a(II)Lcom/a/a/b/dl;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
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
    .line 122
    .local p0, this:Lcom/a/a/b/hy;,"Lcom/a/a/b/hy<TD;TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0, p1}, Lcom/a/a/b/gk;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
