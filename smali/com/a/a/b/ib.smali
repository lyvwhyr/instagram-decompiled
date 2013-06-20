.class public final Lcom/a/a/b/ib;
.super Lcom/a/a/b/m;
.source "TreeMultiset.java"

# interfaces
.implements Lcom/a/a/b/hj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/m",
        "<TE;>;",
        "Lcom/a/a/b/hj",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/a/a/b/gl;->a()Lcom/a/a/b/gl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/b/ib;-><init>(Ljava/util/Comparator;)V

    .line 129
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Ljava/util/TreeMap;

    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v1}, Lcom/a/a/b/m;-><init>(Ljava/util/Map;)V

    .line 133
    iput-object p1, p0, Lcom/a/a/b/ib;->a:Ljava/util/Comparator;

    .line 134
    return-void
.end method

.method public static h()Lcom/a/a/b/ib;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/a/a/b/ib",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/a/a/b/ib;

    invoke-direct {v0}, Lcom/a/a/b/ib;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 158
    :try_start_0
    invoke-super {p0, p1}, Lcom/a/a/b/m;->a(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 162
    :goto_0
    return v0

    .line 159
    :catch_0
    move-exception v1

    goto :goto_0

    .line 161
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/a/a/b/ib;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 171
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/a/a/b/m;->a(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    .local p0, this:Lcom/a/a/b/ib;,"Lcom/a/a/b/ib<TE;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/m;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    .local p0, this:Lcom/a/a/b/ib;,"Lcom/a/a/b/ib<TE;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/m;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/a/a/b/m;->b(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/a/a/b/m;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/a/a/b/m;->clear()V

    return-void
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
    .line 143
    iget-object v0, p0, Lcom/a/a/b/ib;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    .local p0, this:Lcom/a/a/b/ib;,"Lcom/a/a/b/ib<TE;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/m;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method e()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v1, Lcom/a/a/b/ic;

    invoke-virtual {p0}, Lcom/a/a/b/ib;->a()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/a/a/b/ic;-><init>(Lcom/a/a/b/ib;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    .local p0, this:Lcom/a/a/b/ib;,"Lcom/a/a/b/ib<TE;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic f()Ljava/util/Set;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/a/a/b/ib;->i()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/a/a/b/m;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-super {p0}, Lcom/a/a/b/m;->f()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/a/a/b/m;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0}, Lcom/a/a/b/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    .local p0, this:Lcom/a/a/b/ib;,"Lcom/a/a/b/ib<TE;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/m;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    .local p0, this:Lcom/a/a/b/ib;,"Lcom/a/a/b/ib<TE;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/m;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    .local p0, this:Lcom/a/a/b/ib;,"Lcom/a/a/b/ib<TE;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/m;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/a/a/b/m;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/a/a/b/m;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
