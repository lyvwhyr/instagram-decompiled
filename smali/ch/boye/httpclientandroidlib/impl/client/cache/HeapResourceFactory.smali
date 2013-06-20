.class public Lch/boye/httpclientandroidlib/impl/client/cache/HeapResourceFactory;
.super Ljava/lang/Object;
.source "HeapResourceFactory.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/Resource;)Lch/boye/httpclientandroidlib/client/cache/Resource;
    .locals 2
    .parameter "requestId"
    .parameter "resource"

    .prologue
    .line 69
    instance-of v0, p2, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResource;

    if-eqz v0, :cond_0

    .line 70
    check-cast p2, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResource;

    .end local p2
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResource;->getByteArray()[B

    move-result-object v0

    .line 76
    :goto_0
    new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResource;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResource;-><init>([B)V

    return-object v1

    .line 72
    .restart local p2
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/client/cache/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/IOUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public generate(Ljava/lang/String;Ljava/io/InputStream;Lch/boye/httpclientandroidlib/client/cache/InputLimit;)Lch/boye/httpclientandroidlib/client/cache/Resource;
    .locals 6
    .parameter "requestId"
    .parameter "instream"
    .parameter "limit"

    .prologue
    .line 50
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 51
    const/16 v0, 0x800

    new-array v3, v0, [B

    .line 52
    const-wide/16 v0, 0x0

    .line 54
    :cond_0
    invoke-virtual {p2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 55
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 56
    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 57
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->getValue()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 58
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->reached()V

    .line 62
    :cond_1
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResource;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResource;-><init>([B)V

    return-object v0
.end method
