.class Lcom/instagram/android/activity/BaseFragmentActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "BaseFragmentActivity.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/BaseFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/instagram/android/activity/BaseFragmentActivity$4;->this$0:Lcom/instagram/android/activity/BaseFragmentActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/android/activity/BaseFragmentActivity$4;->this$0:Lcom/instagram/android/activity/BaseFragmentActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/model/Comment;->BROADCAST_HASH_TAG_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/activity/BaseFragmentActivity$4;->this$0:Lcom/instagram/android/activity/BaseFragmentActivity;

    invoke-virtual {v2}, Lcom/instagram/android/activity/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/fragment/HashtagFeedFragment;->startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/support/v4/app/p;)V

    .line 69
    return-void
.end method
