.class Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;
.super Ljava/lang/Object;
.source "FeedAdapter.java"


# instance fields
.field private final mFilteredMediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/android/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaRecentlyCleared:Z

.field final synthetic this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;


# direct methods
.method private constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mMediaRecentlyCleared:Z

    .line 1403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mMediaMap:Ljava/util/Map;

    .line 1404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mMediaList:Ljava/util/ArrayList;

    .line 1405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mFilteredMediaList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/feed/adapter/FeedAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1399
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1399
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->preloadBitmaps()V

    return-void
.end method

.method static synthetic access$2400(Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1399
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->getMediaCount()I

    move-result v0

    return v0
.end method

.method private getMediaCount()I
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mFilteredMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private getNumberOfItemsToTrimInListView()I
    .locals 2

    .prologue
    .line 1503
    const/4 v0, 0x0

    .line 1505
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v1, v1, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->hasMoreItems()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v1, v1, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->supportsGridView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mFilteredMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mNumberMediaPerRow:I
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2600(Lcom/instagram/android/feed/adapter/FeedAdapter;)I

    move-result v1

    rem-int/2addr v0, v1

    .line 1508
    :cond_0
    return v0
.end method

.method private preloadBitmapInteral(Lcom/instagram/android/model/Media;)V
    .locals 4
    .parameter "media"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1524
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne v0, v1, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/android/mediacache/IgBitmapCache;->getInstance(Landroid/content/Context;)Lcom/instagram/android/mediacache/IgBitmapCache;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getSizedUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgBitmapCache;->preLoadBitmaps([Ljava/lang/String;)V

    .line 1529
    :goto_0
    return-void

    .line 1527
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/android/mediacache/IgBitmapCache;->getInstance(Landroid/content/Context;)Lcom/instagram/android/mediacache/IgBitmapCache;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgBitmapCache;->preLoadBitmaps([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private preloadBitmaps()V
    .locals 2

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media;

    .line 1533
    invoke-direct {p0, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->preloadBitmapInteral(Lcom/instagram/android/model/Media;)V

    goto :goto_0

    .line 1535
    :cond_0
    return-void
.end method


# virtual methods
.method public addMedia(Ljava/util/ArrayList;Z)V
    .locals 7
    .parameter
    .parameter "prepend"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/Media;>;"
    const/4 v3, 0x0

    .line 1426
    .line 1429
    if-eqz p1, :cond_1

    .line 1430
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    move v4, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media;

    .line 1431
    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v6

    .line 1432
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mMediaMap:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/model/Media;

    .line 1434
    if-nez v1, :cond_5

    .line 1435
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mMediaMap:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    if-eqz p2, :cond_0

    .line 1438
    iget-object v4, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mMediaList:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v2, v1

    .line 1442
    :goto_1
    invoke-direct {p0, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->preloadBitmapInteral(Lcom/instagram/android/model/Media;)V

    .line 1443
    const/4 v1, 0x1

    move v0, v2

    :goto_2
    move v2, v0

    move v4, v1

    .line 1445
    goto :goto_0

    .line 1440
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v4, v3

    .line 1448
    :cond_2
    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaSetChangeListener:Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2700(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1449
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaSetChangeListener:Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2700(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mMediaList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;->onMediaAdded(Ljava/util/List;)V

    .line 1453
    :cond_3
    iget-boolean v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mMediaRecentlyCleared:Z

    if-eqz v0, :cond_4

    .line 1454
    iput-boolean v3, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mMediaRecentlyCleared:Z

    .line 1455
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mAdapterRefreshedListener:Lcom/instagram/android/feed/adapter/FeedAdapter$AdapterRefreshedListener;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2800(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$AdapterRefreshedListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1456
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mAdapterRefreshedListener:Lcom/instagram/android/feed/adapter/FeedAdapter$AdapterRefreshedListener;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2800(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$AdapterRefreshedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$AdapterRefreshedListener;->refreshed()V

    .line 1459
    :cond_4
    return-void

    :cond_5
    move v0, v2

    move v1, v4

    goto :goto_2
.end method

.method public clearMedia()V
    .locals 1

    .prologue
    .line 1472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mMediaRecentlyCleared:Z

    .line 1474
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mMediaMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1475
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1476
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mFilteredMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1478
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaSetChangeListener:Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2700(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaSetChangeListener:Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2700(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;->onMediaCleared()V

    .line 1481
    :cond_0
    return-void
.end method

.method public filterMedia()V
    .locals 3

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mFilteredMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1464
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media;

    .line 1465
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-virtual {v2, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->shouldRemainInFeed(Lcom/instagram/android/model/Media;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1466
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mFilteredMediaList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1469
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewMode:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$200(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne v0, v1, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mFilteredMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->getNumberOfItemsToTrimInListView()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1495
    :goto_0
    return v0

    .line 1488
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewMode:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$200(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->GRID:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne v0, v1, :cond_3

    .line 1492
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->hasMoreItems()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->forceTrim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1493
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mFilteredMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mNumberMediaPerRow:I
    invoke-static {v2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2600(Lcom/instagram/android/feed/adapter/FeedAdapter;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    .line 1495
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mFilteredMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mNumberMediaPerRow:I
    invoke-static {v2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2600(Lcom/instagram/android/feed/adapter/FeedAdapter;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    .line 1498
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View mode not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMedia(I)Lcom/instagram/android/model/Media;
    .locals 1
    .parameter "position"

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mFilteredMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media;

    return-object v0
.end method

.method public getMediaList(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1412
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1413
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mNumberMediaPerRow:I
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2600(Lcom/instagram/android/feed/adapter/FeedAdapter;)I

    move-result v0

    mul-int v2, p1, v0

    .line 1415
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mNumberMediaPerRow:I
    invoke-static {v3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2600(Lcom/instagram/android/feed/adapter/FeedAdapter;)I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1416
    add-int v3, v2, v0

    .line 1417
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->getMediaCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1418
    invoke-virtual {p0, v3}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->getMedia(I)Lcom/instagram/android/model/Media;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1422
    :cond_1
    return-object v1
.end method

.method public hasMedia()Z
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->mFilteredMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1516
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
