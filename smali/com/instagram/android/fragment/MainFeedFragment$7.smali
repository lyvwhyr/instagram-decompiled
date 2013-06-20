.class Lcom/instagram/android/fragment/MainFeedFragment$7;
.super Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;
.source "MainFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/MainFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/MainFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/instagram/android/fragment/MainFeedFragment$7;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    return-void
.end method


# virtual methods
.method protected onSuccess(Lcom/instagram/android/model/MediaFeedResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 413
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->onSuccess(Lcom/instagram/android/model/MediaFeedResponse;)V

    .line 416
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$7;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/fragment/MainFeedFragment;->mFirstRequestFinished:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/MainFeedFragment;->access$502(Lcom/instagram/android/fragment/MainFeedFragment;Z)Z

    .line 417
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$7;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/MainFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v1, p0, Lcom/instagram/android/fragment/MainFeedFragment$7;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$7;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/MainFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    #calls: Lcom/instagram/android/fragment/MainFeedFragment;->addListEmptyView(Landroid/view/ViewGroup;)V
    invoke-static {v1, v0}, Lcom/instagram/android/fragment/MainFeedFragment;->access$600(Lcom/instagram/android/fragment/MainFeedFragment;Landroid/view/ViewGroup;)V

    .line 420
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 410
    check-cast p1, Lcom/instagram/android/model/MediaFeedResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/MainFeedFragment$7;->onSuccess(Lcom/instagram/android/model/MediaFeedResponse;)V

    return-void
.end method
