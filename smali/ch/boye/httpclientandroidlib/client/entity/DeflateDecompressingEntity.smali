.class public Lch/boye/httpclientandroidlib/client/entity/DeflateDecompressingEntity;
.super Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;
.source "DeflateDecompressingEntity.java"


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .locals 0
    .parameter "entity"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 63
    return-void
.end method


# virtual methods
.method public bridge synthetic getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lch/boye/httpclientandroidlib/Header;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 171
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method getDecompressingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 10
    .parameter "wrapped"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 100
    const/4 v0, 0x6

    new-array v1, v0, [B

    .line 102
    new-instance v2, Ljava/io/PushbackInputStream;

    array-length v0, v1

    invoke-direct {v2, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 104
    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v3

    .line 106
    if-ne v3, v7, :cond_0

    .line 107
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to read the response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    new-array v0, v9, [B

    .line 113
    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4}, Ljava/util/zip/Inflater;-><init>()V

    .line 117
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v5

    if-nez v5, :cond_3

    .line 118
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Unable to read the response"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v2, v1, v8, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 150
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1, v9}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, v2, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    :goto_1
    return-object v0

    .line 124
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 135
    :cond_3
    if-ne v5, v7, :cond_5

    .line 136
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Unable to read the response"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_4
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    invoke-virtual {v4, v1}, Ljava/util/zip/Inflater;->setInput([B)V

    goto :goto_0

    .line 143
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 144
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public bridge synthetic writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
