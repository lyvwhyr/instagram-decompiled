.class Lcom/instagram/android/login/fragment/ForgotPasswordFragment$2;
.super Ljava/lang/Object;
.source "ForgotPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/ForgotPasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$2;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 52
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$2;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$2;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    #getter for: Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->mFacebookAuthListener:Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;
    invoke-static {v3}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->access$100(Lcom/instagram/android/login/fragment/ForgotPasswordFragment;)Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/a/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/a/e;)V

    .line 54
    return-void
.end method
