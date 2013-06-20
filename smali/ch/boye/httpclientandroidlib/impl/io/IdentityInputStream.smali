.class public Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;
.super Ljava/io/InputStream;
.source "IdentityInputStream.java"


# instance fields
.field private closed:Z

.field private final in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->closed:Z

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    .line 65
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    instance-of v0, v0, Lch/boye/httpclientandroidlib/io/BufferInfo;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    check-cast v0, Lch/boye/httpclientandroidlib/io/BufferInfo;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/BufferInfo;->length()I

    move-result v0

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->closed:Z

    .line 77
    return-void
.end method

.method public read()I
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, -0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 88
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, -0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read([BII)I

    move-result v0

    goto :goto_0
.end method
