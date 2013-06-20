.class public Lcom/instagram/android/mediacache/MultiBitmapFetcher;
.super Ljava/lang/Object;
.source "MultiBitmapFetcher.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MultiBitmapFetcher"


# instance fields
.field private mBitmapCallback:Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;

.field private mBitmapMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/instagram/android/mediacache/MultiBitmapFetcher$MultiBitmapCallback;

.field private final mContext:Landroid/content/Context;

.field private mPendingUrls:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/mediacache/MultiBitmapFetcher$MultiBitmapCallback;)V
    .locals 1
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mBitmapMap:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mPendingUrls:Ljava/util/HashSet;

    .line 23
    new-instance v0, Lcom/instagram/android/mediacache/MultiBitmapFetcher$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/mediacache/MultiBitmapFetcher$1;-><init>(Lcom/instagram/android/mediacache/MultiBitmapFetcher;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mBitmapCallback:Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;

    .line 54
    iput-object p1, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mCallback:Lcom/instagram/android/mediacache/MultiBitmapFetcher$MultiBitmapCallback;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/mediacache/MultiBitmapFetcher;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mBitmapMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/mediacache/MultiBitmapFetcher;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mPendingUrls:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/mediacache/MultiBitmapFetcher;)Lcom/instagram/android/mediacache/MultiBitmapFetcher$MultiBitmapCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mCallback:Lcom/instagram/android/mediacache/MultiBitmapFetcher$MultiBitmapCallback;

    return-object v0
.end method


# virtual methods
.method public varargs declared-synchronized fetch([Ljava/lang/String;)V
    .locals 6
    .parameter "urls"

    .prologue
    const/4 v1, 0x0

    .line 60
    monitor-enter p0

    :try_start_0
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 61
    if-eqz v3, :cond_0

    .line 62
    iget-object v4, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mPendingUrls:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mPendingUrls:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mPendingUrls:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 68
    new-instance v4, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;

    iget-object v5, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->setUrl(Ljava/lang/String;)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mBitmapCallback:Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;

    invoke-virtual {v3, v4}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->setCallback(Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->setReportProgress(Z)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->setQueueAtFront(Z)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->setClearCachedItem(Z)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->queue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    :cond_2
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
