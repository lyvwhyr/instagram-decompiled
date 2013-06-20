.class public abstract Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionOutputBuffer.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/io/BufferInfo;
.implements Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;


# static fields
.field private static final CRLF:[B


# instance fields
.field private ascii:Z

.field private buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

.field private charset:Ljava/lang/String;

.field private metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

.field private minChunkLimit:I

.field private outstream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "US-ASCII"

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->ascii:Z

    .line 70
    const/16 v0, 0x200

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->minChunkLimit:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method protected createTransportMetrics()Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;-><init>()V

    return-object v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    .line 139
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 140
    return-void
.end method

.method protected flushBuffer()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v0

    .line 130
    if-lez v0, :cond_0

    .line 131
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 132
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->clear()V

    .line 133
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    .line 135
    :cond_0
    return-void
.end method

.method public getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method protected init(Ljava/io/OutputStream;ILch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 2
    .parameter "outstream"
    .parameter "buffersize"
    .parameter "params"

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    if-gtz p2, :cond_1

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size may not be negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    if-nez p3, :cond_2

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    .line 92
    new-instance v0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-direct {v0, p2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    .line 93
    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getHttpElementCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->ascii:Z

    .line 96
    const-string v0, "http.connection.min-chunk-limit"

    const/16 v1, 0x200

    invoke-interface {p3, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->minChunkLimit:I

    .line 97
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->createTransportMetrics()Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    .line 98
    return-void

    .line 94
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v0

    return v0
.end method

.method public write(I)V
    .locals 1
    .parameter "b"

    .prologue
    .line 175
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    .line 178
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append(I)V

    .line 179
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->write([BII)V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 149
    :cond_0
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->minChunkLimit:I

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->capacity()I

    move-result v0

    if-le p3, v0, :cond_2

    .line 151
    :cond_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    .line 153
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 154
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 158
    if-le p3, v0, :cond_3

    .line 160
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    .line 163
    :cond_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append([BII)V

    goto :goto_0
.end method

.method public writeLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->ascii:Z

    if-eqz v0, :cond_3

    .line 214
    const/4 v1, 0x0

    .line 215
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v0

    .line 216
    :goto_1
    if-lez v0, :cond_4

    .line 217
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->capacity()I

    move-result v2

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 218
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 219
    if-lez v2, :cond_1

    .line 220
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v3, p1, v1, v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V

    .line 222
    :cond_1
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->isFull()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    .line 225
    :cond_2
    add-int/2addr v1, v2

    .line 226
    sub-int/2addr v0, v2

    .line 227
    goto :goto_1

    .line 231
    :cond_3
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 232
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->write([B)V

    .line 234
    :cond_4
    sget-object v0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->CRLF:[B

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->write([B)V

    goto :goto_0
.end method

.method public writeLine(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 195
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->write([B)V

    .line 197
    :cond_1
    sget-object v0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->CRLF:[B

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->write([B)V

    goto :goto_0
.end method
