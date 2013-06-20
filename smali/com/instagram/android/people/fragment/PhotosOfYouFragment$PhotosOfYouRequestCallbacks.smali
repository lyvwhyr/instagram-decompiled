.class Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;
.super Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;
.source "PhotosOfYouFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;Lcom/instagram/android/people/fragment/PhotosOfYouFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;-><init>(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)V

    return-void
.end method


# virtual methods
.method public onRequestFinished()V
    .locals 3

    .prologue
    .line 219
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->onRequestFinished()V

    .line 220
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    #getter for: Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->access$600(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    invoke-virtual {v2}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/ListUtil;->updateProgressBarState(Landroid/os/Handler;ZLandroid/view/View;)V

    .line 221
    return-void
.end method

.method protected onSuccess(Lcom/instagram/android/model/MediaFeedResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->onSuccess(Lcom/instagram/android/model/MediaFeedResponse;)V

    .line 207
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mFirstRequestFinished:Z
    invoke-static {v0, v1}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->access$302(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;Z)Z

    .line 208
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    #calls: Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->maybeAddEmptyView()V
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->access$500(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)V

    .line 210
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    invoke-virtual {v0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    #getter for: Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mIsCurrentUser:Z
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->access$200(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    invoke-virtual {v0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    invoke-virtual {v0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ActionBarService;->forceUpdate()V

    .line 215
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 201
    check-cast p1, Lcom/instagram/android/model/MediaFeedResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;->onSuccess(Lcom/instagram/android/model/MediaFeedResponse;)V

    return-void
.end method
