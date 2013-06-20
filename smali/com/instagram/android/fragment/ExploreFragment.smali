.class public Lcom/instagram/android/fragment/ExploreFragment;
.super Lcom/instagram/android/fragment/AbstractFeedFragment;
.source "ExploreFragment.java"


# instance fields
.field private mOldOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public forceTrim()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/instagram/android/fragment/ExploreFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ExploreFragment$2;-><init>(Lcom/instagram/android/fragment/ExploreFragment;)V

    return-object v0
.end method

.method protected getDefaultFeedViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->GRID:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    return-object v0
.end method

.method public isLoadMoreVisible()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ExploreFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v0

    sget v1, Lcom/facebook/g;->request_id_explore:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/af;->b(I)Landroid/support/v4/a/c;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/a/c;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeRequest(Lcom/instagram/api/AbstractStreamingApiCallbacks;)Lcom/instagram/api/loaderrequest/MediaFeedRequest;
    .locals 2
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
    .line 48
    .local p1, callbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    new-instance v0, Lcom/instagram/android/fragment/ExploreFragment$1;

    sget v1, Lcom/facebook/g;->request_id_explore:I

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/instagram/android/fragment/ExploreFragment$1;-><init>(Lcom/instagram/android/fragment/ExploreFragment;Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    new-instance v1, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/fragment/ExploreFragment;->constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V

    .line 44
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/ExploreFragment;->mOldOrientation:I

    .line 30
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 31
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onStart()V

    .line 32
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/ExploreFragment;->mOldOrientation:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 37
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onStop()V

    .line 38
    return-void
.end method

.method public populateConversionTrackingData(Ljava/util/Map;)V
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
    .line 115
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "src"

    const-string v1, "explore"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method
