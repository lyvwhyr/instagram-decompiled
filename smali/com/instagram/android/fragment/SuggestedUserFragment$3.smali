.class Lcom/instagram/android/fragment/SuggestedUserFragment$3;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "SuggestedUserFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractStreamingApiCallbacks",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/android/model/SuggestedUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

.field final synthetic val$isRefresh:Z


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SuggestedUserFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    iput-boolean p2, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->val$isRefresh:Z

    invoke-direct {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;-><init>()V

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
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/SuggestedUser;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/util/ArrayList<Lcom/instagram/android/model/SuggestedUser;>;>;"
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->mInitialNetworkRequestFinished:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$402(Lcom/instagram/android/fragment/SuggestedUserFragment;Z)Z

    .line 145
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/k;->could_not_refresh_feed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    invoke-super {p0, p1}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    .line 147
    return-void
.end method

.method public onRequestFinished()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #setter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->mIsLoading:Z
    invoke-static {v0, v2}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$502(Lcom/instagram/android/fragment/SuggestedUserFragment;Z)Z

    .line 159
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->mInitialNetworkRequestFinished:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$402(Lcom/instagram/android/fragment/SuggestedUserFragment;Z)Z

    .line 160
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/service/ActionBarService;->setIsLoading(Z)V

    .line 161
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #getter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$600(Lcom/instagram/android/fragment/SuggestedUserFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #getter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->mIsLoading:Z
    invoke-static {v1}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$500(Lcom/instagram/android/fragment/SuggestedUserFragment;)Z

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/ListUtil;->updateProgressBarState(Landroid/os/Handler;ZLandroid/view/View;)V

    .line 162
    return-void
.end method

.method public onRequestStart()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 151
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #setter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->mIsLoading:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$502(Lcom/instagram/android/fragment/SuggestedUserFragment;Z)Z

    .line 152
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ActionBarService;->setIsLoading(Z)V

    .line 153
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #getter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$600(Lcom/instagram/android/fragment/SuggestedUserFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #getter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->mIsLoading:Z
    invoke-static {v1}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$500(Lcom/instagram/android/fragment/SuggestedUserFragment;)Z

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/ListUtil;->updateProgressBarState(Landroid/os/Handler;ZLandroid/view/View;)V

    .line 154
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->onSuccess(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/SuggestedUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, responseObject:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/SuggestedUser;>;"
    if-nez p1, :cond_0

    .line 122
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #responseObject:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/SuggestedUser;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .restart local p1       #responseObject:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/SuggestedUser;>;"
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #getter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->mAdapter:Lcom/instagram/android/adapter/SuggestedUserAdapter;
    invoke-static {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$000(Lcom/instagram/android/fragment/SuggestedUserFragment;)Lcom/instagram/android/adapter/SuggestedUserAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/adapter/SuggestedUserAdapter;->setSuggestedUsers(Ljava/util/ArrayList;)V

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/SuggestedUser;

    .line 130
    invoke-virtual {v0}, Lcom/instagram/android/model/SuggestedUser;->getUser()Lcom/instagram/android/model/User;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/SuggestedUserFragment;->fetchFollowStatusInBulk(Ljava/lang/Iterable;)V

    .line 137
    :cond_2
    iget-boolean v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->val$isRefresh:Z

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$3;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 140
    :cond_3
    return-void
.end method
