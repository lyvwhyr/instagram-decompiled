.class public Lcom/instagram/android/mediacache/IgVideoCache;
.super Ljava/lang/Object;
.source "IgVideoCache.java"


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "video"

.field private static final MAX_SIZE_BYTES:J = 0x6400000L

.field private static final MAX_TASKS:I = 0x1

.field private static final MESSAGE_COMPLETE:I = 0x1

.field private static final MESSAGE_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "IgVideoCache"

.field private static sInstance:Lcom/instagram/android/mediacache/IgVideoCache;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDownloadQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mHandler:Landroid/os/Handler;

.field private mHttpClient:Lch/boye/httpclientandroidlib/client/HttpClient;

.field private mRunningTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private mStorage:Lcom/instagram/android/mediacache/DiskLruCache;

.field private mUriListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final taskLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/instagram/android/mediacache/IgVideoCache$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/android/mediacache/IgVideoCache$InternalHandler;-><init>(Lcom/instagram/android/mediacache/IgVideoCache$1;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mHandler:Landroid/os/Handler;

    .line 102
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->taskLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mDownloadQueue:Ljava/util/LinkedList;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mUriListenerMap:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mRunningTasks:Ljava/util/Map;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mContext:Landroid/content/Context;

    .line 145
    return-void
.end method

.method static synthetic access$100()Lcom/instagram/android/mediacache/IgVideoCache;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/instagram/android/mediacache/IgVideoCache;->sInstance:Lcom/instagram/android/mediacache/IgVideoCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/mediacache/IgVideoCache;)Lcom/instagram/android/mediacache/DiskLruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgVideoCache;->getStorage()Lcom/instagram/android/mediacache/DiskLruCache;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/mediacache/IgVideoCache;)Lch/boye/httpclientandroidlib/client/HttpClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgVideoCache;->getHttpClient()Lch/boye/httpclientandroidlib/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/mediacache/IgVideoCache;Landroid/net/Uri;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/mediacache/IgVideoCache;->putVideo(Landroid/net/Uri;[B)V

    return-void
.end method

.method static synthetic access$500(Lcom/instagram/android/mediacache/IgVideoCache;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/IgVideoCache;->removeTask(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$600(Lcom/instagram/android/mediacache/IgVideoCache;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized createHttpClient()V
    .locals 5

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mHttpClient:Lch/boye/httpclientandroidlib/client/HttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 367
    :goto_0
    monitor-exit p0

    return-void

    .line 352
    :cond_0
    :try_start_1
    new-instance v0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;-><init>()V

    .line 354
    new-instance v1, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    const-string v2, "http"

    const/16 v3, 0x50

    invoke-static {}, Lch/boye/httpclientandroidlib/conn/scheme/PlainSocketFactory;->getSocketFactory()Lch/boye/httpclientandroidlib/conn/scheme/PlainSocketFactory;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;)V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->register(Lch/boye/httpclientandroidlib/conn/scheme/Scheme;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    .line 355
    new-instance v1, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-static {}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->getSocketFactory()Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;)V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->register(Lch/boye/httpclientandroidlib/conn/scheme/Scheme;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    .line 357
    new-instance v1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    .line 358
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->setDefaultMaxPerRoute(I)V

    .line 359
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->setMaxTotal(I)V

    .line 361
    new-instance v0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;-><init>()V

    .line 362
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V

    .line 363
    const/16 v2, 0x2710

    invoke-static {v0, v2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 364
    const/16 v2, 0x2710

    invoke-static {v0, v2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 366
    new-instance v2, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    iput-object v2, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mHttpClient:Lch/boye/httpclientandroidlib/client/HttpClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized createStorage()V
    .locals 7

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mStorage:Lcom/instagram/android/mediacache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 303
    :goto_0
    monitor-exit p0

    return-void

    .line 286
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mContext:Landroid/content/Context;

    const-string v1, "video"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/instagram/android/mediacache/CacheUtil;->getCacheDirectory(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 287
    const v0, 0x3dcccccd

    const-wide/32 v3, 0x6400000

    invoke-static {v2, v0, v3, v4}, Lcom/instagram/android/mediacache/CacheUtil;->getCacheSizeBytes(Ljava/io/File;FJ)J

    move-result-wide v0

    .line 289
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    .line 292
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mContext:Landroid/content/Context;

    const-string v1, "video"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/android/mediacache/CacheUtil;->getCacheDirectory(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 293
    const v0, 0x3dcccccd

    const-wide/32 v3, 0x6400000

    invoke-static {v2, v0, v3, v4}, Lcom/instagram/android/mediacache/CacheUtil;->getCacheSizeBytes(Ljava/io/File;FJ)J

    move-result-wide v0

    .line 294
    const-string v3, "IgVideoCache"

    const-string v4, "Couldn\'t create in external storage"

    invoke-static {v3, v4}, Lcom/instagram/crash/IgErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_1
    const-string v3, "IgVideoCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v3, "IgVideoCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v5, 0x100000

    div-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/instagram/android/mediacache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mStorage:Lcom/instagram/android/mediacache/DiskLruCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to open video cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getHttpClient()Lch/boye/httpclientandroidlib/client/HttpClient;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mHttpClient:Lch/boye/httpclientandroidlib/client/HttpClient;

    if-nez v0, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgVideoCache;->createHttpClient()V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mHttpClient:Lch/boye/httpclientandroidlib/client/HttpClient;

    return-object v0
.end method

.method public static getInstance()Lcom/instagram/android/mediacache/IgVideoCache;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/instagram/android/mediacache/IgVideoCache;->sInstance:Lcom/instagram/android/mediacache/IgVideoCache;

    return-object v0
.end method

.method private getKey(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStorage()Lcom/instagram/android/mediacache/DiskLruCache;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mStorage:Lcom/instagram/android/mediacache/DiskLruCache;

    if-nez v0, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgVideoCache;->createStorage()V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mStorage:Lcom/instagram/android/mediacache/DiskLruCache;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 131
    new-instance v0, Lcom/instagram/android/mediacache/IgVideoCache;

    invoke-direct {v0, p0}, Lcom/instagram/android/mediacache/IgVideoCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instagram/android/mediacache/IgVideoCache;->sInstance:Lcom/instagram/android/mediacache/IgVideoCache;

    .line 134
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/instagram/android/mediacache/IgVideoCache$1;

    invoke-direct {v1}, Lcom/instagram/android/mediacache/IgVideoCache$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 141
    return-void
.end method

.method private putVideo(Landroid/net/Uri;[B)V
    .locals 4
    .parameter "uri"
    .parameter "bytes"

    .prologue
    const/4 v2, 0x0

    .line 330
    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mStorage:Lcom/instagram/android/mediacache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/IgVideoCache;->getKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 334
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 335
    :try_start_2
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 337
    if-eqz v3, :cond_0

    .line 338
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 340
    :cond_0
    if-eqz v1, :cond_1

    .line 341
    invoke-virtual {v1}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->commit()V

    .line 344
    :cond_1
    return-void

    .line 337
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v2, :cond_2

    .line 338
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 340
    :cond_2
    if-eqz v1, :cond_3

    .line 341
    invoke-virtual {v1}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->commit()V

    :cond_3
    throw v0

    .line 337
    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method private removeTask(Landroid/net/Uri;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 248
    iget-object v1, p0, Lcom/instagram/android/mediacache/IgVideoCache;->taskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mUriListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mRunningTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgVideoCache;->updateTasks()V

    .line 253
    monitor-exit v1

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateTasks()V
    .locals 6

    .prologue
    .line 257
    iget-object v2, p0, Lcom/instagram/android/mediacache/IgVideoCache;->taskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mRunningTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 261
    if-eqz v0, :cond_0

    .line 262
    iget-object v3, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/instagram/android/http/ListenableHttpDownloader;

    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgVideoCache;->getHttpClient()Lch/boye/httpclientandroidlib/client/HttpClient;

    move-result-object v5

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mUriListenerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;

    invoke-direct {v4, v5, v0, v1}, Lcom/instagram/android/http/ListenableHttpDownloader;-><init>(Lch/boye/httpclientandroidlib/client/HttpClient;Landroid/net/Uri;Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 265
    iget-object v3, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mRunningTasks:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    monitor-exit v2

    .line 269
    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getVideo(Landroid/net/Uri;)Lcom/instagram/android/mediacache/IgVideoCache$VideoEntry;
    .locals 3
    .parameter "uri"

    .prologue
    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mStorage:Lcom/instagram/android/mediacache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/IgVideoCache;->getKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache;->get(Ljava/lang/String;)Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;

    move-result-object v1

    .line 319
    if-eqz v1, :cond_0

    .line 320
    new-instance v0, Lcom/instagram/android/mediacache/IgVideoCache$VideoEntry;

    invoke-direct {v0, v1}, Lcom/instagram/android/mediacache/IgVideoCache$VideoEntry;-><init>(Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-object v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const-string v0, "IgVideoCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to retrieve entry for uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVideo(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mStorage:Lcom/instagram/android/mediacache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/IgVideoCache;->getKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public prefetch(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 179
    const-string v0, "IgVideoCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prefetch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/instagram/android/mediacache/IgVideoCache;->queueDownload(Landroid/net/Uri;ZLcom/instagram/android/mediacache/IgVideoCache$ProgressListener;)V

    .line 181
    return-void
.end method

.method public queueDownload(Landroid/net/Uri;ZLcom/instagram/android/mediacache/IgVideoCache$ProgressListener;)V
    .locals 4
    .parameter "uri"
    .end parameter
    .parameter "queueAtFront"
    .end parameter
    .parameter "listener"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/instagram/android/mediacache/IgVideoCache;->hasVideo(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    if-eqz p3, :cond_0

    .line 190
    invoke-interface {p3}, Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;->onComplete()V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/mediacache/IgVideoCache;->taskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mUriListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mUriListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;

    .line 199
    if-eqz p3, :cond_2

    .line 202
    invoke-virtual {v0, p3}, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->setProgressListener(Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;)V

    .line 205
    :cond_2
    if-eqz p2, :cond_3

    .line 206
    const-string v0, "IgVideoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reordering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to front of queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 231
    :cond_3
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 210
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/instagram/android/mediacache/IgVideoCache;->hasVideo(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    if-eqz p3, :cond_3

    .line 214
    invoke-interface {p3}, Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;->onComplete()V

    goto :goto_1

    .line 217
    :cond_5
    new-instance v0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;

    invoke-direct {v0, p0, p1}, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;-><init>(Lcom/instagram/android/mediacache/IgVideoCache;Landroid/net/Uri;)V

    .line 218
    invoke-virtual {v0, p3}, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->setProgressListener(Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;)V

    .line 219
    iget-object v2, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mUriListenerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    if-eqz p2, :cond_6

    .line 222
    const-string v0, "IgVideoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at front of queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 229
    :goto_2
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgVideoCache;->updateTasks()V

    goto :goto_1

    .line 225
    :cond_6
    const-string v0, "IgVideoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at back of queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public removeListeners(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 235
    iget-object v1, p0, Lcom/instagram/android/mediacache/IgVideoCache;->taskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mUriListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mUriListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;

    .line 238
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/instagram/android/mediacache/IgVideoCache$DownloadListener;->setProgressListener(Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;)V

    .line 242
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 244
    :cond_0
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public streamVideo(Landroid/net/Uri;Ljava/net/Socket;)V
    .locals 2
    .parameter "uri"
    .parameter "client"

    .prologue
    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
