.class Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks$2;
.super Ljava/lang/Object;
.source "FacebookRecoveryCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;

.field final synthetic val$responseObject:Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks$2;->this$0:Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;

    iput-object p2, p0, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks$2;->val$responseObject:Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string v1, "argument_reset_token"

    iget-object v2, p0, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks$2;->val$responseObject:Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;

    invoke-virtual {v2}, Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "argument_user_id"

    iget-object v2, p0, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks$2;->val$responseObject:Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;

    invoke-virtual {v2}, Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;->getUser()Lcom/instagram/android/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks$2;->this$0:Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;

    #getter for: Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;->mFragmentManager:Landroid/support/v4/app/p;
    invoke-static {v1}, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;->access$100(Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;)Landroid/support/v4/app/p;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/login/fragment/PasswordResetFragment;

    invoke-direct {v2}, Lcom/instagram/android/login/fragment/PasswordResetFragment;-><init>()V

    invoke-static {v1, v2, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 63
    return-void
.end method
