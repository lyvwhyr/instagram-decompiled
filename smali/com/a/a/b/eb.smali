.class final Lcom/a/a/b/eb;
.super Lcom/a/a/b/dl;
.source "ImmutableSortedAsList.java"

# interfaces
.implements Lcom/a/a/b/hj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dl",
        "<TE;>;",
        "Lcom/a/a/b/hj",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/a/a/b/el;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/el",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient b:Lcom/a/a/b/dl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/dl",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/b/el;Lcom/a/a/b/dl;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/el",
            "<TE;>;",
            "Lcom/a/a/b/dl",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/a/a/b/dl;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/a/a/b/eb;->a:Lcom/a/a/b/el;

    .line 37
    iput-object p2, p0, Lcom/a/a/b/eb;->b:Lcom/a/a/b/dl;

    .line 38
    return-void
.end method


# virtual methods
.method public a(II)Lcom/a/a/b/dl;
    .locals 3
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
    .line 62
    invoke-virtual {p0}, Lcom/a/a/b/eb;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/a/a/a/t;->a(III)V

    .line 63
    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/a/a/b/dl;->d()Lcom/a/a/b/dl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/b/hb;

    iget-object v1, p0, Lcom/a/a/b/eb;->b:Lcom/a/a/b/dl;

    invoke-virtual {v1, p1, p2}, Lcom/a/a/b/dl;->a(II)Lcom/a/a/b/dl;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/eb;->a:Lcom/a/a/b/el;

    invoke-virtual {v2}, Lcom/a/a/b/el;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/hb;-><init>(Lcom/a/a/b/dl;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Lcom/a/a/b/hb;->h()Lcom/a/a/b/dl;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)Lcom/a/a/b/ie;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/a/a/b/ie",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/a/a/b/eb;->b:Lcom/a/a/b/dl;

    invoke-virtual {v0, p1}, Lcom/a/a/b/dl;->a(I)Lcom/a/a/b/ie;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/a/a/b/eb;->b:Lcom/a/a/b/dl;

    invoke-virtual {v0}, Lcom/a/a/b/dl;->a()Z

    move-result v0

    return v0
.end method

.method public a_()Lcom/a/a/b/id;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/id",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/a/a/b/eb;->b:Lcom/a/a/b/dl;

    invoke-virtual {v0}, Lcom/a/a/b/dl;->a_()Lcom/a/a/b/id;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/a/a/b/ie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/ie",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/a/a/b/eb;->b:Lcom/a/a/b/dl;

    invoke-virtual {v0}, Lcom/a/a/b/dl;->c()Lcom/a/a/b/ie;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/a/a/b/eb;->a:Lcom/a/a/b/el;

    invoke-virtual {v0}, Lcom/a/a/b/el;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 48
    .local p0, this:Lcom/a/a/b/eb;,"Lcom/a/a/b/eb<TE;>;"
    iget-object v0, p0, Lcom/a/a/b/eb;->a:Lcom/a/a/b/el;

    invoke-virtual {v0, p1}, Lcom/a/a/b/el;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 95
    .local p0, this:Lcom/a/a/b/eb;,"Lcom/a/a/b/eb<TE;>;"
    iget-object v0, p0, Lcom/a/a/b/eb;->b:Lcom/a/a/b/dl;

    invoke-virtual {v0, p1}, Lcom/a/a/b/dl;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 79
    .local p0, this:Lcom/a/a/b/eb;,"Lcom/a/a/b/eb<TE;>;"
    iget-object v0, p0, Lcom/a/a/b/eb;->b:Lcom/a/a/b/dl;

    invoke-virtual {v0, p1}, Lcom/a/a/b/dl;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/a/a/b/eb;->b:Lcom/a/a/b/dl;

    invoke-virtual {v0}, Lcom/a/a/b/dl;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "target"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 52
    .local p0, this:Lcom/a/a/b/eb;,"Lcom/a/a/b/eb<TE;>;"
    iget-object v0, p0, Lcom/a/a/b/eb;->a:Lcom/a/a/b/el;

    invoke-virtual {v0, p1}, Lcom/a/a/b/el;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/a/a/b/eb;->a_()Lcom/a/a/b/id;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "target"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 56
    .local p0, this:Lcom/a/a/b/eb;,"Lcom/a/a/b/eb<TE;>;"
    iget-object v0, p0, Lcom/a/a/b/eb;->a:Lcom/a/a/b/el;

    invoke-virtual {v0, p1}, Lcom/a/a/b/el;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/a/a/b/eb;->c()Lcom/a/a/b/ie;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    .local p0, this:Lcom/a/a/b/eb;,"Lcom/a/a/b/eb<TE;>;"
    invoke-virtual {p0, p1}, Lcom/a/a/b/eb;->a(I)Lcom/a/a/b/ie;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/a/a/b/eb;->b:Lcom/a/a/b/dl;

    invoke-virtual {v0}, Lcom/a/a/b/dl;->size()I

    move-result v0

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    .local p0, this:Lcom/a/a/b/eb;,"Lcom/a/a/b/eb<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/eb;->a(II)Lcom/a/a/b/dl;

    move-result-object v0

    return-object v0
.end method
