.class Lcom/instagram/android/login/fragment/ForgotPasswordFragment$1;
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
    .line 41
    iput-object p1, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$1;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$1;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/LookupFragment;

    invoke-direct {v1}, Lcom/instagram/android/login/fragment/LookupFragment;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 45
    return-void
.end method
