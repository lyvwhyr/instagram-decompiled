.class public Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "AbstractFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractStreamingApiCallbacks",
        "<",
        "Lcom/instagram/android/model/MediaFeedResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mClearOnAdd:Z

.field final synthetic this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;


# direct methods
.method protected constructor <init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 506
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->setShouldClearOnAdd(Z)V

    return-void
.end method

.method private setShouldClearOnAdd(Z)V
    .locals 0
    .parameter "clearOnAdd"

    .prologue
    .line 511
    iput-boolean p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->mClearOnAdd:Z

    .line 512
    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Lcom/instagram/android/model/MediaFeedResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/MediaFeedResponse;>;"
    const/4 v1, 0x1

    .line 532
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    iput-boolean v1, v0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mInitialNetworkRequestFinished:Z

    .line 533
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    #setter for: Lcom/instagram/android/fragment/AbstractFeedFragment;->mFailed:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->access$502(Lcom/instagram/android/fragment/AbstractFeedFragment;Z)Z

    .line 534
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->showRequestFailedFeedback(Lcom/instagram/api/ApiResponse;)V

    .line 536
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->notifyDataSetChanged()V

    .line 537
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->resetStickyHeader()V

    .line 538
    invoke-super {p0, p1}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    .line 539
    return-void
.end method

.method public onRequestFinished()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 559
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    #setter for: Lcom/instagram/android/fragment/AbstractFeedFragment;->mIsLoading:Z
    invoke-static {v0, v2}, Lcom/instagram/android/fragment/AbstractFeedFragment;->access$902(Lcom/instagram/android/fragment/AbstractFeedFragment;Z)Z

    .line 560
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/instagram/android/fragment/AbstractFeedFragment;->mInitialNetworkRequestFinished:Z

    .line 562
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->resetStickyHeader()V

    .line 564
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/service/ActionBarService;->setIsLoading(Z)V

    .line 567
    :cond_0
    return-void
.end method

.method public onRequestStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 549
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/fragment/AbstractFeedFragment;->mFailed:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->access$502(Lcom/instagram/android/fragment/AbstractFeedFragment;Z)Z

    .line 550
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    #setter for: Lcom/instagram/android/fragment/AbstractFeedFragment;->mIsLoading:Z
    invoke-static {v0, v2}, Lcom/instagram/android/fragment/AbstractFeedFragment;->access$902(Lcom/instagram/android/fragment/AbstractFeedFragment;Z)Z

    .line 552
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/service/ActionBarService;->setIsLoading(Z)V

    .line 555
    :cond_0
    return-void
.end method

.method protected onSuccess(Lcom/instagram/android/model/MediaFeedResponse;)V
    .locals 3
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 516
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    #setter for: Lcom/instagram/android/fragment/AbstractFeedFragment;->mFailed:Z
    invoke-static {v0, v2}, Lcom/instagram/android/fragment/AbstractFeedFragment;->access$502(Lcom/instagram/android/fragment/AbstractFeedFragment;Z)Z

    .line 517
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {p1}, Lcom/instagram/android/model/MediaFeedResponse;->isMoreAvailable()Z

    move-result v1

    #setter for: Lcom/instagram/android/fragment/AbstractFeedFragment;->mMoreAvailable:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->access$602(Lcom/instagram/android/fragment/AbstractFeedFragment;Z)Z

    .line 518
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {p1}, Lcom/instagram/android/model/MediaFeedResponse;->isAutoLoadMoreEnabled()Z

    move-result v1

    #setter for: Lcom/instagram/android/fragment/AbstractFeedFragment;->mIsAutoLoadMoreEnabled:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->access$702(Lcom/instagram/android/fragment/AbstractFeedFragment;Z)Z

    .line 519
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {p1}, Lcom/instagram/android/model/MediaFeedResponse;->getNextMaxId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/instagram/android/fragment/AbstractFeedFragment;->mMaxId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->access$802(Lcom/instagram/android/fragment/AbstractFeedFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {p1}, Lcom/instagram/android/model/MediaFeedResponse;->getFeedMessages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->setFeedMessages(Ljava/util/List;)V

    .line 522
    iget-boolean v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->mClearOnAdd:Z

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/MediaFeedResponse;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->setMedia(Ljava/util/ArrayList;)V

    .line 524
    iput-boolean v2, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->mClearOnAdd:Z

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/MediaFeedResponse;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->addMedia(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 506
    check-cast p1, Lcom/instagram/android/model/MediaFeedResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->onSuccess(Lcom/instagram/android/model/MediaFeedResponse;)V

    return-void
.end method

.method protected showRequestFailedFeedback(Lcom/instagram/api/ApiResponse;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Lcom/instagram/android/model/MediaFeedResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/MediaFeedResponse;>;"
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/k;->could_not_refresh_feed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 545
    :cond_0
    return-void
.end method
