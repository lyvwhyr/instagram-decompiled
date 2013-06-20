.class public final Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
.super Ljava/lang/Object;
.source "ByteArrayBuffer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3c7eae24203b8ca4L


# instance fields
.field private buffer:[B

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "capacity"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-gez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    .line 56
    return-void
.end method

.method private expand(I)V
    .locals 4
    .parameter "newlen"

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-object v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 60
    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iput-object v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    .line 62
    return-void
.end method


# virtual methods
.method public append(I)V
    .locals 4
    .parameter "b"

    .prologue
    .line 102
    iget v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    add-int/lit8 v0, v0, 0x1

    .line 103
    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 104
    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->expand(I)V

    .line 106
    :cond_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 107
    iput v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    .line 108
    return-void
.end method

.method public append(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append([CII)V

    goto :goto_0
.end method

.method public append([BII)V
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 77
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 80
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

    .line 82
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

    .line 84
    :cond_3
    if-eqz p3, :cond_0

    .line 87
    iget v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    add-int/2addr v0, p3

    .line 88
    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_4

    .line 89
    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->expand(I)V

    .line 91
    :cond_4
    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iput v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    goto :goto_0
.end method

.method public append([CII)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 125
    if-nez p1, :cond_1

    .line 144
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 128
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

    .line 130
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

    .line 132
    :cond_3
    if-eqz p3, :cond_0

    .line 135
    iget v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    .line 136
    add-int v1, v0, p3

    .line 137
    iget-object v2, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_4

    .line 138
    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->expand(I)V

    .line 140
    .end local p2
    :cond_4
    :goto_1
    if-ge v0, v1, :cond_5

    .line 141
    iget-object v2, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    aget-char v3, p1, p2

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 140
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_5
    iput v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    goto :goto_0
.end method

.method public buffer()[B
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    return-object v0
.end method

.method public byteAt(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 199
    iget-object v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    .line 173
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 2
    .parameter "required"

    .prologue
    .line 233
    if-gtz p1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    sub-int/2addr v0, v1

    .line 237
    if-le p1, v0, :cond_0

    .line 238
    iget v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->expand(I)V

    goto :goto_0
.end method

.method public indexOf(B)I
    .locals 2
    .parameter "b"

    .prologue
    .line 342
    const/4 v0, 0x0

    iget v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->indexOf(BII)I

    move-result v0

    return v0
.end method

.method public indexOf(BII)I
    .locals 3
    .parameter "b"
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    const/4 v0, -0x1

    .line 312
    if-gez p2, :cond_0

    .line 313
    const/4 p2, 0x0

    .line 315
    :cond_0
    iget v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    if-le p3, v1, :cond_1

    .line 316
    iget p3, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    .line 318
    :cond_1
    if-le p2, p3, :cond_3

    .line 326
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v1, p2

    .line 321
    :goto_1
    if-ge v1, p3, :cond_2

    .line 322
    iget-object v2, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    aget-byte v2, v2, v1

    if-ne v2, p1, :cond_4

    move v0, v1

    .line 323
    goto :goto_0

    .line 321
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

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
    .line 285
    iget v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

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
    .line 219
    iget v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    return v0
.end method

.method public setLength(I)V
    .locals 3
    .parameter "len"

    .prologue
    .line 262
    if-ltz p1, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 263
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

    iget-object v2, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_1
    iput p1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    .line 266
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    iget v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    new-array v0, v0, [B

    .line 182
    iget v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    if-lez v1, :cond_0

    .line 183
    iget-object v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    :cond_0
    return-object v0
.end method
