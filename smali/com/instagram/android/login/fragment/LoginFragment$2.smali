.class Lcom/instagram/android/login/fragment/LoginFragment$2;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/LoginFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/LoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/instagram/android/login/fragment/LoginFragment$2;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment$2;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    #getter for: Lcom/instagram/android/login/fragment/LoginFragment;->mUser:Lcom/instagram/android/model/User;
    invoke-static {v0}, Lcom/instagram/android/login/fragment/LoginFragment;->access$100(Lcom/instagram/android/login/fragment/LoginFragment;)Lcom/instagram/android/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    const-string v1, "userid"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/LoginFragment$2;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    #getter for: Lcom/instagram/android/login/fragment/LoginFragment;->mUser:Lcom/instagram/android/model/User;
    invoke-static {v2}, Lcom/instagram/android/login/fragment/LoginFragment;->access$100(Lcom/instagram/android/login/fragment/LoginFragment;)Lcom/instagram/android/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/instagram/android/login/fragment/LoginFragment$2;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/LoginFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-direct {v2}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;-><init>()V

    invoke-static {v1, v2, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment$2;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/LoginFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    invoke-direct {v1}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0
.end method
