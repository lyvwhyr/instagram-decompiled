.class Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;
.super Ljava/lang/Object;
.source "ForgotPasswordFragment.java"

# interfaces
.implements Lcom/facebook/a/e;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FacebookAuthListener"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/ForgotPasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/ForgotPasswordFragment;Lcom/instagram/android/login/fragment/ForgotPasswordFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/login/fragment/ForgotPasswordFragment;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "FacebookAuthListener"

    const-string v1, "Facebook onCancel"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 7
    .parameter "values"

    .prologue
    .line 104
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest;

    iget-object v2, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    invoke-virtual {v2}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener$1;

    iget-object v4, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    #getter for: Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->access$200(Lcom/instagram/android/login/fragment/ForgotPasswordFragment;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    invoke-virtual {v5}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v5

    iget-object v6, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    invoke-virtual {v6}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener$1;-><init>(Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;Landroid/os/Handler;Landroid/support/v4/app/p;Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest;-><init>(Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    invoke-virtual {v1, v0}, Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest;->perform(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public onError(Lcom/facebook/a/a;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 139
    const-string v0, "FacebookAuthListener"

    const-string v1, "Facebook onError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method public onFacebookError(Lcom/facebook/a/i;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 134
    const-string v0, "FacebookAuthListener"

    const-string v1, "Facebook onFacebookError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method
