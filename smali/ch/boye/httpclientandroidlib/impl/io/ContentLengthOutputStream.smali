.class public Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;
.super Ljava/io/OutputStream;
.source "ContentLengthOutputStream.java"


# instance fields
.field private closed:Z

.field private final contentLength:J

.field private final out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

.field private total:J


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;J)V
    .locals 3
    .parameter "out"
    .parameter "contentLength"

    .prologue
    const-wide/16 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 62
    iput-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->closed:Z

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session output buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    cmp-long v0, p2, v1

    if-gez v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    .line 86
    iput-wide p2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->contentLength:J

    .line 87
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->closed:Z

    .line 97
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    .line 99
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    .line 103
    return-void
.end method

.method public write(I)V
    .locals 4
    .parameter "b"

    .prologue
    .line 124
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->contentLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 128
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write(I)V

    .line 129
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J

    .line 131
    :cond_1
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 120
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->write([BII)V

    .line 121
    return-void
.end method

.method public write([BII)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 106
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->contentLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 110
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->contentLength:J

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J

    sub-long/2addr v0, v2

    .line 111
    int-to-long v2, p3

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 112
    long-to-int p3, v0

    .line 114
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write([BII)V

    .line 115
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J

    .line 117
    :cond_2
    return-void
.end method
