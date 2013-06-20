.class public Lcom/instagram/util/InputStreamWrapper;
.super Ljava/io/InputStream;
.source "InputStreamWrapper.java"


# instance fields
.field private bufferedOutputStream:Ljava/io/BufferedOutputStream;

.field private final mFile:Ljava/io/File;

.field private final mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 3
    .parameter "inputStream"
    .parameter "file"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/instagram/util/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    .line 20
    iput-object p2, p0, Lcom/instagram/util/InputStreamWrapper;->mFile:Ljava/io/File;

    .line 21
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/instagram/util/InputStreamWrapper;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/instagram/util/InputStreamWrapper;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 22
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/instagram/util/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/util/InputStreamWrapper;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 39
    iget-object v0, p0, Lcom/instagram/util/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 40
    return-void
.end method

.method public mark(I)V
    .locals 2
    .parameter "readlimit"

    .prologue
    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/util/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 27
    iget-object v1, p0, Lcom/instagram/util/InputStreamWrapper;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 28
    return v0
.end method

.method public read([B)I
    .locals 3
    .parameter "buffer"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/util/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/instagram/util/InputStreamWrapper;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 56
    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/instagram/util/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/instagram/util/InputStreamWrapper;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 63
    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .parameter "byteCount"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
