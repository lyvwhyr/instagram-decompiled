.class public abstract Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionInputBuffer.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/io/BufferInfo;
.implements Lch/boye/httpclientandroidlib/io/SessionInputBuffer;


# instance fields
.field private ascii:Z

.field private buffer:[B

.field private bufferlen:I

.field private bufferpos:I

.field private charset:Ljava/lang/String;

.field private instream:Ljava/io/InputStream;

.field private linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

.field private maxLineLen:I

.field private metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

.field private minChunkLimit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    .line 71
    const-string v0, "US-ASCII"

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->ascii:Z

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    .line 74
    const/16 v0, 0x200

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->minChunkLimit:I

    return-void
.end method

.method private lineFromLineBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I
    .locals 5
    .parameter "charbuffer"

    .prologue
    const/4 v4, 0x0

    .line 296
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v0

    .line 297
    if-lez v0, :cond_1

    .line 298
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 299
    add-int/lit8 v0, v0, -0x1

    .line 300
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->setLength(I)V

    .line 303
    :cond_0
    if-lez v0, :cond_1

    .line 304
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 305
    add-int/lit8 v0, v0, -0x1

    .line 306
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->setLength(I)V

    .line 310
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v0

    .line 311
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->ascii:Z

    if-eqz v1, :cond_2

    .line 312
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {p1, v1, v4, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;II)V

    .line 320
    :goto_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->clear()V

    .line 321
    return v0

    .line 316
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 317
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 318
    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private lineFromReadBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;I)I
    .locals 5
    .parameter "charbuffer"
    .parameter "pos"

    .prologue
    .line 326
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 328
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 329
    if-lez p2, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    add-int/lit8 v2, p2, -0x1

    aget-byte v0, v0, v2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    .line 331
    add-int/lit8 p2, p2, -0x1

    .line 333
    :cond_0
    sub-int v0, p2, v1

    .line 334
    iget-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->ascii:Z

    if-eqz v2, :cond_1

    .line 335
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-virtual {p1, v2, v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append([BII)V

    .line 343
    :goto_0
    return v0

    .line 339
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 340
    invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method private locateLF()I
    .locals 3

    .prologue
    .line 215
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    :goto_0
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    if-ge v0, v1, :cond_1

    .line 216
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 220
    :goto_1
    return v0

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method protected createTransportMetrics()Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;-><init>()V

    return-object v0
.end method

.method protected fillBuffer()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, -0x1

    .line 138
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    if-lez v1, :cond_1

    .line 139
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v1, v2

    .line 140
    if-lez v1, :cond_0

    .line 141
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    :cond_0
    iput v5, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 144
    iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 147
    :cond_1
    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 148
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    array-length v1, v1

    sub-int/2addr v1, v2

    .line 149
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 150
    if-ne v1, v0, :cond_2

    .line 155
    :goto_0
    return v0

    .line 153
    :cond_2
    add-int v0, v2, v1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 154
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    move v0, v1

    .line 155
    goto :goto_0
.end method

.method public getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method protected hasBufferedData()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init(Ljava/io/InputStream;ILch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 3
    .parameter "instream"
    .parameter "buffersize"
    .parameter "params"

    .prologue
    const/4 v0, 0x0

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    if-gtz p2, :cond_1

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size may not be negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    if-nez p3, :cond_2

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    .line 96
    new-array v1, p2, [B

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    .line 97
    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 98
    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 99
    new-instance v1, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-direct {v1, p2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    .line 100
    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getHttpElementCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->ascii:Z

    .line 103
    const-string v0, "http.connection.max-line-length"

    const/4 v1, -0x1

    invoke-interface {p3, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    .line 104
    const-string v0, "http.connection.min-chunk-limit"

    const/16 v1, 0x200

    invoke-interface {p3, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->minChunkLimit:I

    .line 105
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->createTransportMetrics()Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    .line 106
    return-void
.end method

.method public length()I
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 164
    .line 165
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v1

    .line 167
    if-ne v1, v0, :cond_0

    .line 171
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"

    .prologue
    const/4 v0, 0x0

    .line 208
    if-nez p1, :cond_0

    .line 211
    :goto_0
    return v0

    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v0, -0x1

    .line 175
    if-nez p1, :cond_1

    .line 176
    const/4 v0, 0x0

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 180
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/2addr v1, v0

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    goto :goto_0

    .line 186
    :cond_2
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->minChunkLimit:I

    if-le p3, v1, :cond_3

    .line 187
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 188
    if-lez v0, :cond_0

    .line 189
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v1

    if-nez v1, :cond_4

    .line 195
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v1

    .line 196
    if-ne v1, v0, :cond_3

    goto :goto_0

    .line 200
    :cond_4
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 201
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/2addr v1, v0

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    goto :goto_0
.end method

.method public readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I
    .locals 8
    .parameter "charbuffer"

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 239
    if-nez p1, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    const/4 v0, 0x1

    move v2, v1

    .line 244
    :cond_1
    if-eqz v0, :cond_6

    .line 246
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->locateLF()I

    move-result v4

    .line 247
    if-eq v4, v3, :cond_4

    .line 249
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    invoke-direct {p0, p1, v4}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->lineFromReadBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;I)I

    move-result v0

    .line 277
    :goto_0
    return v0

    .line 254
    :cond_2
    add-int/lit8 v0, v4, 0x1

    iget v5, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v0, v5

    .line 255
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v7, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    invoke-virtual {v5, v6, v7, v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append([BII)V

    .line 256
    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    move v0, v1

    .line 269
    :cond_3
    :goto_1
    iget v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    if-lez v4, :cond_1

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v4

    iget v5, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    if-lt v4, v5, :cond_1

    .line 270
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Maximum line length limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_4
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 260
    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v2, v4

    .line 261
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v6, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    invoke-virtual {v4, v5, v6, v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append([BII)V

    .line 262
    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iput v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 264
    :cond_5
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v2

    .line 265
    if-ne v2, v3, :cond_3

    move v0, v1

    .line 266
    goto :goto_1

    .line 273
    :cond_6
    if-ne v2, v3, :cond_7

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    .line 275
    goto :goto_0

    .line 277
    :cond_7
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->lineFromLineBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method public readLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 348
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result v1

    .line 349
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 350
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
