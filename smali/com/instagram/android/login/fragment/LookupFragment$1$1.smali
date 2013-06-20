.class Lcom/instagram/android/login/fragment/LookupFragment$1$1;
.super Ljava/lang/Object;
.source "LookupFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/login/fragment/LookupFragment$1;

.field final synthetic val$model:Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/LookupFragment$1;Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/instagram/android/login/fragment/LookupFragment$1$1;->this$1:Lcom/instagram/android/login/fragment/LookupFragment$1;

    iput-object p2, p0, Lcom/instagram/android/login/fragment/LookupFragment$1$1;->val$model:Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/instagram/android/login/fragment/LookupFragment$1$1;->val$model:Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;

    invoke-virtual {v1}, Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "userid"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/LookupFragment$1$1;->val$model:Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;

    invoke-virtual {v2}, Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;->getUser()Lcom/instagram/android/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/login/fragment/LookupFragment$1$1;->this$1:Lcom/instagram/android/login/fragment/LookupFragment$1;

    iget-object v1, v1, Lcom/instagram/android/login/fragment/LookupFragment$1;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/LookupFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-direct {v2}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;-><init>()V

    invoke-static {v1, v2, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 56
    return-void

    .line 53
    :cond_0
    const-string v1, "email_lookup"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/LookupFragment$1$1;->this$1:Lcom/instagram/android/login/fragment/LookupFragment$1;

    iget-object v2, v2, Lcom/instagram/android/login/fragment/LookupFragment$1;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    #calls: Lcom/instagram/android/login/fragment/LookupFragment;->getUsernameOrEmail()Ljava/lang/String;
    invoke-static {v2}, Lcom/instagram/android/login/fragment/LookupFragment;->access$000(Lcom/instagram/android/login/fragment/LookupFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
