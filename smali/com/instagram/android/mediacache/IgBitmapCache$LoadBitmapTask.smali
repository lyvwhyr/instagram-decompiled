.class public Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;
.super Lcom/instagram/android/mediacache/IgAsyncTask;
.source "IgBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/mediacache/IgAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mBitmapCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClearCachedItem:Z

.field private mProgress:I

.field private mReportProgress:Z

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/instagram/android/mediacache/IgBitmapCache;


# direct methods
.method private constructor <init>(Lcom/instagram/android/mediacache/IgBitmapCache;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter "url"
    .parameter "reportProgress"

    .prologue
    const/4 v1, 0x0

    .line 203
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->this$0:Lcom/instagram/android/mediacache/IgBitmapCache;

    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgAsyncTask;-><init>()V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mBitmapCallbacks:Ljava/util/List;

    .line 200
    iput v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mProgress:I

    .line 201
    iput-boolean v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mClearCachedItem:Z

    .line 204
    iput-object p2, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mUrl:Ljava/lang/String;

    .line 205
    iput-boolean p3, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mReportProgress:Z

    .line 206
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/mediacache/IgBitmapCache;Ljava/lang/String;ZLcom/instagram/android/mediacache/IgBitmapCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;-><init>(Lcom/instagram/android/mediacache/IgBitmapCache;Ljava/lang/String;Z)V

    return-void
.end method

.method private cacheBytesFromDisk(Ljava/lang/String;)[B
    .locals 8
    .parameter "url"

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 253
    :try_start_0
    new-instance v6, Lch/boye/httpclientandroidlib/entity/FileEntity;

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "image/jpeg"

    invoke-direct {v6, v0, v2}, Lch/boye/httpclientandroidlib/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :try_start_1
    invoke-virtual {p0, v6}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->toByteArray(Lch/boye/httpclientandroidlib/HttpEntity;)[B

    move-result-object v7

    .line 255
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 256
    new-instance v0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    new-instance v3, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    const/16 v4, 0xc8

    const-string v5, ""

    invoke-direct {v3, v2, v4, v5}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    const/4 v2, 0x0

    new-array v4, v2, [Lch/boye/httpclientandroidlib/Header;

    new-instance v5, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResource;

    invoke-direct {v5, v7}, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResource;-><init>([B)V

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/client/cache/Resource;)V

    .line 262
    iget-object v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->this$0:Lcom/instagram/android/mediacache/IgBitmapCache;

    #getter for: Lcom/instagram/android/mediacache/IgBitmapCache;->mStorage:Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;
    invoke-static {v1}, Lcom/instagram/android/mediacache/IgBitmapCache;->access$100(Lcom/instagram/android/mediacache/IgBitmapCache;)Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->putEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 266
    :try_start_2
    invoke-static {v6}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 269
    :goto_0
    return-object v7

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    :goto_1
    :try_start_3
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 269
    :goto_2
    throw v0

    .line 267
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    .line 265
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method private cacheBytesFromNetwork(Ljava/lang/String;)[B
    .locals 8
    .parameter "url"

    .prologue
    .line 274
    const/4 v2, 0x0

    .line 278
    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 279
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 280
    iget-object v3, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->this$0:Lcom/instagram/android/mediacache/IgBitmapCache;

    #calls: Lcom/instagram/android/mediacache/IgBitmapCache;->performRequestFilters(Lch/boye/httpclientandroidlib/client/methods/HttpGet;)V
    invoke-static {v3, v0}, Lcom/instagram/android/mediacache/IgBitmapCache;->access$300(Lcom/instagram/android/mediacache/IgBitmapCache;Lch/boye/httpclientandroidlib/client/methods/HttpGet;)V

    .line 281
    iget-object v3, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->this$0:Lcom/instagram/android/mediacache/IgBitmapCache;

    #getter for: Lcom/instagram/android/mediacache/IgBitmapCache;->mHttpClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;
    invoke-static {v3}, Lcom/instagram/android/mediacache/IgBitmapCache;->access$400(Lcom/instagram/android/mediacache/IgBitmapCache;)Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    move-result-object v3

    invoke-virtual {v3, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v4

    .line 282
    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 283
    :try_start_1
    invoke-virtual {p0, v6}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->toByteArray(Lch/boye/httpclientandroidlib/HttpEntity;)[B

    move-result-object v7

    .line 284
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 285
    new-instance v0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v4

    new-instance v5, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResource;

    invoke-direct {v5, v7}, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResource;-><init>([B)V

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/client/cache/Resource;)V

    .line 290
    iget-object v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->this$0:Lcom/instagram/android/mediacache/IgBitmapCache;

    #getter for: Lcom/instagram/android/mediacache/IgBitmapCache;->mStorage:Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;
    invoke-static {v1}, Lcom/instagram/android/mediacache/IgBitmapCache;->access$100(Lcom/instagram/android/mediacache/IgBitmapCache;)Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->putEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    :try_start_2
    invoke-static {v6}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 297
    :goto_0
    return-object v7

    .line 293
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 294
    :goto_1
    :try_start_3
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 297
    :goto_2
    throw v0

    .line 295
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    .line 293
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method private cacheBytesFromResource(Ljava/lang/String;)[B
    .locals 1
    .parameter "url"

    .prologue
    .line 240
    const-string v0, "file:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->cacheBytesFromDisk(Ljava/lang/String;)[B

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    .line 243
    :cond_0
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->cacheBytesFromNetwork(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private reportProgressToCallbacks(Ljava/lang/Integer;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mBitmapCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;

    .line 410
    if-eqz v0, :cond_0

    .line 411
    iget-object v2, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mUrl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;->reportProgress(Ljava/lang/String;I)V

    goto :goto_0

    .line 414
    :cond_1
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 417
    invoke-interface {p1, p0}, Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;->bindToTask(Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;)V

    .line 418
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mUrl:Ljava/lang/String;

    iget v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mProgress:I

    invoke-interface {p1, v0, v1}, Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;->reportProgress(Ljava/lang/String;I)V

    .line 419
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mBitmapCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "params"

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mClearCachedItem:Z

    if-eqz v0, :cond_0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->this$0:Lcom/instagram/android/mediacache/IgBitmapCache;

    #getter for: Lcom/instagram/android/mediacache/IgBitmapCache;->mStorage:Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgBitmapCache;->access$100(Lcom/instagram/android/mediacache/IgBitmapCache;)Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->removeEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->this$0:Lcom/instagram/android/mediacache/IgBitmapCache;

    #getter for: Lcom/instagram/android/mediacache/IgBitmapCache;->mStorage:Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgBitmapCache;->access$100(Lcom/instagram/android/mediacache/IgBitmapCache;)Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/cache/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    move-object v1, v0

    .line 226
    :goto_1
    const/4 v0, 0x0

    array-length v2, v1

    sget-object v3, Lcom/instagram/android/mediacache/IgBitmapCache;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_2

    .line 229
    iget-object v2, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->this$0:Lcom/instagram/android/mediacache/IgBitmapCache;

    #getter for: Lcom/instagram/android/mediacache/IgBitmapCache;->mLoadedBitmaps:Lcom/instagram/android/mediacache/CompressedBackedLruCache;
    invoke-static {v2}, Lcom/instagram/android/mediacache/IgBitmapCache;->access$200(Lcom/instagram/android/mediacache/IgBitmapCache;)Lcom/instagram/android/mediacache/CompressedBackedLruCache;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mUrl:Ljava/lang/String;

    new-instance v4, Lcom/instagram/android/mediacache/CompressedBackedBitmap;

    array-length v1, v1

    invoke-direct {v4, v0, v1}, Lcom/instagram/android/mediacache/CompressedBackedBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3, v4}, Lcom/instagram/android/mediacache/CompressedBackedLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    :goto_2
    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    const-string v1, "IgBitmapCache"

    const-string v2, "Error while removing cache entry from persistent storage."

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 224
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->cacheBytesFromResource(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 232
    :catch_1
    move-exception v0

    .line 233
    const-string v1, "IgBitmapCache"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 194
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mBitmapCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;

    .line 375
    if-eqz v0, :cond_0

    .line 376
    if-eqz p1, :cond_1

    .line 377
    iget-object v2, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 379
    :cond_1
    iget-object v2, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;->reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->this$0:Lcom/instagram/android/mediacache/IgBitmapCache;

    #getter for: Lcom/instagram/android/mediacache/IgBitmapCache;->mAllTasks:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgBitmapCache;->access$500(Lcom/instagram/android/mediacache/IgBitmapCache;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->this$0:Lcom/instagram/android/mediacache/IgBitmapCache;

    #getter for: Lcom/instagram/android/mediacache/IgBitmapCache;->mRunningTasks:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgBitmapCache;->access$600(Lcom/instagram/android/mediacache/IgBitmapCache;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->this$0:Lcom/instagram/android/mediacache/IgBitmapCache;

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgBitmapCache;->updateTasks()V

    .line 388
    invoke-super {p0, p1}, Lcom/instagram/android/mediacache/IgAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 389
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 194
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->reportProgressToCallbacks(Ljava/lang/Integer;)V

    .line 394
    invoke-super {p0}, Lcom/instagram/android/mediacache/IgAsyncTask;->onPreExecute()V

    .line 395
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 399
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mProgress:I

    .line 400
    iget v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mProgress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->reportProgressToCallbacks(Ljava/lang/Integer;)V

    .line 401
    invoke-super {p0, p1}, Lcom/instagram/android/mediacache/IgAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 402
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 194
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public readBytes(Ljava/io/InputStream;)[B
    .locals 4
    .parameter "inputStream"

    .prologue
    .line 312
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 315
    const/16 v1, 0x1000

    .line 316
    new-array v1, v1, [B

    .line 320
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 321
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public removeCallback(Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mBitmapCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method public setClearCachedItem()V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mClearCachedItem:Z

    .line 406
    return-void
.end method

.method public setReportProgress(Z)V
    .locals 0
    .parameter "reportProgress"

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mReportProgress:Z

    .line 432
    return-void
.end method

.method public toByteArray(Lch/boye/httpclientandroidlib/HttpEntity;)[B
    .locals 8
    .parameter "entity"

    .prologue
    const/16 v1, 0x1000

    const/4 v0, 0x0

    .line 338
    if-nez p1, :cond_0

    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 342
    if-nez v4, :cond_1

    .line 343
    const/4 v0, 0x0

    .line 368
    :goto_0
    return-object v0

    .line 346
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/32 v5, 0x7fffffff

    cmp-long v2, v2, v5

    if-lez v2, :cond_2

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v0

    .line 349
    :cond_2
    :try_start_1
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v3, v2

    .line 350
    new-instance v5, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    if-gez v3, :cond_4

    move v2, v1

    :goto_1
    invoke-direct {v5, v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;-><init>(I)V

    .line 353
    if-gez v3, :cond_5

    :goto_2
    new-array v1, v1, [B

    .line 356
    :cond_3
    :goto_3
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_6

    .line 357
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append([BII)V

    .line 358
    iget-boolean v2, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->mReportProgress:Z

    if-eqz v2, :cond_3

    if-lez v3, :cond_3

    .line 359
    invoke-virtual {v5}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v2

    int-to-float v2, v2

    int-to-float v6, v3

    div-float/2addr v2, v6

    const/high16 v6, 0x42c8

    mul-float/2addr v2, v6

    float-to-int v2, v2

    .line 360
    div-int/lit8 v6, v2, 0xa

    if-le v6, v0, :cond_3

    .line 361
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    invoke-virtual {p0, v0}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->publishProgress([Ljava/lang/Object;)V

    .line 362
    div-int/lit8 v0, v2, 0xa

    goto :goto_3

    :cond_4
    move v2, v3

    .line 350
    goto :goto_1

    .line 353
    :cond_5
    div-int/lit8 v1, v3, 0xa

    goto :goto_2

    .line 366
    :cond_6
    invoke-virtual {v5}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 368
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method
