.class Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "UserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/AbstractStreamingApiCallbacks",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserListFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/UserListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    .local p0, this:Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;,"Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks<TT;>;"
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/UserListFragment;Lcom/instagram/android/fragment/UserListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 384
    .local p0, this:Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;,"Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks<TT;>;"
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;-><init>(Lcom/instagram/android/fragment/UserListFragment;)V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;,"Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks<TT;>;"
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<TT;>;"
    const/4 v2, 0x1

    .line 405
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/k;->request_error:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 408
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->isSignUpFlow()Z
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$100(Lcom/instagram/android/fragment/UserListFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserListFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->button_find_friends_footer_follow_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 410
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$600(Lcom/instagram/android/fragment/UserListFragment;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$600(Lcom/instagram/android/fragment/UserListFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onRequestFinished()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/fragment/UserListFragment;->mIsLoading:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/UserListFragment;->access$902(Lcom/instagram/android/fragment/UserListFragment;Z)Z

    .line 389
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->updateProgressBarState()V
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$1900(Lcom/instagram/android/fragment/UserListFragment;)V

    .line 390
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/fragment/UserListFragment;->mIsLoading:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/UserListFragment;->access$902(Lcom/instagram/android/fragment/UserListFragment;Z)Z

    .line 400
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->updateProgressBarState()V
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$1900(Lcom/instagram/android/fragment/UserListFragment;)V

    .line 401
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, this:Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;,"Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks<TT;>;"
    .local p1, responseObject:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$600(Lcom/instagram/android/fragment/UserListFragment;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 395
    return-void
.end method
