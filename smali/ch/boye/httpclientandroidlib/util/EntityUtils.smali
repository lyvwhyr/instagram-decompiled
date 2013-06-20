.class public final Lch/boye/httpclientandroidlib/util/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 61
    if-nez p0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public static getContentCharSet(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;
    .locals 3
    .parameter "entity"

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    .line 122
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 123
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v1

    .line 124
    array-length v2, v1

    if-lez v2, :cond_1

    .line 125
    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "charset"

    invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterByName(Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_1

    .line 127
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_1
    return-object v0
.end method

.method public static getContentMimeType(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;
    .locals 3
    .parameter "entity"

    .prologue
    .line 145
    if-nez p0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    .line 149
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 150
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v1

    .line 151
    array-length v2, v1

    if-lez v2, :cond_1

    .line 152
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_1
    return-object v0
.end method

.method public static toByteArray(Lch/boye/httpclientandroidlib/HttpEntity;)[B
    .locals 7
    .parameter "entity"

    .prologue
    const/16 v0, 0x1000

    .line 82
    if-nez p0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 86
    if-nez v2, :cond_1

    .line 87
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    .line 90
    :cond_1
    :try_start_0
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    .line 93
    :cond_2
    :try_start_1
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v1, v3

    .line 94
    if-gez v1, :cond_4

    .line 97
    :goto_1
    new-instance v1, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;-><init>(I)V

    .line 98
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 100
    :goto_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 101
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append([BII)V

    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 105
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;
    .locals 1
    .parameter "entity"

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lch/boye/httpclientandroidlib/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "entity"
    .parameter "defaultCharset"

    .prologue
    .line 173
    if-nez p0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 177
    if-nez v2, :cond_1

    .line 178
    const/4 v0, 0x0

    .line 204
    :goto_0
    return-object v0

    .line 181
    :cond_1
    :try_start_0
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    .line 184
    :cond_2
    :try_start_1
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    .line 185
    if-gez v0, :cond_6

    .line 186
    const/16 v0, 0x1000

    move v1, v0

    .line 188
    :goto_1
    invoke-static {p0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->getContentCharSet(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 189
    if-nez v0, :cond_3

    move-object v0, p1

    .line 192
    :cond_3
    if-nez v0, :cond_4

    .line 193
    const-string v0, "ISO-8859-1"

    .line 195
    :cond_4
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 196
    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 197
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 199
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 200
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append([CII)V

    goto :goto_2

    .line 202
    :cond_5
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 204
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_1
.end method
