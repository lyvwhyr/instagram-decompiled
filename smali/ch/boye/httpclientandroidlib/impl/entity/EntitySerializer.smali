.class public Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;
.super Ljava/lang/Object;
.source "EntitySerializer.java"


# instance fields
.field private final lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;)V
    .locals 2
    .parameter "lenStrategy"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length strategy may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;->lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;

    .line 67
    return-void
.end method


# virtual methods
.method protected doSerialize(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Ljava/io/OutputStream;
    .locals 5
    .parameter "outbuffer"
    .parameter "message"

    .prologue
    .line 86
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;->lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;

    invoke-interface {v0, p2}, Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;->determineLength(Lch/boye/httpclientandroidlib/HttpMessage;)J

    move-result-wide v1

    .line 87
    const-wide/16 v3, -0x2

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;)V

    .line 92
    :goto_0
    return-object v0

    .line 89
    :cond_0
    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;)V

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;

    invoke-direct {v0, p1, v1, v2}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;J)V

    goto :goto_0
.end method

.method public serialize(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;Lch/boye/httpclientandroidlib/HttpEntity;)V
    .locals 2
    .parameter "outbuffer"
    .parameter "message"
    .parameter "entity"

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session output buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    if-nez p2, :cond_1

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP message may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    if-nez p3, :cond_2

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;->doSerialize(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Ljava/io/OutputStream;

    move-result-object v0

    .line 120
    invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 122
    return-void
.end method
