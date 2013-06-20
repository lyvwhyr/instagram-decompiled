.class abstract Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;
.super Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;
.source "DecompressingEntity.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private content:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->getDecompressingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    .line 74
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    .line 76
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->getDecompressingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method abstract getDecompressingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "outstream"

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 90
    const/16 v0, 0x800

    :try_start_0
    new-array v0, v0, [B

    .line 94
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 95
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 100
    return-void
.end method
