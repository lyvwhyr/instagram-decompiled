.class public Lcom/instagram/android/login/callback/LoginCallbacks;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "LoginCallbacks.java"


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
.field private static final LOG_TAG:Ljava/lang/String; = "LoginCallbacks"

.field public static final PROGRESS_DIALOG:Ljava/lang/String; = "progressDialog"


# instance fields
.field private final mFragment:Landroid/support/v4/app/Fragment;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/callback/LoginCallbacks;->mHandler:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcom/instagram/android/login/callback/LoginCallbacks;->mFragment:Landroid/support/v4/app/Fragment;

    .line 29
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
    .line 50
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/User;>;"
    const-string v0, "LoginCallbacks"

    const-string v1, "Request failure"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0, p1}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    .line 52
    return-void
.end method

.method public onRequestFinished()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/android/login/callback/LoginCallbacks;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    const-string v1, "progressDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 64
    iget-object v1, p0, Lcom/instagram/android/login/callback/LoginCallbacks;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/instagram/android/login/callback/LoginCallbacks$1;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/login/callback/LoginCallbacks$1;-><init>(Lcom/instagram/android/login/callback/LoginCallbacks;Landroid/support/v4/app/DialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFinished()V

    .line 73
    return-void
.end method

.method public onRequestStart()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/instagram/android/fragment/SimpleProgressDialogFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/SimpleProgressDialogFragment;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/instagram/android/login/callback/LoginCallbacks;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "progressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/fragment/SimpleProgressDialogFragment;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 58
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestStart()V

    .line 59
    return-void
.end method

.method protected onSuccess(Lcom/instagram/android/model/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 35
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/service/AuthHelper;->saveCurrentUser(Lcom/instagram/android/model/User;)V

    .line 36
    iget-object v0, p0, Lcom/instagram/android/login/callback/LoginCallbacks;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/Preferences;->storeUser(Lcom/instagram/android/model/User;)Z

    .line 37
    iget-object v0, p0, Lcom/instagram/android/login/callback/LoginCallbacks;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/receiver/C2DMReceiver;->refreshAppC2DMRegistrationState(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/android/login/callback/LoginCallbacks;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Lcom/instagram/android/login/callback/LoginCallbacks;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 43
    iget-object v0, p0, Lcom/instagram/android/login/callback/LoginCallbacks;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 45
    invoke-static {}, Lcom/instagram/util/IgGateKeeper;->clearCookies()V

    .line 46
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/instagram/android/model/User;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/login/callback/LoginCallbacks;->onSuccess(Lcom/instagram/android/model/User;)V

    return-void
.end method
