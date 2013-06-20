.class public abstract Lcom/a/a/b/dl;
.super Lcom/a/a/b/dg;
.source "ImmutableList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dg",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/a/a/b/dg;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/a/a/b/dl;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/a/a/b/dl",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/a/a/b/he;

    invoke-direct {v0, p0}, Lcom/a/a/b/he;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/dl;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/a/a/b/dl",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/a/a/b/dl;->a([Ljava/lang/Object;)Lcom/a/a/b/dl;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Lcom/a/a/b/dl;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/a/a/b/dl",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 255
    instance-of v0, p0, Lcom/a/a/b/dg;

    if-eqz v0, :cond_1

    .line 257
    check-cast p0, Lcom/a/a/b/dg;

    invoke-virtual {p0}, Lcom/a/a/b/dg;->h()Lcom/a/a/b/dl;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/a/a/b/dl;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/a/a/b/dl;->b(Ljava/util/Collection;)Lcom/a/a/b/dl;

    move-result-object v0

    .line 260
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/a/a/b/dl;->b(Ljava/util/Collection;)Lcom/a/a/b/dl;

    move-result-object v0

    goto :goto_0
.end method

.method private static varargs a([Ljava/lang/Object;)Lcom/a/a/b/dl;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/a/a/b/dl",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 308
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 309
    aget-object v1, p0, v0

    invoke-static {v1, v0}, Lcom/a/a/b/dl;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    new-instance v0, Lcom/a/a/b/go;

    invoke-direct {v0, p0}, Lcom/a/a/b/go;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 317
    if-nez p0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    return-object p0
.end method

.method private static b(Ljava/util/Collection;)Lcom/a/a/b/dl;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/a/a/b/dl",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 291
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 292
    array-length v0, v1

    packed-switch v0, :pswitch_data_0

    .line 302
    invoke-static {v1}, Lcom/a/a/b/dl;->a([Ljava/lang/Object;)Lcom/a/a/b/dl;

    move-result-object v0

    :goto_0
    return-object v0

    .line 294
    :pswitch_0
    invoke-static {}, Lcom/a/a/b/dl;->d()Lcom/a/a/b/dl;

    move-result-object v0

    goto :goto_0

    .line 297
    :pswitch_1
    new-instance v0, Lcom/a/a/b/he;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/a/a/b/he;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static d()Lcom/a/a/b/dl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/b/dl",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lcom/a/a/b/cj;->a:Lcom/a/a/b/cj;

    return-object v0
.end method

.method public static e()Lcom/a/a/b/dm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/b/dm",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 548
    new-instance v0, Lcom/a/a/b/dm;

    invoke-direct {v0}, Lcom/a/a/b/dm;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a(II)Lcom/a/a/b/dl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/a/a/b/dl",
            "<TE;>;"
        }
    .end annotation
.end method

.method public abstract a(I)Lcom/a/a/b/ie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/a/a/b/ie",
            "<TE;>;"
        }
    .end annotation
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
    .line 328
    invoke-virtual {p0}, Lcom/a/a/b/dl;->c()Lcom/a/a/b/ie;

    move-result-object v0

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, this:Lcom/a/a/b/dl;,"Lcom/a/a/b/dl<TE;>;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, this:Lcom/a/a/b/dl;,"Lcom/a/a/b/dl<TE;>;"
    .local p2, newElements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/a/a/b/dl;->a(I)Lcom/a/a/b/ie;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 512
    .local p0, this:Lcom/a/a/b/dl;,"Lcom/a/a/b/dl<TE;>;"
    invoke-static {p0, p1}, Lcom/a/a/b/fk;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()Lcom/a/a/b/dl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dl",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 402
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 516
    invoke-static {p0}, Lcom/a/a/b/fk;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/a/a/b/dl;->a_()Lcom/a/a/b/id;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/a/a/b/dl;->c()Lcom/a/a/b/ie;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    .local p0, this:Lcom/a/a/b/dl;,"Lcom/a/a/b/dl<TE;>;"
    invoke-virtual {p0, p1}, Lcom/a/a/b/dl;->a(I)Lcom/a/a/b/ie;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, this:Lcom/a/a/b/dl;,"Lcom/a/a/b/dl<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, this:Lcom/a/a/b/dl;,"Lcom/a/a/b/dl<TE;>;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    .local p0, this:Lcom/a/a/b/dl;,"Lcom/a/a/b/dl<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/dl;->a(II)Lcom/a/a/b/dl;

    move-result-object v0

    return-object v0
.end method
