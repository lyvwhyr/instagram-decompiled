.class public final Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x562aa19b667920bfL


# instance fields
.field private buffer:[C

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "capacity"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-gez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    .line 58
    return-void
.end method

.method private expand(I)V
    .locals 4
    .parameter "newlen"

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    .line 62
    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    .line 64
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 3
    .parameter "ch"

    .prologue
    .line 157
    iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    add-int/lit8 v0, v0, 0x1

    .line 158
    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 159
    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->expand(I)V

    .line 161
    :cond_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    aput-char p1, v1, v2

    .line 162
    iput v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    .line 163
    return-void
.end method

.method public append(Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;II)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append([BII)V

    goto :goto_0
.end method

.method public append(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V
    .locals 3
    .parameter "b"

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    const/4 v1, 0x0

    iget v2, p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    invoke-virtual {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append([CII)V

    goto :goto_0
.end method

.method public append(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    invoke-virtual {p0, v0, p2, p3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append([CII)V

    goto :goto_0
.end method

.method public append(Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 230
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 5
    .parameter "str"

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    const-string p1, "null"

    .line 107
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 108
    iget v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    add-int/2addr v1, v0

    .line 109
    iget-object v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 110
    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->expand(I)V

    .line 112
    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    iget v4, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 113
    iput v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    .line 114
    return-void
.end method

.method public append([BII)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 180
    if-nez p1, :cond_1

    .line 199
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 183
    .restart local p2
    :cond_1
    if-ltz p2, :cond_2

    array-length v0, p1

    if-gt p2, v0, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    if-ltz v0, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 185
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_3
    if-eqz p3, :cond_0

    .line 190
    iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    .line 191
    add-int v1, v0, p3

    .line 192
    iget-object v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    array-length v2, v2

    if-le v1, v2, :cond_4

    .line 193
    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->expand(I)V

    .line 195
    .end local p2
    :cond_4
    :goto_1
    if-ge v0, v1, :cond_5

    .line 196
    iget-object v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 195
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_5
    iput v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    goto :goto_0
.end method

.method public append([CII)V
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 79
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    if-ltz p2, :cond_2

    array-length v0, p1

    if-gt p2, v0, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    if-ltz v0, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_3
    if-eqz p3, :cond_0

    .line 89
    iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    add-int/2addr v0, p3

    .line 90
    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_4

    .line 91
    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->expand(I)V

    .line 93
    :cond_4
    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iput v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    goto :goto_0
.end method

.method public buffer()[C
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .parameter "i"

    .prologue
    .line 264
    iget-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    .line 238
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 2
    .parameter "required"

    .prologue
    .line 305
    if-gtz p1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    iget v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    sub-int/2addr v0, v1

    .line 309
    if-le p1, v0, :cond_0

    .line 310
    iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->expand(I)V

    goto :goto_0
.end method

.method public indexOf(I)I
    .locals 2
    .parameter "ch"

    .prologue
    .line 401
    const/4 v0, 0x0

    iget v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->indexOf(III)I

    move-result v0

    return v0
.end method

.method public indexOf(III)I
    .locals 3
    .parameter "ch"
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    const/4 v0, -0x1

    .line 373
    if-gez p2, :cond_0

    .line 374
    const/4 p2, 0x0

    .line 376
    :cond_0
    iget v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    if-le p3, v1, :cond_1

    .line 377
    iget p3, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    .line 379
    :cond_1
    if-le p2, p3, :cond_3

    .line 387
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v1, p2

    .line 382
    :goto_1
    if-ge v1, p3, :cond_2

    .line 383
    iget-object v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_4

    move v0, v1

    .line 384
    goto :goto_0

    .line 382
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    return v0
.end method

.method public setLength(I)V
    .locals 3
    .parameter "len"

    .prologue
    .line 325
    if-ltz p1, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0 or > buffer len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    iput p1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    .line 329
    return-void
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 419
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public substringTrimmed(II)Ljava/lang/String;
    .locals 3
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 439
    if-gez p1, :cond_0

    .line 440
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_0
    iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    if-le p2, v0, :cond_1

    .line 443
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_1
    if-le p1, p2, :cond_2

    .line 446
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > endIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_2
    :goto_0
    if-ge p1, p2, :cond_3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 451
    :cond_3
    :goto_1
    if-le p2, p1, :cond_4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    add-int/lit8 v1, p2, -0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 452
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 454
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 246
    iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    new-array v0, v0, [C

    .line 247
    iget v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    if-lez v1, :cond_0

    .line 248
    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 458
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
