.class Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;
.super Ljava/lang/Object;
.source "IgVideoCache.java"

# interfaces
.implements Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;


# instance fields
.field private mBuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private mContentLength:J

.field private mHeaders:[Lch/boye/httpclientandroidlib/Header;

.field private volatile mProgressListener:Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;

.field private mRequestTime:Ljava/util/Date;

.field private mResponseTime:Ljava/util/Date;

.field private mStartTimestamp:J

.field private mStatusLine:Lch/boye/httpclientandroidlib/StatusLine;

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/instagram/android/mediacache/IgVideoCache;


# direct methods
.method constructor <init>(Lcom/instagram/android/mediacache/IgVideoCache;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter "uri"

    .prologue
    .line 409
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->this$0:Lcom/instagram/android/mediacache/IgVideoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mClients:Ljava/util/List;

    .line 410
    iput-object p2, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mUri:Landroid/net/Uri;

    .line 411
    return-void
.end method

.method private declared-synchronized closeAllClients()V
    .locals 2

    .prologue
    .line 573
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 574
    invoke-direct {p0, v0}, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->closeClient(Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 576
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private closeClient(Ljava/net/Socket;)V
    .locals 2
    .parameter "client"

    .prologue
    .line 580
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_0
    return-void

    .line 581
    :catch_0
    move-exception v0

    .line 582
    const-string v0, "IgVideoCache"

    const-string v1, "Error closing client"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendCompleteCallback()V
    .locals 4

    .prologue
    .line 553
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mProgressListener:Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->this$0:Lcom/instagram/android/mediacache/IgVideoCache;

    #getter for: Lcom/instagram/android/mediacache/IgVideoCache;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgVideoCache;->access$600(Lcom/instagram/android/mediacache/IgVideoCache;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->this$0:Lcom/instagram/android/mediacache/IgVideoCache;

    #getter for: Lcom/instagram/android/mediacache/IgVideoCache;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/instagram/android/mediacache/IgVideoCache;->access$600(Lcom/instagram/android/mediacache/IgVideoCache;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mProgressListener:Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 556
    :cond_0
    return-void
.end method

.method private sendErrorCallback()V
    .locals 4

    .prologue
    .line 559
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mProgressListener:Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->this$0:Lcom/instagram/android/mediacache/IgVideoCache;

    #getter for: Lcom/instagram/android/mediacache/IgVideoCache;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgVideoCache;->access$600(Lcom/instagram/android/mediacache/IgVideoCache;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->this$0:Lcom/instagram/android/mediacache/IgVideoCache;

    #getter for: Lcom/instagram/android/mediacache/IgVideoCache;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/instagram/android/mediacache/IgVideoCache;->access$600(Lcom/instagram/android/mediacache/IgVideoCache;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mProgressListener:Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 562
    :cond_0
    return-void
.end method

.method private streamHeaders(Ljava/net/Socket;)V
    .locals 3
    .parameter "client"

    .prologue
    .line 566
    :try_start_0
    new-instance v0, Lcom/instagram/android/http/SimpleHttpStreamer;

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mStatusLine:Lch/boye/httpclientandroidlib/StatusLine;

    iget-object v2, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mHeaders:[Lch/boye/httpclientandroidlib/Header;

    invoke-direct {v0, p1, v1, v2}, Lcom/instagram/android/http/SimpleHttpStreamer;-><init>(Ljava/net/Socket;Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;)V

    invoke-virtual {v0}, Lcom/instagram/android/http/SimpleHttpStreamer;->stream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 568
    const-string v0, "IgVideoCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error streaming headers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized addClient(Ljava/net/Socket;)V
    .locals 6
    .parameter "client"

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mStatusLine:Lch/boye/httpclientandroidlib/StatusLine;

    if-eqz v0, :cond_0

    .line 422
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->streamHeaders(Ljava/net/Socket;)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mBuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mBuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 426
    const-string v0, "IgVideoCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding client after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mBuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    const/4 v0, 0x0

    .line 430
    :try_start_1
    iget-object v1, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mBuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    .line 431
    iget-object v2, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mBuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v2

    .line 432
    const/16 v3, 0x800

    .line 434
    :goto_0
    if-ge v0, v2, :cond_1

    .line 435
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    sub-int v5, v2, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v1, v0, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 434
    add-int/2addr v0, v3

    goto :goto_0

    .line 437
    :catch_0
    move-exception v1

    .line 438
    :try_start_2
    const-string v1, "IgVideoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing catchup bytes to socket, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes written: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    :try_start_3
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 460
    :goto_1
    monitor-exit p0

    return-void

    .line 450
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mBuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mBuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mContentLength:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 453
    :try_start_5
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 454
    :catch_1
    move-exception v0

    goto :goto_1

    .line 458
    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 442
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized onBytesReceived([BI)V
    .locals 6
    .parameter "bytes"
    .parameter "byteCount"

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mBuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append([BII)V

    .line 503
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 504
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v1

    .line 509
    :try_start_2
    const-string v3, "IgVideoCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing bytes after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mBuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes written: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v3, "IgVideoCache"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 513
    :try_start_3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 514
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 515
    :catch_1
    move-exception v0

    goto :goto_0

    .line 519
    :cond_0
    monitor-exit p0

    return-void

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 523
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mStartTimestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 524
    const-string v2, "IgVideoCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video downloaded in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->closeAllClients()V

    .line 530
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mStatusLine:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mBuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->this$0:Lcom/instagram/android/mediacache/IgVideoCache;

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mBuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    #calls: Lcom/instagram/android/mediacache/IgVideoCache;->putVideo(Landroid/net/Uri;[B)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/mediacache/IgVideoCache;->access$400(Lcom/instagram/android/mediacache/IgVideoCache;Landroid/net/Uri;[B)V

    .line 534
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :try_start_1
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->sendCompleteCallback()V

    .line 536
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->this$0:Lcom/instagram/android/mediacache/IgVideoCache;

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mUri:Landroid/net/Uri;

    #calls: Lcom/instagram/android/mediacache/IgVideoCache;->removeTask(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/instagram/android/mediacache/IgVideoCache;->access$500(Lcom/instagram/android/mediacache/IgVideoCache;Landroid/net/Uri;)V

    .line 544
    return-void

    .line 536
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    const-string v0, "IgVideoCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t store cache entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->sendErrorCallback()V

    goto :goto_0
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->sendErrorCallback()V

    .line 549
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->this$0:Lcom/instagram/android/mediacache/IgVideoCache;

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mUri:Landroid/net/Uri;

    #calls: Lcom/instagram/android/mediacache/IgVideoCache;->removeTask(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/instagram/android/mediacache/IgVideoCache;->access$500(Lcom/instagram/android/mediacache/IgVideoCache;Landroid/net/Uri;)V

    .line 550
    return-void
.end method

.method public declared-synchronized onHeadersReceived(Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;J)V
    .locals 6
    .parameter "statusLine"
    .parameter "headers"
    .parameter "contentLength"

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mStatusLine:Lch/boye/httpclientandroidlib/StatusLine;

    .line 488
    iput-object p2, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mHeaders:[Lch/boye/httpclientandroidlib/Header;

    .line 489
    iput-wide p3, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mContentLength:J

    .line 490
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mResponseTime:Ljava/util/Date;

    .line 491
    new-instance v1, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    iget-wide v2, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mContentLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const/16 v0, 0x1000

    :goto_0
    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mBuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    .line 493
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 494
    invoke-direct {p0, v0}, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->streamHeaders(Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 491
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mContentLength:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v0, v2

    goto :goto_0

    .line 496
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public onRequestStarted()V
    .locals 3

    .prologue
    .line 476
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mRequestTime:Ljava/util/Date;

    .line 477
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mStartTimestamp:J

    .line 478
    const-string v0, "IgVideoCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started downloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method declared-synchronized setProgressListener(Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 467
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->this$0:Lcom/instagram/android/mediacache/IgVideoCache;

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgVideoCache;->hasVideo(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-interface {p1}, Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :goto_0
    monitor-exit p0

    return-void

    .line 470
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->mProgressListener:Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
