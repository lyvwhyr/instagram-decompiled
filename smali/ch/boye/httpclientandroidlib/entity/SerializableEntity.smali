.class public Lch/boye/httpclientandroidlib/entity/SerializableEntity;
.super Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
.source "SerializableEntity.java"


# instance fields
.field private objRef:Ljava/io/Serializable;

.field private objSer:[B


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Z)V
    .locals 2
    .parameter "ser"
    .parameter "bufferize"

    .prologue
    .line 61
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source object may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    if-eqz p2, :cond_1

    .line 67
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->createBytes(Ljava/io/Serializable;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    goto :goto_0
.end method

.method private createBytes(Ljava/io/Serializable;)V
    .locals 2
    .parameter "ser"

    .prologue
    .line 74
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 76
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 78
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objSer:[B

    .line 79
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->createBytes(Ljava/io/Serializable;)V

    .line 85
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objSer:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_0

    .line 90
    const-wide/16 v0, -0x1

    .line 92
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objSer:[B

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "outstream"

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 111
    iget-object v1, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objSer:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 115
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_0
.end method
