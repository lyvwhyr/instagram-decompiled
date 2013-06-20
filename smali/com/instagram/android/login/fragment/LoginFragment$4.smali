.class Lcom/instagram/android/login/fragment/LoginFragment$4;
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
    .line 112
    iput-object p1, p0, Lcom/instagram/android/login/fragment/LoginFragment$4;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment$4;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    #getter for: Lcom/instagram/android/login/fragment/LoginFragment;->mUser:Lcom/instagram/android/model/User;
    invoke-static {v0}, Lcom/instagram/android/login/fragment/LoginFragment;->access$100(Lcom/instagram/android/login/fragment/LoginFragment;)Lcom/instagram/android/model/User;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/FastAccountSwitchHelper;->removeUser(Lcom/instagram/android/model/User;)V

    .line 116
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment$4;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/LoginFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()V

    .line 117
    return-void
.end method
