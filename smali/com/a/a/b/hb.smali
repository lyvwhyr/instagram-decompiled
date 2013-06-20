.class final Lcom/a/a/b/hb;
.super Lcom/a/a/b/el;
.source "RegularImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/el",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient b:Lcom/a/a/b/dl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/dl",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/b/dl;Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/dl",
            "<TE;>;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p2}, Lcom/a/a/b/el;-><init>(Ljava/util/Comparator;)V

    .line 54
    iput-object p1, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

    .line 55
    invoke-virtual {p1}, Lcom/a/a/b/dl;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/a/a/a/t;->a(Z)V

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(II)Lcom/a/a/b/el;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/a/a/b/el",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 241
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/b/hb;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 247
    :goto_0
    return-object p0

    .line 243
    :cond_0
    if-ge p1, p2, :cond_1

    .line 244
    new-instance v0, Lcom/a/a/b/hb;

    iget-object v1, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

    invoke-virtual {v1, p1, p2}, Lcom/a/a/b/dl;->a(II)Lcom/a/a/b/dl;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/hb;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/hb;-><init>(Lcom/a/a/b/dl;Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/a/a/b/hb;->a:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/a/a/b/hb;->a(Ljava/util/Comparator;)Lcom/a/a/b/el;

    move-result-object p0

    goto :goto_0
.end method

.method private e(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/a/a/b/hb;->a:Ljava/util/Comparator;

    .line 139
    iget-object v1, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

    invoke-static {v1, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)I
    .locals 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, -0x1

    .line 253
    if-nez p1, :cond_0

    .line 268
    :goto_0
    return v1

    .line 258
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

    invoke-virtual {p0}, Lcom/a/a/b/hb;->comparator()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lcom/a/a/b/hr;->a:Lcom/a/a/b/hr;

    sget-object v4, Lcom/a/a/b/hn;->c:Lcom/a/a/b/hn;

    invoke-static {v0, p1, v2, v3, v4}, Lcom/a/a/b/hl;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/a/a/b/hr;Lcom/a/a/b/hn;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 268
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

    invoke-virtual {v2, v0}, Lcom/a/a/b/dl;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 260
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Ljava/lang/Object;Z)Lcom/a/a/b/el;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/a/a/b/el",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 202
    if-eqz p2, :cond_0

    .line 203
    iget-object v0, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/b/hb;->comparator()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lcom/a/a/b/hr;->d:Lcom/a/a/b/hr;

    sget-object v4, Lcom/a/a/b/hn;->b:Lcom/a/a/b/hn;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/a/a/b/hl;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/a/a/b/hr;Lcom/a/a/b/hn;)I

    move-result v0

    .line 209
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/a/a/b/hb;->a(II)Lcom/a/a/b/el;

    move-result-object v0

    return-object v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/b/hb;->comparator()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lcom/a/a/b/hr;->c:Lcom/a/a/b/hr;

    sget-object v4, Lcom/a/a/b/hn;->b:Lcom/a/a/b/hn;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/a/a/b/hl;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/a/a/b/hr;Lcom/a/a/b/hn;)I

    move-result v0

    goto :goto_0
.end method

.method a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/a/a/b/el;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/a/a/b/el",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/hb;->b(Ljava/lang/Object;Z)Lcom/a/a/b/el;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/a/a/b/el;->a(Ljava/lang/Object;Z)Lcom/a/a/b/el;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

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
    .line 59
    iget-object v0, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

    invoke-virtual {v0}, Lcom/a/a/b/dl;->a_()Lcom/a/a/b/id;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/Object;Z)Lcom/a/a/b/el;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/a/a/b/el",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 222
    if-eqz p2, :cond_0

    .line 223
    iget-object v0, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/b/hb;->comparator()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lcom/a/a/b/hr;->c:Lcom/a/a/b/hr;

    sget-object v4, Lcom/a/a/b/hn;->b:Lcom/a/a/b/hn;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/a/a/b/hl;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/a/a/b/hr;Lcom/a/a/b/hn;)I

    move-result v0

    .line 229
    :goto_0
    invoke-virtual {p0}, Lcom/a/a/b/hb;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/a/a/b/hb;->a(II)Lcom/a/a/b/el;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/b/hb;->comparator()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lcom/a/a/b/hr;->d:Lcom/a/a/b/hr;

    sget-object v4, Lcom/a/a/b/hn;->b:Lcom/a/a/b/hn;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/a/a/b/hl;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/a/a/b/hr;Lcom/a/a/b/hn;)I

    move-result v0

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .local p0, this:Lcom/a/a/b/hb;,"Lcom/a/a/b/hb<TE;>;"
    const/4 v0, 0x0

    .line 72
    if-nez p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/a/a/b/hb;->e(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/a/a/b/hb;,"Lcom/a/a/b/hb<TE;>;"
    .local p1, targets:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/a/a/b/hb;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/a/b/hk;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/a/a/b/el;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 125
    :goto_0
    return v0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/a/a/b/hb;->a_()Lcom/a/a/b/id;

    move-result-object v3

    .line 97
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 98
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 102
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lcom/a/a/b/hb;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 106
    if-nez v5, :cond_4

    .line 108
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 110
    goto :goto_0

    .line 113
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_1

    .line 115
    :cond_4
    if-lez v5, :cond_2

    move v0, v2

    .line 116
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    move v0, v2

    .line 120
    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    move v0, v2

    .line 122
    goto :goto_0

    :cond_5
    move v0, v2

    .line 125
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/a/a/b/hb;,"Lcom/a/a/b/hb<TE;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    if-ne p1, p0, :cond_1

    .line 186
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 158
    .restart local p1
    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-nez v2, :cond_2

    move v0, v1

    .line 159
    goto :goto_0

    .line 162
    :cond_2
    check-cast p1, Ljava/util/Set;

    .line 163
    .end local p1
    invoke-virtual {p0}, Lcom/a/a/b/hb;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 164
    goto :goto_0

    .line 167
    :cond_3
    iget-object v2, p0, Lcom/a/a/b/hb;->a:Ljava/util/Comparator;

    invoke-static {v2, p1}, Lcom/a/a/b/hk;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 168
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/b/hb;->a_()Lcom/a/a/b/id;

    move-result-object v3

    .line 171
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 174
    if-eqz v5, :cond_5

    invoke-virtual {p0, v4, v5}, Lcom/a/a/b/hb;->a(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_4

    :cond_5
    move v0, v1

    .line 176
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    move v0, v1

    .line 181
    goto :goto_0

    .line 182
    :catch_1
    move-exception v0

    move v0, v1

    .line 183
    goto :goto_0

    .line 186
    :cond_6
    invoke-virtual {p0, p1}, Lcom/a/a/b/hb;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/b/dl;->get(I)Ljava/lang/Object;

    move-result-object v0

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
    .line 273
    new-instance v0, Lcom/a/a/b/eb;

    iget-object v1, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/eb;-><init>(Lcom/a/a/b/el;Lcom/a/a/b/dl;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/a/a/b/hb;->a_()Lcom/a/a/b/id;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

    invoke-virtual {p0}, Lcom/a/a/b/hb;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/a/a/b/dl;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

    invoke-virtual {v0}, Lcom/a/a/b/dl;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

    invoke-virtual {v0}, Lcom/a/a/b/dl;->toArray()[Ljava/lang/Object;

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
    .line 151
    .local p0, this:Lcom/a/a/b/hb;,"Lcom/a/a/b/hb<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/a/a/b/hb;->b:Lcom/a/a/b/dl;

    invoke-virtual {v0, p1}, Lcom/a/a/b/dl;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
