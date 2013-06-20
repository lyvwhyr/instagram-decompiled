.class public Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private closed:Z

.field private contentLength:J

.field private in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

.field private pos:J


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;J)V
    .locals 3
    .parameter "in"
    .parameter "contentLength"

    .prologue
    const-wide/16 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 63
    iput-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    cmp-long v0, p2, v1

    if-gez v0, :cond_1

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    .line 90
    iput-wide p2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    .line 91
    return-void
.end method


# virtual methods
.method public available()I
    .locals 5

    .prologue
    .line 117
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    instance-of v0, v0, Lch/boye/httpclientandroidlib/io/BufferInfo;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    check-cast v0, Lch/boye/httpclientandroidlib/io/BufferInfo;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/BufferInfo;->length()I

    move-result v0

    .line 119
    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 101
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v0, :cond_2

    .line 103
    :try_start_0
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 104
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 105
    :cond_0
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gez v1, :cond_0

    .line 111
    :cond_1
    iput-boolean v4, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    .line 114
    :cond_2
    return-void

    .line 111
    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    throw v0
.end method

.method public read()I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 132
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 133
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 149
    :goto_0
    return v0

    .line 139
    :cond_1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read()I

    move-result v1

    .line 140
    if-ne v1, v0, :cond_2

    .line 141
    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v4, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 142
    new-instance v0, Lch/boye/httpclientandroidlib/ConnectionClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Premature end of Content-Length delimited message body (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    :cond_3
    move v0, v1

    .line 149
    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"

    .prologue
    .line 197
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v0, -0x1

    .line 165
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 166
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 185
    :goto_0
    return v0

    .line 173
    :cond_1
    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 174
    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v1, v3

    long-to-int p3, v1

    .line 176
    :cond_2
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v1, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read([BII)I

    move-result v1

    .line 177
    if-ne v1, v0, :cond_3

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v4, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 178
    new-instance v0, Lch/boye/httpclientandroidlib/ConnectionClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Premature end of Content-Length delimited message body (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_3
    if-lez v1, :cond_4

    .line 183
    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    :cond_4
    move v0, v1

    .line 185
    goto :goto_0
.end method

.method public skip(J)J
    .locals 10
    .parameter "n"

    .prologue
    const-wide/16 v0, 0x0

    .line 209
    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 226
    :goto_0
    return-wide v0

    .line 212
    :cond_0
    const/16 v2, 0x800

    new-array v6, v2, [B

    .line 215
    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v4, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v2, v4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide v4, v2

    move-wide v2, v0

    .line 218
    :goto_1
    cmp-long v7, v4, v0

    if-lez v7, :cond_1

    .line 219
    const/4 v7, 0x0

    const-wide/16 v8, 0x800

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {p0, v6, v7, v8}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v7

    .line 220
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    :cond_1
    move-wide v0, v2

    .line 226
    goto :goto_0

    .line 223
    :cond_2
    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 224
    int-to-long v7, v7

    sub-long/2addr v4, v7

    .line 225
    goto :goto_1
.end method
