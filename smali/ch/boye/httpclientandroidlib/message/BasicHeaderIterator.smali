.class public Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;
.super Ljava/lang/Object;
.source "BasicHeaderIterator.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HeaderIterator;


# instance fields
.field protected final allHeaders:[Lch/boye/httpclientandroidlib/Header;

.field protected currentIndex:I

.field protected headerName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Lch/boye/httpclientandroidlib/Header;Ljava/lang/String;)V
    .locals 2
    .parameter "headers"
    .parameter "name"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header array must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->allHeaders:[Lch/boye/httpclientandroidlib/Header;

    .line 80
    iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    .line 81
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->findNext(I)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->currentIndex:I

    .line 82
    return-void
.end method


# virtual methods
.method protected filterHeader(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 117
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->allHeaders:[Lch/boye/httpclientandroidlib/Header;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected findNext(I)I
    .locals 3
    .parameter "from"

    .prologue
    const/4 v0, -0x1

    .line 95
    if-ge p1, v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->allHeaders:[Lch/boye/httpclientandroidlib/Header;

    array-length v1, v1

    add-int/lit8 v2, v1, -0x1

    .line 99
    const/4 v1, 0x0

    .line 100
    :goto_1
    if-nez v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 101
    add-int/lit8 p1, p1, 0x1

    .line 102
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->filterHeader(I)Z

    move-result v1

    goto :goto_1

    .line 104
    :cond_2
    if-eqz v1, :cond_0

    move v0, p1

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->currentIndex:I

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
    .line 159
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->nextHeader()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public nextHeader()Lch/boye/httpclientandroidlib/Header;
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->currentIndex:I

    .line 139
    if-gez v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->currentIndex:I

    .line 145
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->allHeaders:[Lch/boye/httpclientandroidlib/Header;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing headers is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
