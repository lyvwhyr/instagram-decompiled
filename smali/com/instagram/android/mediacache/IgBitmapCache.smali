.class public Lcom/instagram/android/mediacache/IgBitmapCache;
.super Ljava/lang/Object;
.source "IgBitmapCache.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IgBitmapCache"

.field public static final MAX_ENTRIES:I = 0x15e

.field public static final MAX_SIZE:I = 0x1e00000

.field private static final MAX_TASKS:I = 0x4

.field public static final MIN_TRIM_COUNT:I = 0x3c

.field static final options:Landroid/graphics/BitmapFactory$Options;

.field private static sInstance:Lcom/instagram/android/mediacache/IgBitmapCache;


# instance fields
.field private mAllTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

.field private mLoadedBitmaps:Lcom/instagram/android/mediacache/CompressedBackedLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/android/mediacache/CompressedBackedLruCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestFilter:Lcom/instagram/android/mediacache/IgBitmapCache$RequestFilter;

.field private mRunningTasks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;",
            ">;"
        }
    .end annotation
.end field

.field private mStorage:Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;

.field private mTaskQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/instagram/android/mediacache/IgBitmapCache;->options:Landroid/graphics/BitmapFactory$Options;

    .line 60
    sget-object v0, Lcom/instagram/android/mediacache/IgBitmapCache;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 61
    sget-object v0, Lcom/instagram/android/mediacache/IgBitmapCache;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/high16 v5, 0x1e0

    const/16 v4, 0x2710

    const/16 v3, 0xa

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/instagram/android/mediacache/CompressedBackedLruCache;

    const/16 v1, 0x15e

    const/16 v2, 0x3c

    invoke-direct {v0, v5, v1, v2}, Lcom/instagram/android/mediacache/CompressedBackedLruCache;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mLoadedBitmaps:Lcom/instagram/android/mediacache/CompressedBackedLruCache;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mAllTasks:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mRunningTasks:Ljava/util/HashSet;

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mTaskQueue:Ljava/util/LinkedList;

    .line 79
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>()V

    .line 80
    invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->setDefaultMaxPerRoute(I)V

    .line 81
    invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->setMaxTotal(I)V

    .line 83
    new-instance v1, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;

    new-instance v2, Lch/boye/httpclientandroidlib/impl/client/cache/DefaultHttpCacheEntrySerializer;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/client/cache/DefaultHttpCacheEntrySerializer;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, v5}, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;-><init>(Landroid/content/Context;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntrySerializer;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mStorage:Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;

    .line 87
    new-instance v1, Lch/boye/httpclientandroidlib/params/BasicHttpParams;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;-><init>()V

    .line 88
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V

    .line 89
    invoke-static {v1, v4}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 90
    invoke-static {v1, v4}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 91
    new-instance v2, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    iput-object v2, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mHttpClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    .line 92
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/mediacache/IgBitmapCache;)Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mStorage:Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/mediacache/IgBitmapCache;)Lcom/instagram/android/mediacache/CompressedBackedLruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mLoadedBitmaps:Lcom/instagram/android/mediacache/CompressedBackedLruCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/mediacache/IgBitmapCache;Lch/boye/httpclientandroidlib/client/methods/HttpGet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/IgBitmapCache;->performRequestFilters(Lch/boye/httpclientandroidlib/client/methods/HttpGet;)V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/mediacache/IgBitmapCache;)Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mHttpClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/mediacache/IgBitmapCache;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mAllTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/instagram/android/mediacache/IgBitmapCache;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mRunningTasks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/instagram/android/mediacache/IgBitmapCache;Ljava/lang/String;Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/instagram/android/mediacache/IgBitmapCache;->loadBitmap(Ljava/lang/String;Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;ZZZ)V

    return-void
.end method

.method private static declared-synchronized createCache(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    const-class v1, Lcom/instagram/android/mediacache/IgBitmapCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/android/mediacache/IgBitmapCache;->sInstance:Lcom/instagram/android/mediacache/IgBitmapCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    monitor-exit v1

    return-void

    .line 75
    :cond_0
    :try_start_1
    new-instance v0, Lcom/instagram/android/mediacache/IgBitmapCache;

    invoke-direct {v0, p0}, Lcom/instagram/android/mediacache/IgBitmapCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instagram/android/mediacache/IgBitmapCache;->sInstance:Lcom/instagram/android/mediacache/IgBitmapCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/instagram/android/mediacache/IgBitmapCache;
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    sget-object v0, Lcom/instagram/android/mediacache/IgBitmapCache;->sInstance:Lcom/instagram/android/mediacache/IgBitmapCache;

    if-nez v0, :cond_0

    .line 68
    invoke-static {p0}, Lcom/instagram/android/mediacache/IgBitmapCache;->createCache(Landroid/content/Context;)V

    .line 70
    :cond_0
    sget-object v0, Lcom/instagram/android/mediacache/IgBitmapCache;->sInstance:Lcom/instagram/android/mediacache/IgBitmapCache;

    return-object v0
.end method

.method private loadBitmap(Ljava/lang/String;Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;ZZZ)V
    .locals 2
    .parameter "url"
    .parameter "callback"
    .parameter "reportProgress"
    .parameter "queueAtFront"
    .parameter "clearCachedItem"

    .prologue
    .line 126
    if-eqz p5, :cond_0

    .line 130
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mLoadedBitmaps:Lcom/instagram/android/mediacache/CompressedBackedLruCache;

    invoke-virtual {v0, p1}, Lcom/instagram/android/mediacache/CompressedBackedLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mLoadedBitmaps:Lcom/instagram/android/mediacache/CompressedBackedLruCache;

    invoke-virtual {v0, p1}, Lcom/instagram/android/mediacache/CompressedBackedLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/CompressedBackedBitmap;

    .line 134
    if-nez v0, :cond_8

    .line 137
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mAllTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mAllTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;

    .line 139
    if-eqz p2, :cond_1

    .line 140
    invoke-virtual {v0, p2}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->addCallback(Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;)V

    .line 141
    if-eqz p3, :cond_1

    .line 142
    invoke-virtual {v0, p3}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->setReportProgress(Z)V

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mRunningTasks:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 147
    iget-object v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 148
    if-eqz p5, :cond_2

    .line 149
    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->setClearCachedItem()V

    .line 151
    :cond_2
    invoke-direct {p0, p4, v0}, Lcom/instagram/android/mediacache/IgBitmapCache;->queueTask(ZLcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;)V

    .line 165
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/mediacache/IgBitmapCache;->updateTasks()V

    .line 175
    :cond_4
    :goto_1
    return-void

    .line 155
    :cond_5
    new-instance v0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;-><init>(Lcom/instagram/android/mediacache/IgBitmapCache;Ljava/lang/String;ZLcom/instagram/android/mediacache/IgBitmapCache$1;)V

    .line 156
    if-eqz p5, :cond_6

    .line 157
    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->setClearCachedItem()V

    .line 159
    :cond_6
    if-eqz p2, :cond_7

    .line 160
    invoke-virtual {v0, p2}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->addCallback(Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;)V

    .line 162
    :cond_7
    iget-object v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mAllTasks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-direct {p0, p4, v0}, Lcom/instagram/android/mediacache/IgBitmapCache;->queueTask(ZLcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;)V

    goto :goto_0

    .line 167
    :cond_8
    if-eqz p2, :cond_4

    .line 168
    invoke-virtual {v0}, Lcom/instagram/android/mediacache/CompressedBackedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private performRequestFilters(Lch/boye/httpclientandroidlib/client/methods/HttpGet;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mRequestFilter:Lcom/instagram/android/mediacache/IgBitmapCache$RequestFilter;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mRequestFilter:Lcom/instagram/android/mediacache/IgBitmapCache$RequestFilter;

    invoke-interface {v0, p1}, Lcom/instagram/android/mediacache/IgBitmapCache$RequestFilter;->perform(Lch/boye/httpclientandroidlib/client/methods/HttpGet;)V

    .line 443
    :cond_0
    return-void
.end method

.method private queueTask(ZLcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;)V
    .locals 1
    .parameter "queueAtFront"
    .parameter "task"

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public preLoadBitmaps([Ljava/lang/String;)V
    .locals 8
    .parameter "urls"

    .prologue
    const/4 v3, 0x0

    .line 102
    array-length v7, p1

    move v6, v3

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v1, p1, v6

    .line 103
    const/4 v2, 0x0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/mediacache/IgBitmapCache;->loadBitmap(Ljava/lang/String;Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;ZZZ)V

    .line 102
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public setRequestFilter(Lcom/instagram/android/mediacache/IgBitmapCache$RequestFilter;)V
    .locals 0
    .parameter "requestFilter"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mRequestFilter:Lcom/instagram/android/mediacache/IgBitmapCache$RequestFilter;

    .line 437
    return-void
.end method

.method public updateTasks()V
    .locals 3

    .prologue
    .line 187
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mRunningTasks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;

    .line 189
    iget-object v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mRunningTasks:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v1, Lcom/instagram/android/mediacache/IgAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/instagram/android/mediacache/IgAsyncTask;

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method public warm(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache;->mLoadedBitmaps:Lcom/instagram/android/mediacache/CompressedBackedLruCache;

    invoke-virtual {v0, p1}, Lcom/instagram/android/mediacache/CompressedBackedLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/CompressedBackedBitmap;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/instagram/android/mediacache/CompressedBackedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 99
    :cond_0
    return-void
.end method
