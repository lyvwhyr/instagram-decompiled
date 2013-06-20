.class public Lcom/instagram/android/http/SimpleHttpStreamer;
.super Ljava/lang/Object;
.source "SimpleHttpStreamer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleHttpStreamer"


# instance fields
.field private final mClient:Ljava/net/Socket;

.field private mContent:Ljava/io/InputStream;

.field private final mHeaders:[Lch/boye/httpclientandroidlib/Header;

.field private final mStatusLine:Lch/boye/httpclientandroidlib/StatusLine;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;)V
    .locals 2
    .parameter "client"
    .parameter "statusLine"
    .parameter "headers"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/instagram/android/http/SimpleHttpStreamer;->mClient:Ljava/net/Socket;

    .line 37
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify status line and headers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    iput-object p2, p0, Lcom/instagram/android/http/SimpleHttpStreamer;->mStatusLine:Lch/boye/httpclientandroidlib/StatusLine;

    .line 42
    iput-object p3, p0, Lcom/instagram/android/http/SimpleHttpStreamer;->mHeaders:[Lch/boye/httpclientandroidlib/Header;

    .line 43
    return-void
.end method


# virtual methods
.method public setContent(Ljava/io/InputStream;)Lcom/instagram/android/http/SimpleHttpStreamer;
    .locals 0
    .parameter "content"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/instagram/android/http/SimpleHttpStreamer;->mContent:Ljava/io/InputStream;

    .line 52
    return-object p0
.end method

.method public stream()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/instagram/android/http/SimpleHttpStreamer;->mClient:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    iget-object v0, p0, Lcom/instagram/android/http/SimpleHttpStreamer;->mStatusLine:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v0, "SimpleHttpStreamer"

    const-string v4, "wrote status line"

    invoke-static {v0, v4}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v4, p0, Lcom/instagram/android/http/SimpleHttpStreamer;->mHeaders:[Lch/boye/httpclientandroidlib/Header;

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 71
    invoke-interface {v6}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v0, "SimpleHttpStreamer"

    const-string v4, "wrote headers"

    invoke-static {v0, v4}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "SimpleHttpStreamer"

    const-string v4, "writing to client"

    invoke-static {v0, v4}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 82
    array-length v3, v0

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 84
    iget-object v0, p0, Lcom/instagram/android/http/SimpleHttpStreamer;->mContent:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 87
    const/16 v0, 0x800

    :try_start_0
    new-array v0, v0, [B

    .line 90
    :goto_1
    iget-object v1, p0, Lcom/instagram/android/http/SimpleHttpStreamer;->mContent:Ljava/io/InputStream;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 91
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :try_start_1
    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    iget-object v0, p0, Lcom/instagram/android/http/SimpleHttpStreamer;->mContent:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 99
    :cond_1
    :goto_2
    return-void

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/http/SimpleHttpStreamer;->mContent:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/instagram/android/http/SimpleHttpStreamer;->mContent:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method
