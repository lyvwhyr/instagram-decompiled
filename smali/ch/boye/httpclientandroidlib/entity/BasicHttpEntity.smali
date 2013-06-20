.class public Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;
.super Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
.source "BasicHttpEntity.java"


# instance fields
.field private content:Ljava/io/InputStream;

.field private length:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;-><init>()V

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->length:J

    .line 53
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_0
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content has not been provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 0
    .parameter "instream"

    .prologue
    .line 102
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    .line 103
    return-void
.end method

.method public setContentLength(J)V
    .locals 0
    .parameter "len"

    .prologue
    .line 92
    iput-wide p1, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->length:J

    .line 93
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "outstream"

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 112
    const/16 v0, 0x800

    :try_start_0
    new-array v0, v0, [B

    .line 113
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 114
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 119
    return-void
.end method
