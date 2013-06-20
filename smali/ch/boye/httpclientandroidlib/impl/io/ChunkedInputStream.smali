.class public Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final CHUNK_CRLF:I = 0x3

.field private static final CHUNK_DATA:I = 0x2

.field private static final CHUNK_LEN:I = 0x1


# instance fields
.field private final buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

.field private chunkSize:I

.field private closed:Z

.field private eof:Z

.field private footers:[Lch/boye/httpclientandroidlib/Header;

.field private final in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

.field private pos:I

.field private state:I


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 80
    iput-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    .line 83
    iput-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z

    .line 85
    new-array v0, v1, [Lch/boye/httpclientandroidlib/Header;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->footers:[Lch/boye/httpclientandroidlib/Header;

    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    .line 98
    iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    .line 99
    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I

    .line 101
    return-void
.end method

.method private getChunkSize()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 230
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I

    .line 231
    packed-switch v1, :pswitch_data_0

    .line 260
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inconsistent codec state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :pswitch_1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V

    .line 234
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result v1

    .line 235
    if-ne v1, v3, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 239
    new-instance v0, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;

    const-string v1, "Unexpected content at the end of chunk"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I

    .line 245
    :pswitch_2
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V

    .line 246
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result v1

    .line 247
    if-eq v1, v3, :cond_0

    .line 250
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->indexOf(I)I

    move-result v0

    .line 251
    if-gez v0, :cond_3

    .line 252
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v0

    .line 255
    :cond_3
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    new-instance v0, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;

    const-string v1, "Bad chunk header"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private nextChunk()V
    .locals 2

    .prologue
    .line 204
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->getChunkSize()I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I

    .line 205
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I

    if-gez v0, :cond_0

    .line 206
    new-instance v0, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;

    const-string v1, "Negative chunk size"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    .line 210
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I

    if-nez v0, :cond_1

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    .line 212
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->parseTrailerHeaders()V

    .line 214
    :cond_1
    return-void
.end method

.method private parseTrailerHeaders()V
    .locals 4

    .prologue
    .line 270
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->parseHeaders(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;IILch/boye/httpclientandroidlib/message/LineParser;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->footers:[Lch/boye/httpclientandroidlib/Header;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    new-instance v1, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid footer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/util/ExceptionUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 276
    throw v1
.end method


# virtual methods
.method public available()I
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    instance-of v0, v0, Lch/boye/httpclientandroidlib/io/BufferInfo;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    check-cast v0, Lch/boye/httpclientandroidlib/io/BufferInfo;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/BufferInfo;->length()I

    move-result v0

    .line 106
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 287
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_2

    .line 289
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    if-nez v0, :cond_1

    .line 291
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 292
    :cond_0
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gez v1, :cond_0

    .line 296
    :cond_1
    iput-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    .line 297
    iput-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z

    .line 300
    :cond_2
    return-void

    .line 296
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    .line 297
    iput-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z

    throw v0
.end method

.method public getFooters()[Lch/boye/httpclientandroidlib/Header;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->footers:[Lch/boye/httpclientandroidlib/Header;

    invoke-virtual {v0}, [Lch/boye/httpclientandroidlib/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/Header;

    check-cast v0, [Lch/boye/httpclientandroidlib/Header;

    return-object v0
.end method

.method public read()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 125
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 126
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v1, :cond_2

    .line 144
    :cond_1
    :goto_0
    return v0

    .line 131
    :cond_2
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 132
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->nextChunk()V

    .line 133
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    if-nez v1, :cond_1

    .line 137
    :cond_3
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read()I

    move-result v1

    .line 138
    if-eq v1, v0, :cond_4

    .line 139
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    .line 140
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I

    if-lt v0, v2, :cond_4

    .line 141
    const/4 v0, 0x3

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I

    :cond_4
    move v0, v1

    .line 144
    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"

    .prologue
    .line 196
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v0, -0x1

    .line 159
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 160
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v1, :cond_2

    .line 179
    :cond_1
    :goto_0
    return v0

    .line 166
    :cond_2
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 167
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->nextChunk()V

    .line 168
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    if-nez v1, :cond_1

    .line 172
    :cond_3
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 173
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v1, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read([BII)I

    move-result v1

    .line 174
    if-eq v1, v0, :cond_5

    .line 175
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    .line 176
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I

    if-lt v0, v2, :cond_4

    .line 177
    const/4 v0, 0x3

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I

    :cond_4
    move v0, v1

    .line 179
    goto :goto_0

    .line 181
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    .line 182
    new-instance v0, Lch/boye/httpclientandroidlib/TruncatedChunkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated chunk ( expected size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; actual size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/TruncatedChunkException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
