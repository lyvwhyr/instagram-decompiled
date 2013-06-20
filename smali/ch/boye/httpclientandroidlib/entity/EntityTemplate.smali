.class public Lch/boye/httpclientandroidlib/entity/EntityTemplate;
.super Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
.source "EntityTemplate.java"


# instance fields
.field private final contentproducer:Lch/boye/httpclientandroidlib/entity/ContentProducer;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/entity/ContentProducer;)V
    .locals 2
    .parameter "contentproducer"

    .prologue
    .line 45
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content producer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/EntityTemplate;->contentproducer:Lch/boye/httpclientandroidlib/entity/ContentProducer;

    .line 50
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Entity template does not implement getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "outstream"

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/EntityTemplate;->contentproducer:Lch/boye/httpclientandroidlib/entity/ContentProducer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/entity/ContentProducer;->writeTo(Ljava/io/OutputStream;)V

    .line 69
    return-void
.end method
