.class Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;
.super Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
.source "CombinedEntity.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final combinedStream:Ljava/io/InputStream;

.field private final resource:Lch/boye/httpclientandroidlib/client/cache/Resource;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/client/cache/Resource;Ljava/io/InputStream;)V
    .locals 3
    .parameter "resource"
    .parameter "instream"

    .prologue
    .line 46
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;-><init>()V

    .line 47
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;

    .line 48
    new-instance v0, Ljava/io/SequenceInputStream;

    new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity$ResourceStream;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/client/cache/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity$ResourceStream;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;Ljava/io/InputStream;)V

    invoke-direct {v0, v1, p2}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->combinedStream:Ljava/io/InputStream;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->dispose()V

    return-void
.end method

.method private dispose()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/cache/Resource;->dispose()V

    .line 86
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->combinedStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 53
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "outstream"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 75
    const/16 v0, 0x800

    :try_start_0
    new-array v0, v0, [B

    .line 76
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 77
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 82
    return-void
.end method
