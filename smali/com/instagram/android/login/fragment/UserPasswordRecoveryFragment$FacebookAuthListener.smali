.class Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;
.super Ljava/lang/Object;
.source "UserPasswordRecoveryFragment.java"

# interfaces
.implements Lcom/facebook/a/e;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FacebookAuthListener"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 261
    const-string v0, "FacebookAuthListener"

    const-string v1, "Facebook onCancel"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 7
    .parameter "values"

    .prologue
    .line 217
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest;

    iget-object v2, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-virtual {v2}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener$1;

    iget-object v4, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    #getter for: Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->access$400(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-virtual {v5}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v5

    iget-object v6, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-virtual {v6}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener$1;-><init>(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;Landroid/os/Handler;Landroid/support/v4/app/p;Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest;-><init>(Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    .line 242
    iget-object v2, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-virtual {v2}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "email_lookup"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-virtual {v2}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "email_lookup"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest;->performWithEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    #getter for: Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->mUser:Lcom/instagram/android/model/User;
    invoke-static {v2}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->access$200(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)Lcom/instagram/android/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest;->performWithUserId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Lcom/facebook/a/a;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 256
    const-string v0, "FacebookAuthListener"

    const-string v1, "Facebook onError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method public onFacebookError(Lcom/facebook/a/i;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 251
    const-string v0, "FacebookAuthListener"

    const-string v1, "Facebook onFacebookError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method
