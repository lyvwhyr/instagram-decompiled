.class public Lch/boye/httpclientandroidlib/message/BasicTokenIterator;
.super Ljava/lang/Object;
.source "BasicTokenIterator.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/TokenIterator;


# static fields
.field public static final HTTP_SEPARATORS:Ljava/lang/String; = " ,;=()<>@:\\\"/[]?{}\t"


# instance fields
.field protected currentHeader:Ljava/lang/String;

.field protected currentToken:Ljava/lang/String;

.field protected final headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

.field protected searchPos:I


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HeaderIterator;)V
    .locals 2
    .parameter "headerIterator"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header iterator must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    .line 87
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->findNext(I)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->searchPos:I

    .line 88
    return-void
.end method


# virtual methods
.method protected createToken(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 212
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected findNext(I)I
    .locals 3
    .parameter "from"

    .prologue
    const/4 v0, -0x1

    .line 167
    if-gez p1, :cond_1

    .line 169
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    :goto_0
    return v0

    .line 172
    :cond_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HeaderIterator;->nextHeader()Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    .line 173
    const/4 p1, 0x0

    .line 179
    :goto_1
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->findTokenStart(I)I

    move-result v1

    .line 180
    if-gez v1, :cond_2

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->findTokenSeparator(I)I

    move-result p1

    goto :goto_1

    .line 185
    :cond_2
    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->findTokenEnd(I)I

    move-result v0

    .line 186
    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->createToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    goto :goto_0
.end method

.method protected findTokenEnd(I)I
    .locals 3
    .parameter "from"

    .prologue
    .line 323
    if-gez p1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token start position must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 329
    add-int/lit8 v0, p1, 0x1

    .line 330
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_1
    return v0
.end method

.method protected findTokenSeparator(I)I
    .locals 4
    .parameter "from"

    .prologue
    .line 283
    if-gez p1, :cond_0

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search position must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    const/4 v0, 0x0

    .line 289
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 290
    :goto_0
    if-nez v0, :cond_4

    if-ge p1, v1, :cond_4

    .line 291
    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 292
    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->isTokenSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    const/4 v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    new-instance v0, Lch/boye/httpclientandroidlib/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tokens without separator (pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_3
    new-instance v0, Lch/boye/httpclientandroidlib/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid character after token (pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_4
    return p1
.end method

.method protected findTokenStart(I)I
    .locals 4
    .parameter "from"

    .prologue
    .line 227
    if-gez p1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search position must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    const/4 v0, 0x0

    .line 233
    :cond_1
    :goto_0
    if-nez v0, :cond_7

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 235
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 236
    :goto_1
    if-nez v0, :cond_5

    if-ge p1, v1, :cond_5

    .line 238
    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 239
    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->isTokenSeparator(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 241
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 242
    :cond_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    const/4 v0, 0x1

    goto :goto_1

    .line 246
    :cond_4
    new-instance v0, Lch/boye/httpclientandroidlib/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid character before token (pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_5
    if-nez v0, :cond_1

    .line 252
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 253
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HeaderIterator;->nextHeader()Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    .line 254
    const/4 p1, 0x0

    goto :goto_0

    .line 256
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_7
    if-eqz v0, :cond_8

    .end local p1
    :goto_2
    return p1

    .restart local p1
    :cond_8
    const/4 p1, -0x1

    goto :goto_2
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHttpSeparator(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 420
    const-string v0, " ,;=()<>@:\\\"/[]?{}\t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTokenChar(C)Z
    .locals 3
    .parameter "ch"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 388
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v0

    .line 392
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 393
    goto :goto_0

    .line 396
    :cond_2
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->isHttpSeparator(C)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 397
    goto :goto_0
.end method

.method protected isTokenSeparator(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 350
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isWhitespace(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 369
    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

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

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    .line 114
    iget v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->searchPos:I

    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->searchPos:I

    .line 116
    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing tokens is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
