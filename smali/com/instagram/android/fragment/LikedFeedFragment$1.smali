.class Lcom/instagram/android/fragment/LikedFeedFragment$1;
.super Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;
.source "LikedFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/LikedFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/LikedFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/instagram/android/fragment/LikedFeedFragment$1;->this$0:Lcom/instagram/android/fragment/LikedFeedFragment;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    return-void
.end method


# virtual methods
.method protected onSuccess(Lcom/instagram/android/model/MediaFeedResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->onSuccess(Lcom/instagram/android/model/MediaFeedResponse;)V

    .line 32
    iget-object v0, p0, Lcom/instagram/android/fragment/LikedFeedFragment$1;->this$0:Lcom/instagram/android/fragment/LikedFeedFragment;

    iget-object v1, p0, Lcom/instagram/android/fragment/LikedFeedFragment$1;->this$0:Lcom/instagram/android/fragment/LikedFeedFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/LikedFeedFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/instagram/android/fragment/LikedFeedFragment;->addListEmptyView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/LikedFeedFragment;->access$000(Lcom/instagram/android/fragment/LikedFeedFragment;Landroid/view/View;)V

    .line 33
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Lcom/instagram/android/model/MediaFeedResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/LikedFeedFragment$1;->onSuccess(Lcom/instagram/android/model/MediaFeedResponse;)V

    return-void
.end method
