.class public Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;
.super Ljava/io/OutputStream;
.source "IdentityOutputStream.java"


# instance fields
.field private closed:Z

.field private final out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->closed:Z

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session output buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    .line 63
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->closed:Z

    .line 73
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    .line 75
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    .line 79
    return-void
.end method

.method public write(I)V
    .locals 2
    .parameter "b"

    .prologue
    .line 93
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write(I)V

    .line 97
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 89
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->write([BII)V

    .line 90
    return-void
.end method

.method public write([BII)V
    .locals 2
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 82
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write([BII)V

    .line 86
    return-void
.end method
