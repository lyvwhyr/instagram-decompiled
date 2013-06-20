.class Lcom/instagram/android/login/fragment/LookupFragment$1;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "LookupFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<",
        "Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/LookupFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/LookupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/instagram/android/login/fragment/LookupFragment$1;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

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
            "Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;>;"
    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LookupFragment$1;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    #getter for: Lcom/instagram/android/login/fragment/LookupFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/login/fragment/LookupFragment;->access$100(Lcom/instagram/android/login/fragment/LookupFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/LookupFragment$1$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/LookupFragment$1$2;-><init>(Lcom/instagram/android/login/fragment/LookupFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    goto :goto_0
.end method

.method public onRequestFinished()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFinished()V

    .line 96
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LookupFragment$1;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/LookupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_lookup_button:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LookupFragment$1;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    #getter for: Lcom/instagram/android/login/fragment/LookupFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/login/fragment/LookupFragment;->access$100(Lcom/instagram/android/login/fragment/LookupFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/LookupFragment$1$4;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/LookupFragment$1$4;-><init>(Lcom/instagram/android/login/fragment/LookupFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LookupFragment$1;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/LookupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_lookup_button:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LookupFragment$1;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    #getter for: Lcom/instagram/android/login/fragment/LookupFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/login/fragment/LookupFragment;->access$100(Lcom/instagram/android/login/fragment/LookupFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/LookupFragment$1$3;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/LookupFragment$1$3;-><init>(Lcom/instagram/android/login/fragment/LookupFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method protected onSuccess(Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;)V
    .locals 3
    .parameter "model"

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1}, Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;->isEmailSent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LookupFragment$1;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/LookupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_lookup_password_recovery_textview_email_sent:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LookupFragment$1;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/LookupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_lookup_button:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 59
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LookupFragment$1;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    #getter for: Lcom/instagram/android/login/fragment/LookupFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/login/fragment/LookupFragment;->access$100(Lcom/instagram/android/login/fragment/LookupFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/LookupFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/login/fragment/LookupFragment$1$1;-><init>(Lcom/instagram/android/login/fragment/LookupFragment$1;Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/login/fragment/LookupFragment$1;->onSuccess(Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;)V

    return-void
.end method
