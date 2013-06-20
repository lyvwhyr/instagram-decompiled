.class public Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;
.super Ljava/lang/Object;
.source "EntityDeserializer.java"


# instance fields
.field private final lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;)V
    .locals 2
    .parameter "lenStrategy"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length strategy may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;->lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;

    .line 70
    return-void
.end method


# virtual methods
.method public deserialize(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Lch/boye/httpclientandroidlib/HttpEntity;
    .locals 2
    .parameter "inbuffer"
    .parameter "message"

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    if-nez p2, :cond_1

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP message may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;->doDeserialize(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;

    move-result-object v0

    return-object v0
.end method

.method protected doDeserialize(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;
    .locals 8
    .parameter "inbuffer"
    .parameter "message"

    .prologue
    const/4 v7, 0x0

    const-wide/16 v5, -0x1

    .line 90
    new-instance v0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;-><init>()V

    .line 92
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;->lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;

    invoke-interface {v1, p2}, Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;->determineLength(Lch/boye/httpclientandroidlib/HttpMessage;)J

    move-result-wide v1

    .line 93
    const-wide/16 v3, -0x2

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setChunked(Z)V

    .line 95
    invoke-virtual {v0, v5, v6}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContentLength(J)V

    .line 96
    new-instance v1, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;

    invoke-direct {v1, p1}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 107
    :goto_0
    const-string v1, "Content-Type"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContentType(Lch/boye/httpclientandroidlib/Header;)V

    .line 111
    :cond_0
    const-string v1, "Content-Encoding"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContentEncoding(Lch/boye/httpclientandroidlib/Header;)V

    .line 115
    :cond_1
    return-object v0

    .line 97
    :cond_2
    cmp-long v3, v1, v5

    if-nez v3, :cond_3

    .line 98
    invoke-virtual {v0, v7}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setChunked(Z)V

    .line 99
    invoke-virtual {v0, v5, v6}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContentLength(J)V

    .line 100
    new-instance v1, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;

    invoke-direct {v1, p1}, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v0, v7}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setChunked(Z)V

    .line 103
    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContentLength(J)V

    .line 104
    new-instance v3, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;

    invoke-direct {v3, p1, v1, v2}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;J)V

    invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_0
.end method
