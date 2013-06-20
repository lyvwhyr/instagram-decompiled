.class Lcom/instagram/android/activity/BaseFragmentActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "BaseFragmentActivity.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/BaseFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/instagram/android/activity/BaseFragmentActivity$3;->this$0:Lcom/instagram/android/activity/BaseFragmentActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 50
    new-instance v0, Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/UserDetailFragment;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    const-string v2, "com.instagram.android.fragment.UserDetailFragment.EXTRA_USER_NAME"

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/instagram/android/model/Comment;->BROADCAST_EXTRA_USER_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/instagram/android/activity/BaseFragmentActivity$3;->this$0:Lcom/instagram/android/activity/BaseFragmentActivity;

    invoke-virtual {v2}, Lcom/instagram/android/activity/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 57
    return-void
.end method
