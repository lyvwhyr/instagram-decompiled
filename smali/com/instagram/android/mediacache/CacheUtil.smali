.class public Lcom/instagram/android/mediacache/CacheUtil;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateDirSizeBytes(Ljava/io/File;)J
    .locals 7
    .parameter "dir"

    .prologue
    const-wide/16 v0, 0x0

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 51
    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 52
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 53
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 51
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_1
    return-wide v0
.end method

.method public static getCacheDirectory(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;
    .locals 2
    .parameter "context"
    .parameter "path"
    .parameter "preferExternalStorage"

    .prologue
    .line 70
    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/instagram/android/mediacache/CacheUtil;->getExternalStorage(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 72
    :goto_0
    if-nez v1, :cond_0

    .line 73
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 76
    :cond_0
    if-nez v1, :cond_3

    .line 77
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to open storage"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {p0}, Lcom/instagram/android/mediacache/CacheUtil;->getExternalStorage(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 79
    :cond_3
    if-eqz p1, :cond_4

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    :goto_2
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public static getCacheSizeBytes(Ljava/io/File;FJ)J
    .locals 9
    .parameter "path"
    .parameter "usageFactor"
    .parameter "maxSizeBytes"

    .prologue
    .line 14
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 18
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 20
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    .line 21
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v5, v0

    .line 23
    mul-long/2addr v3, v1

    .line 24
    mul-long/2addr v5, v1

    .line 27
    long-to-float v0, v3

    mul-float/2addr v0, p1

    float-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 31
    cmp-long v2, v0, v5

    if-lez v2, :cond_1

    .line 32
    invoke-static {p0}, Lcom/instagram/android/mediacache/CacheUtil;->calculateDirSizeBytes(Ljava/io/File;)J

    move-result-wide v2

    .line 34
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 35
    sub-long/2addr v0, v2

    .line 36
    const-wide/16 v7, 0x2

    div-long v4, v5, v7

    .line 37
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 41
    :cond_1
    return-wide v0
.end method

.method private static getExternalStorage(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
