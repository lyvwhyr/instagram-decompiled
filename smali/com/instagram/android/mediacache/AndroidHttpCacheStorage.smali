.class public Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;
.super Ljava/lang/Object;
.source "AndroidHttpCacheStorage.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AndroidHttpCacheStorage"


# instance fields
.field private final mDiskLruCache:Lcom/instagram/android/mediacache/DiskLruCache;

.field private final mSerializer:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntrySerializer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntrySerializer;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .end parameter
    .parameter "serializer"
    .end parameter
    .parameter "path"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "maxSize"
    .end parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->mSerializer:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntrySerializer;

    .line 46
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p3, v0}, Lcom/instagram/android/mediacache/CacheUtil;->getCacheDirectory(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    int-to-long v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/android/mediacache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/instagram/android/mediacache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->mDiskLruCache:Lcom/instagram/android/mediacache/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to open file cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 125
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private reconstituteEntry(Ljava/io/InputStream;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .locals 2
    .parameter "inputStream"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->mSerializer:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntrySerializer;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntrySerializer;->readFrom(Ljava/io/InputStream;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 83
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->mDiskLruCache:Lcom/instagram/android/mediacache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/mediacache/DiskLruCache;->get(Ljava/lang/String;)Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 86
    if-eqz v1, :cond_1

    .line 87
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->reconstituteEntry(Ljava/io/InputStream;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 92
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 92
    :cond_1
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {v1}, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->close()V

    :cond_2
    throw v0

    .line 92
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public hasEntry(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->mDiskLruCache:Lcom/instagram/android/mediacache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/mediacache/DiskLruCache;->get(Ljava/lang/String;)Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 76
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public putEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .locals 4
    .parameter "key"
    .parameter "entry"

    .prologue
    const/4 v2, 0x0

    .line 56
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->mDiskLruCache:Lcom/instagram/android/mediacache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 60
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    :try_start_2
    iget-object v0, p0, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->mSerializer:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntrySerializer;

    invoke-interface {v0, p2, v3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntrySerializer;->writeTo(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 63
    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 66
    :cond_0
    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {v1}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->commit()V

    .line 71
    :cond_1
    return-void

    .line 63
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v2, :cond_2

    .line 64
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 66
    :cond_2
    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {v1}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->commit()V

    :cond_3
    throw v0

    .line 63
    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method public removeEntry(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->mDiskLruCache:Lcom/instagram/android/mediacache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 106
    return-void
.end method

.method public updateEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateCallback;)V
    .locals 3
    .parameter "key"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 111
    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->mDiskLruCache:Lcom/instagram/android/mediacache/DiskLruCache;

    invoke-virtual {v0, p1}, Lcom/instagram/android/mediacache/DiskLruCache;->get(Ljava/lang/String;)Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 114
    if-nez v1, :cond_1

    .line 115
    :goto_0
    :try_start_1
    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateCallback;->update(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->putEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v1}, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->close()V

    .line 122
    :cond_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1, v0}, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/mediacache/AndroidHttpCacheStorage;->reconstituteEntry(Ljava/io/InputStream;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {v1}, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->close()V

    :cond_2
    throw v0

    .line 118
    :catchall_1
    move-exception v0

    goto :goto_1
.end method
