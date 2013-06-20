.class public Lcom/instagram/android/http/ListenableHttpDownloader;
.super Ljava/lang/Object;
.source "ListenableHttpDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListenableHttpDownloader"


# instance fields
.field private final mHttpClient:Lch/boye/httpclientandroidlib/client/HttpClient;

.field private final mListener:Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;Landroid/net/Uri;Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;)V
    .locals 2
    .parameter "httpClient"
    .parameter "uri"
    .parameter "listener"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/instagram/android/http/ListenableHttpDownloader;->mHttpClient:Lch/boye/httpclientandroidlib/client/HttpClient;

    .line 64
    iput-object p2, p0, Lcom/instagram/android/http/ListenableHttpDownloader;->mUri:Landroid/net/Uri;

    .line 65
    iput-object p3, p0, Lcom/instagram/android/http/ListenableHttpDownloader;->mListener:Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;

    .line 67
    iget-object v0, p0, Lcom/instagram/android/http/ListenableHttpDownloader;->mListener:Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    return-void
.end method

.method private readBytes(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .locals 6
    .parameter "entity"

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 117
    :try_start_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP entity may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    :try_start_1
    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 141
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :goto_0
    throw v0

    .line 122
    :cond_0
    if-nez v1, :cond_1

    .line 140
    :try_start_2
    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 141
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 145
    :goto_1
    return-void

    .line 125
    :cond_1
    :try_start_3
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_2
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v0, v2

    .line 130
    if-gez v0, :cond_3

    const/16 v0, 0x1000

    :goto_2
    new-array v0, v0, [B

    .line 135
    :goto_3
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 136
    iget-object v3, p0, Lcom/instagram/android/http/ListenableHttpDownloader;->mListener:Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;

    invoke-interface {v3, v0, v2}, Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;->onBytesReceived([BI)V

    goto :goto_3

    .line 130
    :cond_3
    div-int/lit8 v0, v0, 0xa
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 140
    :cond_4
    :try_start_4
    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 141
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 142
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/http/ListenableHttpDownloader;->mListener:Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;

    invoke-interface {v0}, Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;->onRequestStarted()V

    .line 77
    new-instance v0, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    iget-object v1, p0, Lcom/instagram/android/http/ListenableHttpDownloader;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/instagram/android/http/ListenableHttpDownloader;->mHttpClient:Lch/boye/httpclientandroidlib/client/HttpClient;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/instagram/android/http/ListenableHttpDownloader;->mListener:Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;

    invoke-interface {v0}, Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;->onError()V

    .line 102
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/http/ListenableHttpDownloader;->mListener:Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v3

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;->onHeadersReceived(Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;J)V

    .line 93
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/http/ListenableHttpDownloader;->readBytes(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    iget-object v0, p0, Lcom/instagram/android/http/ListenableHttpDownloader;->mListener:Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;

    invoke-interface {v0}, Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;->onCompleted()V

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string v1, "ListenableHttpDownloader"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/instagram/android/http/ListenableHttpDownloader;->mListener:Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;

    invoke-interface {v0}, Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;->onError()V

    goto :goto_0
.end method
