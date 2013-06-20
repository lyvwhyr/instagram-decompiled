.class Lcom/instagram/android/login/fragment/RegisterFragment$7;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "RegisterFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractStreamingApiCallbacks",
        "<",
        "Lcom/instagram/android/model/CheckUsernameResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$7;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFinished()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$7;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/login/fragment/RegisterFragment;->mInitialCheckusernameRequestRan:Z
    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1302(Lcom/instagram/android/login/fragment/RegisterFragment;Z)Z

    .line 344
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$7;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_sign_up_username_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    invoke-super {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestFinished()V

    .line 346
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$7;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_sign_up_username_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    invoke-super {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestStart()V

    .line 339
    return-void
.end method

.method protected onSuccess(Lcom/instagram/android/model/CheckUsernameResponse;)V
    .locals 2
    .parameter "responseObject"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$7;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #getter for: Lcom/instagram/android/login/fragment/RegisterFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1200(Lcom/instagram/android/login/fragment/RegisterFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/RegisterFragment$7$1;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/login/fragment/RegisterFragment$7$1;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment$7;Lcom/instagram/android/model/CheckUsernameResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 312
    check-cast p1, Lcom/instagram/android/model/CheckUsernameResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/login/fragment/RegisterFragment$7;->onSuccess(Lcom/instagram/android/model/CheckUsernameResponse;)V

    return-void
.end method
