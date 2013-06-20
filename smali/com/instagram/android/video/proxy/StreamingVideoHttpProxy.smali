.class public Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;
.super Ljava/lang/Object;
.source "StreamingVideoHttpProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamingVideoHttpProxy"

.field private static sInstance:Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;


# instance fields
.field private mIsRunning:Z

.field private mPort:I

.field private mSocket:Ljava/net/ServerSocket;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mPort:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mIsRunning:Z

    .line 55
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mPort:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mSocket:Ljava/net/ServerSocket;

    .line 56
    iget-object v0, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mSocket:Ljava/net/ServerSocket;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 57
    iget-object v0, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mPort:I

    .line 58
    const-string v0, "StreamingVideoHttpProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " obtained"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v1, "StreamingVideoHttpProxy"

    const-string v2, "Error initializing server"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    const-string v1, "StreamingVideoHttpProxy"

    const-string v2, "Error initializing server"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 55
    nop

    :array_0
    .array-data 0x1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public static getInstance()Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->sInstance:Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;

    invoke-direct {v0}, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;-><init>()V

    sput-object v0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->sInstance:Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;

    .line 47
    sget-object v0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->sInstance:Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;

    invoke-virtual {v0}, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->start()V

    .line 50
    :cond_0
    sget-object v0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->sInstance:Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;

    return-object v0
.end method

.method private handleRequest(Ljava/net/Socket;)V
    .locals 4
    .parameter "client"

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 124
    new-instance v0, Lch/boye/httpclientandroidlib/impl/DefaultHttpServerConnection;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpServerConnection;-><init>()V

    .line 127
    :try_start_0
    new-instance v2, Lch/boye/httpclientandroidlib/params/BasicHttpParams;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;-><init>()V

    invoke-virtual {v0, p1, v2}, Lch/boye/httpclientandroidlib/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 128
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpServerConnection;->receiveRequestHeader()Lch/boye/httpclientandroidlib/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 135
    :goto_0
    if-nez v0, :cond_0

    .line 145
    :goto_1
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string v2, "StreamingVideoHttpProxy"

    const-string v3, "Error parsing request"

    invoke-static {v2, v3, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 133
    goto :goto_0

    .line 131
    :catch_1
    move-exception v0

    .line 132
    const-string v2, "StreamingVideoHttpProxy"

    const-string v3, "Http Error"

    invoke-static {v2, v3, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 139
    :cond_0
    const-string v1, "StreamingVideoHttpProxy"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 142
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/instagram/android/mediacache/IgVideoCache;->getInstance()Lcom/instagram/android/mediacache/IgVideoCache;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/instagram/android/mediacache/IgVideoCache;->streamVideo(Landroid/net/Uri;Ljava/net/Socket;)V

    goto :goto_1
.end method


# virtual methods
.method public getProxyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "videoUrl"

    .prologue
    .line 71
    const-string v0, "http://127.0.0.1:%d/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 101
    const-string v0, "StreamingVideoHttpProxy"

    const-string v1, "running"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 109
    const-string v1, "StreamingVideoHttpProxy"

    const-string v2, "client connected"

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0, v0}, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->handleRequest(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    .line 115
    const-string v1, "StreamingVideoHttpProxy"

    const-string v2, "Error connecting to client"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 118
    :cond_1
    const-string v0, "StreamingVideoHttpProxy"

    const-string v1, "Proxy interrupted. Shutting down."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start proxy; it has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "StreamingVideoHttpProxy"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mThread:Ljava/lang/Thread;

    .line 81
    iget-object v0, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mIsRunning:Z

    .line 87
    iget-object v0, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stop proxy; it has not been started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/proxy/StreamingVideoHttpProxy;->mThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
