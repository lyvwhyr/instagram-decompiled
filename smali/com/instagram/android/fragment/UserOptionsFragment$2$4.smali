.class Lcom/instagram/android/fragment/UserOptionsFragment$2$4;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/UserOptionsFragment$2;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserOptionsFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2$4;->this$1:Lcom/instagram/android/fragment/UserOptionsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 214
    if-nez p2, :cond_0

    .line 215
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2$4;->this$1:Lcom/instagram/android/fragment/UserOptionsFragment$2;

    iget-object v0, v0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://help.instagram.com/372161259539444/"

    iget-object v4, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2$4;->this$1:Lcom/instagram/android/fragment/UserOptionsFragment$2;

    iget-object v4, v4, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v4}, Lcom/instagram/android/fragment/UserOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/instagram/api/loaderrequest/WebUrlHelper;->addAndroidVersionToUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/UserOptionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 228
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 221
    const-string v2, "title"

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sget v0, Lcom/facebook/k;->send_feedback:I

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2$4;->this$1:Lcom/instagram/android/fragment/UserOptionsFragment$2;

    iget-object v0, v0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserOptionsFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/fragment/ReportProblemFragment;

    invoke-direct {v2}, Lcom/instagram/android/fragment/ReportProblemFragment;-><init>()V

    invoke-static {v0, v2, v1}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 221
    :cond_1
    sget v0, Lcom/facebook/k;->report_problem:I

    goto :goto_1
.end method
