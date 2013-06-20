.class public abstract Lcom/instagram/android/fragment/AbstractFeedFragment;
.super Lcom/instagram/android/fragment/IgListFragment;
.source "AbstractFeedFragment.java"

# interfaces
.implements Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;
.implements Lcom/instagram/android/fragment/ConversionTrackable;
.implements Lcom/instagram/android/fragment/ScrollToTopFragment/ScrollToTopFragment;
.implements Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;


# static fields
.field public static final BROADCAST_STOP_LEGACY_VIDEO:Ljava/lang/String; = "broadcastStopLegacyVideo"

.field private static final MESSAGE_UPDATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AbstractFeedFragment"


# instance fields
.field protected lastUpdatedFeedTime:Ljava/lang/Long;

.field protected mAdapter:Lcom/instagram/android/feed/adapter/FeedAdapter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCachedSourceData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFailed:Z

.field protected mFeedMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FeedMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected mFeedRequest:Lcom/instagram/api/loaderrequest/MediaFeedRequest;

.field private mHandler:Landroid/os/Handler;

.field protected mInitialNetworkRequestFinished:Z

.field private mIsAutoLoadMoreEnabled:Z

.field private mIsLoading:Z

.field private mIsVideoAutoplayEnabled:Z

.field protected mLoadingDefaultContent:Z

.field private mMaxId:Ljava/lang/String;

.field private mMoreAvailable:Z

.field private mPopBackStackOnResume:Z

.field private mediaUpdateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgListFragment;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mIsLoading:Z

    .line 65
    iput-boolean v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mMoreAvailable:Z

    .line 66
    iput-boolean v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mPopBackStackOnResume:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mMaxId:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/instagram/android/fragment/AbstractFeedFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$1;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mediaUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    new-instance v0, Lcom/instagram/android/fragment/AbstractFeedFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$2;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    new-instance v0, Lcom/instagram/android/fragment/AbstractFeedFragment$4;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$4;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mHandler:Landroid/os/Handler;

    .line 575
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/AbstractFeedFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/instagram/android/fragment/AbstractFeedFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mPopBackStackOnResume:Z

    return p1
.end method

.method static synthetic access$200(Lcom/instagram/android/fragment/AbstractFeedFragment;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mediaUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/fragment/AbstractFeedFragment;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->configureForViewMode(Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;)V

    return-void
.end method

.method static synthetic access$502(Lcom/instagram/android/fragment/AbstractFeedFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mFailed:Z

    return p1
.end method

.method static synthetic access$602(Lcom/instagram/android/fragment/AbstractFeedFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mMoreAvailable:Z

    return p1
.end method

.method static synthetic access$702(Lcom/instagram/android/fragment/AbstractFeedFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mIsAutoLoadMoreEnabled:Z

    return p1
.end method

.method static synthetic access$802(Lcom/instagram/android/fragment/AbstractFeedFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mMaxId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/instagram/android/fragment/AbstractFeedFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mIsLoading:Z

    return p1
.end method

.method private configureForViewMode(Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;)V
    .locals 2
    .parameter "viewMode"

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 316
    sget-object v1, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne p1, v1, :cond_1

    .line 317
    if-eqz v0, :cond_0

    .line 318
    sget v1, Lcom/facebook/d;->list_bg_color:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    if-eqz v0, :cond_0

    .line 322
    sget v1, Lcom/facebook/d;->alt_list_bg_color:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public allowAutoplayFirstFeedItem()Z
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public autoLoadMore()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 458
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isFailed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mMoreAvailable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mIsAutoLoadMoreEnabled:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V
    .locals 2
    .parameter "isFirstPage"
    .parameter "feedRequestCallbacks"

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    const-string v0, "AbstractFeedFragment"

    const-string v1, "Is loading already set, not performing request"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->lastUpdatedFeedTime:Ljava/lang/Long;

    .line 383
    invoke-virtual {p0, p2}, Lcom/instagram/android/fragment/AbstractFeedFragment;->makeRequest(Lcom/instagram/api/AbstractStreamingApiCallbacks;)Lcom/instagram/api/loaderrequest/MediaFeedRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mFeedRequest:Lcom/instagram/api/loaderrequest/MediaFeedRequest;

    .line 385
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mFeedRequest:Lcom/instagram/api/loaderrequest/MediaFeedRequest;

    if-eqz v0, :cond_0

    .line 389
    #calls: Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->setShouldClearOnAdd(Z)V
    invoke-static {p2, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->access$400(Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;Z)V

    .line 390
    if-eqz p1, :cond_2

    .line 391
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mFeedRequest:Lcom/instagram/api/loaderrequest/MediaFeedRequest;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->perform()V

    goto :goto_0

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mFeedRequest:Lcom/instagram/api/loaderrequest/MediaFeedRequest;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->performWithNewPage()V

    goto :goto_0
.end method

.method public forceTrim()Z
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 572
    new-instance v0, Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    return-object v0
.end method

.method protected getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mAdapter:Lcom/instagram/android/feed/adapter/FeedAdapter;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getDefaultFeedViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mAdapter:Lcom/instagram/android/feed/adapter/FeedAdapter;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mAdapter:Lcom/instagram/android/feed/adapter/FeedAdapter;

    return-object v0
.end method

.method public getConversionTrackingData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mCachedSourceData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mCachedSourceData:Ljava/util/HashMap;

    .line 432
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mCachedSourceData:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->populateConversionTrackingData(Ljava/util/Map;)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mCachedSourceData:Ljava/util/HashMap;

    return-object v0
.end method

.method protected getDefaultFeedViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;
    .locals 1

    .prologue
    .line 372
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    return-object v0
.end method

.method public getDoubleTapMediaListener()Lcom/instagram/android/listener/DoubleTapMediaListener;
    .locals 1

    .prologue
    .line 415
    new-instance v0, Lcom/instagram/android/fragment/AbstractFeedFragment$11;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$11;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    return-object v0
.end method

.method public getMaxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mMaxId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLinkClickListener()Lcom/instagram/android/listener/UserLinkClickListener;
    .locals 1

    .prologue
    .line 405
    new-instance v0, Lcom/instagram/android/fragment/AbstractFeedFragment$10;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$10;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    return-object v0
.end method

.method public hasMoreItems()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mMoreAvailable:Z

    return v0
.end method

.method public isFailed()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mFailed:Z

    return v0
.end method

.method public isIsVideoAutoplayEnabled()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mIsVideoAutoplayEnabled:Z

    return v0
.end method

.method public isLoadMoreVisible()Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getFeedObjectsMediaCount()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mIsLoading:Z

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public loadMore()V
    .locals 2

    .prologue
    .line 467
    const/4 v0, 0x0

    new-instance v1, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V

    .line 468
    return-void
.end method

.method protected abstract makeRequest(Lcom/instagram/api/AbstractStreamingApiCallbacks;)Lcom/instagram/api/loaderrequest/MediaFeedRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/AbstractStreamingApiCallbacks",
            "<",
            "Lcom/instagram/android/model/MediaFeedResponse;",
            ">;)",
            "Lcom/instagram/api/loaderrequest/MediaFeedRequest;"
        }
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 329
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 331
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/UserPreferences;->getFeedAutoPlayVideos()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mIsVideoAutoplayEnabled:Z

    .line 333
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    .line 338
    new-instance v1, Lcom/instagram/android/fragment/AbstractFeedFragment$8;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$8;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->setMediaSetChangeListener(Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;)V

    .line 353
    new-instance v1, Lcom/instagram/android/fragment/AbstractFeedFragment$9;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$9;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->addViewTypeChangeListener(Lcom/instagram/android/feed/adapter/FeedAdapter$ViewTypeChangeListener;)V

    .line 361
    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 362
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 288
    sget v0, Lcom/facebook/h;->layout_listview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mediaUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 311
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onDestroy()V

    .line 312
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 304
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onDestroyView()V

    .line 305
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->onDestroyView()V

    .line 306
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 282
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onDetach()V

    .line 283
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onPause()V

    .line 270
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 272
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->setStickyScrollingEnabled(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->setAdapterRefreshedListener(Lcom/instagram/android/feed/adapter/FeedAdapter$AdapterRefreshedListener;)V

    .line 274
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/service/ClickManager;->setUserLinkClickListener(Lcom/instagram/android/listener/UserLinkClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 277
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->releaseVideoOnPause()V

    .line 278
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 137
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onResume()V

    .line 139
    iget-boolean v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mPopBackStackOnResume:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->f()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()V

    .line 146
    :cond_0
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/UserPreferences;->getFeedAutoPlayVideos()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mIsVideoAutoplayEnabled:Z

    .line 147
    iget-boolean v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mIsVideoAutoplayEnabled:Z

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->blacklistAutoplay()V

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->prepareStickyHeaderOnResume()V

    .line 153
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.service.action_bar_clicked"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 155
    iget-object v1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.service.action_bar_refresh_clicked"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 159
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/AbstractFeedFragment$3;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$3;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->setAdapterRefreshedListener(Lcom/instagram/android/feed/adapter/FeedAdapter$AdapterRefreshedListener;)V

    .line 175
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getUserLinkClickListener()Lcom/instagram/android/listener/UserLinkClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ClickManager;->setUserLinkClickListener(Lcom/instagram/android/listener/UserLinkClickListener;)V

    .line 176
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 293
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/IgListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 299
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->configureForViewMode(Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;)V

    .line 300
    return-void
.end method

.method protected abstract populateConversionTrackingData(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    return-void
.end method

.method protected prepareStickyHeaderOnResume()V
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->resetStickyHeader()V

    .line 180
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->setStickyScrollingEnabled(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->redrawStickyHeader(Landroid/widget/AbsListView;)V

    .line 182
    return-void
.end method

.method public refreshStickyHeaderDelayed()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/fragment/AbstractFeedFragment$5;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$5;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    return-void
.end method

.method public scrollToTop()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x64

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->setStickyScrollingEnabled(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {p0, v2}, Lcom/instagram/android/fragment/AbstractFeedFragment;->setSelection(I)V

    .line 222
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 223
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/AbstractFeedFragment$6;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$6;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->setSelection(I)V

    .line 245
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 251
    :goto_1
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/AbstractFeedFragment$7;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$7;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 247
    :cond_3
    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->setSelection(I)V

    goto :goto_1
.end method

.method public setFeedMessages(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FeedMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, feedMessages:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/FeedMessage;>;"
    iput-object p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mFeedMessages:Ljava/util/List;

    .line 476
    return-void
.end method

.method protected shouldPopFragmentWhenEmpty()Z
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x1

    return v0
.end method

.method public supportsGridView()Z
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x1

    return v0
.end method
