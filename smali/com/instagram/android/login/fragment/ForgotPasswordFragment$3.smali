.class Lcom/instagram/android/login/fragment/ForgotPasswordFragment$3;
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
    .line 57
    iput-object p1, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$3;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$3;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://help.instagram.com/"

    iget-object v4, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$3;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    invoke-virtual {v4}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/instagram/api/loaderrequest/WebUrlHelper;->addAndroidVersionToUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method
