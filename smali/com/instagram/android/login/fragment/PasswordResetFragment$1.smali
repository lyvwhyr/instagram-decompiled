.class Lcom/instagram/android/login/fragment/PasswordResetFragment$1;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "PasswordResetFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractStreamingApiCallbacks",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/PasswordResetFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$1;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

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
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/User;>;"
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->no_account_found:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 52
    invoke-super {p0, p1}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    .line 53
    return-void
.end method

.method public onRequestFinished()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestFinished()V

    .line 65
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$1;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/login/fragment/PasswordResetFragment;->mLoading:Z
    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->access$202(Lcom/instagram/android/login/fragment/PasswordResetFragment;Z)Z

    .line 66
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$1;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$1;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/instagram/android/login/fragment/PasswordResetFragment;->updateLoadingState(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->access$300(Lcom/instagram/android/login/fragment/PasswordResetFragment;Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestStart()V

    .line 58
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$1;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/login/fragment/PasswordResetFragment;->mLoading:Z
    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->access$202(Lcom/instagram/android/login/fragment/PasswordResetFragment;Z)Z

    .line 59
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$1;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$1;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/instagram/android/login/fragment/PasswordResetFragment;->updateLoadingState(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->access$300(Lcom/instagram/android/login/fragment/PasswordResetFragment;Landroid/view/View;)V

    .line 60
    return-void
.end method

.method protected onSuccess(Lcom/instagram/android/model/User;)V
    .locals 3
    .parameter "responseObject"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$1;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    #setter for: Lcom/instagram/android/login/fragment/PasswordResetFragment;->mUser:Lcom/instagram/android/model/User;
    invoke-static {v0, p1}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->access$002(Lcom/instagram/android/login/fragment/PasswordResetFragment;Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;

    .line 46
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$1;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$1;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$1;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    #getter for: Lcom/instagram/android/login/fragment/PasswordResetFragment;->mUser:Lcom/instagram/android/model/User;
    invoke-static {v2}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->access$000(Lcom/instagram/android/login/fragment/PasswordResetFragment;)Lcom/instagram/android/model/User;

    move-result-object v2

    #calls: Lcom/instagram/android/login/fragment/PasswordResetFragment;->bindUser(Landroid/view/View;Lcom/instagram/android/model/User;)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->access$100(Lcom/instagram/android/login/fragment/PasswordResetFragment;Landroid/view/View;Lcom/instagram/android/model/User;)V

    .line 47
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Lcom/instagram/android/model/User;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/login/fragment/PasswordResetFragment$1;->onSuccess(Lcom/instagram/android/model/User;)V

    return-void
.end method
