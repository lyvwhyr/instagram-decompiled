.class final Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "RegisterFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROGRESS_DIALOG:Ljava/lang/String; = "ProgressDialog"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;Lcom/instagram/android/login/fragment/RegisterFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

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
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 671
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/User;>;"
    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getErrorTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/api/BaseApiLoaderCallbacks;->handleRequestServerErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method public onRequestFinished()V
    .locals 3

    .prologue
    .line 683
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    const-string v1, "ProgressDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 684
    iget-object v1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #getter for: Lcom/instagram/android/login/fragment/RegisterFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1200(Lcom/instagram/android/login/fragment/RegisterFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks$2;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks$2;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;Landroid/support/v4/app/DialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 692
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFinished()V

    .line 693
    return-void
.end method

.method public onRequestStart()V
    .locals 3

    .prologue
    .line 676
    new-instance v0, Lcom/instagram/android/login/fragment/RegisterFragment$SigningUpDialogFragment;

    invoke-direct {v0}, Lcom/instagram/android/login/fragment/RegisterFragment$SigningUpDialogFragment;-><init>()V

    .line 677
    iget-object v1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/RegisterFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "ProgressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/login/fragment/RegisterFragment$SigningUpDialogFragment;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 678
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestStart()V

    .line 679
    return-void
.end method

.method protected onSuccess(Lcom/instagram/android/model/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 658
    const-string v0, "RegisterFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User signed up: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/service/AuthHelper;->saveCurrentUser(Lcom/instagram/android/model/User;)V

    .line 660
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/Preferences;->storeUser(Lcom/instagram/android/model/User;)Z

    .line 661
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #getter for: Lcom/instagram/android/login/fragment/RegisterFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$2200(Lcom/instagram/android/login/fragment/RegisterFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks$1;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 667
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 652
    check-cast p1, Lcom/instagram/android/model/User;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;->onSuccess(Lcom/instagram/android/model/User;)V

    return-void
.end method
