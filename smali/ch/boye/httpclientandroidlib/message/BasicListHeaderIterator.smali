.class public Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;
.super Ljava/lang/Object;
.source "BasicListHeaderIterator.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HeaderIterator;


# instance fields
.field protected final allHeaders:Ljava/util/List;

.field protected currentIndex:I

.field protected headerName:Ljava/lang/String;

.field protected lastIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .parameter "headers"
    .parameter "name"

    .prologue
    const/4 v1, -0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header list must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    .line 87
    iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->findNext(I)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I

    .line 89
    iput v1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->lastIndex:I

    .line 90
    return-void
.end method


# virtual methods
.method protected filterHeader(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 125
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected findNext(I)I
    .locals 3
    .parameter "from"

    .prologue
    const/4 v0, -0x1

    .line 103
    if-ge p1, v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 107
    const/4 v1, 0x0

    .line 108
    :goto_1
    if-nez v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 109
    add-int/lit8 p1, p1, 0x1

    .line 110
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->filterHeader(I)Z

    move-result v1

    goto :goto_1

    .line 112
    :cond_2
    if-eqz v1, :cond_0

    move v0, p1

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->nextHeader()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public nextHeader()Lch/boye/httpclientandroidlib/Header;
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I

    .line 152
    if-gez v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iput v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->lastIndex:I

    .line 157
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I

    .line 159
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 183
    iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->lastIndex:I

    if-gez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No header to remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    iget v1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->lastIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->lastIndex:I

    .line 188
    iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I

    .line 189
    return-void
.end method
