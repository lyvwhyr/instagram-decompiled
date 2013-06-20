.class public Lcom/instagram/android/people/fragment/PhotosOfYouFragment;
.super Lcom/instagram/android/fragment/AbstractFeedFragment;
.source "PhotosOfYouFragment.java"


# static fields
.field public static final ARGUMENT_USERNAME:Ljava/lang/String; = "username"

.field public static final ARGUMENT_USER_ID:Ljava/lang/String; = "user_id"

.field public static final BROADCAST_PHOTOS_OF_YOU_UPDATED:Ljava/lang/String; = "com.instagram.android.people.fragment.PhotosOfYouFragment.PHOTOS_OF_YOU_UPDATED"

.field private static final TAG:Ljava/lang/String; = "PhotosOfYouFragment"


# instance fields
.field private mAdapter:Lcom/instagram/android/people/adapter/PhotosOfYouFeedAdapter;

.field private mBroadcastManager:Lcom/facebook/b/a/k;

.field private mFirstRequestFinished:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsCurrentUser:Z

.field private mUpdatedReceiver:Lcom/facebook/b/a/j;

.field private mUserId:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mFirstRequestFinished:Z

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mHandler:Landroid/os/Handler;

    .line 201
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mIsCurrentUser:Z

    return v0
.end method

.method static synthetic access$300(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mFirstRequestFinished:Z

    return v0
.end method

.method static synthetic access$302(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mFirstRequestFinished:Z

    return p1
.end method

.method static synthetic access$400(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->maybeAddEmptyView()V

    return-void
.end method

.method static synthetic access$600(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private maybeAddEmptyView()V
    .locals 4

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mIsCurrentUser:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/h;->photos_of_you_empty:I

    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;-><init>(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)V

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getAdapter()Lcom/instagram/android/people/adapter/PhotosOfYouFeedAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lcom/instagram/android/people/adapter/PhotosOfYouFeedAdapter;
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mAdapter:Lcom/instagram/android/people/adapter/PhotosOfYouFeedAdapter;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/instagram/android/people/adapter/PhotosOfYouFeedAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getDefaultFeedViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, p0}, Lcom/instagram/android/people/adapter/PhotosOfYouFeedAdapter;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mAdapter:Lcom/instagram/android/people/adapter/PhotosOfYouFeedAdapter;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mAdapter:Lcom/instagram/android/people/adapter/PhotosOfYouFeedAdapter;

    return-object v0
.end method

.method protected getDefaultFeedViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->GRID:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    return-object v0
.end method

.method public loadMore()V
    .locals 3

    .prologue
    .line 153
    const/4 v0, 0x0

    new-instance v1, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;-><init>(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;Lcom/instagram/android/people/fragment/PhotosOfYouFragment$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V

    .line 154
    return-void
.end method

.method protected makeRequest(Lcom/instagram/api/AbstractStreamingApiCallbacks;)Lcom/instagram/api/loaderrequest/MediaFeedRequest;
    .locals 3
    .parameter
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

    .prologue
    .line 132
    .local p1, callbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    new-instance v0, Lcom/instagram/api/loaderrequest/PhotosOfYouFeedRequest;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mUserId:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/instagram/api/loaderrequest/PhotosOfYouFeedRequest;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mUserId:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mUsername:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mIsCurrentUser:Z

    .line 64
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getAdapter()Lcom/instagram/android/people/adapter/PhotosOfYouFeedAdapter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mIsCurrentUser:Z

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/adapter/PhotosOfYouFeedAdapter;->setIsCurrentUser(Z)V

    .line 66
    new-instance v0, Lcom/facebook/b/a/k;

    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/b/a/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mBroadcastManager:Lcom/facebook/b/a/k;

    .line 67
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mBroadcastManager:Lcom/facebook/b/a/k;

    invoke-virtual {v0}, Lcom/facebook/b/a/k;->a()Lcom/facebook/b/a/i;

    move-result-object v0

    const-string v1, "com.instagram.android.people.fragment.PhotosOfYouFragment.PHOTOS_OF_YOU_UPDATED"

    new-instance v2, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$1;-><init>(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/b/a/i;->a(Ljava/lang/String;Lcom/facebook/content/b;)Lcom/facebook/b/a/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/b/a/i;->a()Lcom/facebook/b/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mUpdatedReceiver:Lcom/facebook/b/a/j;

    .line 75
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mUpdatedReceiver:Lcom/facebook/b/a/j;

    invoke-interface {v0}, Lcom/facebook/b/a/j;->b()V

    .line 77
    const/4 v0, 0x1

    new-instance v1, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;-><init>(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;Lcom/instagram/android/people/fragment/PhotosOfYouFragment$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V

    .line 78
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mUpdatedReceiver:Lcom/facebook/b/a/j;

    invoke-interface {v0}, Lcom/facebook/b/a/j;->c()V

    .line 83
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onDestroy()V

    .line 84
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onResume()V

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.instagram.android.fragment.SelfFragment.BROADCAST_NEW_PHOTOS_OF_YOU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    const-string v1, "com.instagram.android.fragment.SelfFragment.EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mBroadcastManager:Lcom/facebook/b/a/k;

    invoke-virtual {v1, v0}, Lcom/facebook/b/a/k;->a(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    iget-boolean v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mFirstRequestFinished:Z

    if-eqz v0, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->maybeAddEmptyView()V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getAdapter()Lcom/instagram/android/people/adapter/PhotosOfYouFeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/adapter/PhotosOfYouFeedAdapter;->hasMedia()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/ListUtil;->updateProgressBarState(Landroid/os/Handler;ZLandroid/view/View;)V

    goto :goto_0
.end method

.method protected populateConversionTrackingData(Ljava/util/Map;)V
    .locals 2
    .parameter
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

    .prologue
    .line 137
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "src"

    const-string v1, "tagged"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "userId"

    iget-object v1, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mUserId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method protected shouldPopFragmentWhenEmpty()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method
