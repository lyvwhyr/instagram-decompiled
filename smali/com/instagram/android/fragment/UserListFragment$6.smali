.class Lcom/instagram/android/fragment/UserListFragment$6;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "UserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractStreamingApiCallbacks",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserListFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/util/ArrayList<Lcom/instagram/android/model/User;>;>;"
    const/4 v3, 0x1

    .line 358
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->isSignUpFlow()Z
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$100(Lcom/instagram/android/fragment/UserListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #setter for: Lcom/instagram/android/fragment/UserListFragment;->mLastRequestFailed:Z
    invoke-static {v0, v3}, Lcom/instagram/android/fragment/UserListFragment;->access$2002(Lcom/instagram/android/fragment/UserListFragment;Z)Z

    .line 360
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->request_error:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->retry:I

    new-instance v2, Lcom/instagram/android/fragment/UserListFragment$6$4;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/UserListFragment$6$4;-><init>(Lcom/instagram/android/fragment/UserListFragment$6;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->skip:I

    new-instance v2, Lcom/instagram/android/fragment/UserListFragment$6$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/UserListFragment$6$3;-><init>(Lcom/instagram/android/fragment/UserListFragment$6;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 381
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/k;->request_error:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onRequestFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 351
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #setter for: Lcom/instagram/android/fragment/UserListFragment;->mIsLoading:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/UserListFragment;->access$902(Lcom/instagram/android/fragment/UserListFragment;Z)Z

    .line 352
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ActionBarService;->setIsLoading(Z)V

    .line 353
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->updateProgressBarState()V
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$1900(Lcom/instagram/android/fragment/UserListFragment;)V

    .line 354
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 344
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #setter for: Lcom/instagram/android/fragment/UserListFragment;->mIsLoading:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/UserListFragment;->access$902(Lcom/instagram/android/fragment/UserListFragment;Z)Z

    .line 345
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ActionBarService;->setIsLoading(Z)V

    .line 346
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->updateProgressBarState()V
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$1900(Lcom/instagram/android/fragment/UserListFragment;)V

    .line 347
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 286
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/UserListFragment$6;->onSuccess(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/User;>;"
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #setter for: Lcom/instagram/android/fragment/UserListFragment;->mUsers:Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/instagram/android/fragment/UserListFragment;->access$1402(Lcom/instagram/android/fragment/UserListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 290
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->isSectioned:Z
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$1500(Lcom/instagram/android/fragment/UserListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$500(Lcom/instagram/android/fragment/UserListFragment;)Lcom/instagram/android/adapter/UserListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/adapter/UserListAdapter;->setItems(Ljava/util/ArrayList;)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mShowFollowButtons:Z
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$1600(Lcom/instagram/android/fragment/UserListFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-virtual {v0, p1}, Lcom/instagram/android/fragment/UserListFragment;->fetchFollowStatusInBulk(Ljava/util/ArrayList;)V

    .line 296
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->isSignUpFlow()Z
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$100(Lcom/instagram/android/fragment/UserListFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$1800(Lcom/instagram/android/fragment/UserListFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/UserListFragment$6$1;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/fragment/UserListFragment$6$1;-><init>(Lcom/instagram/android/fragment/UserListFragment$6;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    :cond_2
    :goto_0
    return-void

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mShowFollowAllButton:Z
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$400(Lcom/instagram/android/fragment/UserListFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$1800(Lcom/instagram/android/fragment/UserListFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/UserListFragment$6$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/UserListFragment$6$2;-><init>(Lcom/instagram/android/fragment/UserListFragment$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
