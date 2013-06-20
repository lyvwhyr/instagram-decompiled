.class Lcom/instagram/android/fragment/MainFeedFragment$MainFeedBroadcastReceiver;
.super Lcom/facebook/b/a/l;
.source "MainFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/MainFeedFragment;


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/MainFeedFragment;Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "filter"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/instagram/android/fragment/MainFeedFragment$MainFeedBroadcastReceiver;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    .line 176
    invoke-direct {p0, p2, p3}, Lcom/facebook/b/a/l;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 177
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 183
    const-string v1, "com.instagram.android.PendingMediaStore.INTENT_ACTION_PENDING_MEDIA_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$MainFeedBroadcastReceiver;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    #calls: Lcom/instagram/android/fragment/MainFeedFragment;->syncPendingMedia()V
    invoke-static {v0}, Lcom/instagram/android/fragment/MainFeedFragment;->access$300(Lcom/instagram/android/fragment/MainFeedFragment;)V

    .line 191
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v1, "com.instagram.android.PendingMediaService.BROADCAST_INTENT_CHECKPOINT_REQUIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$MainFeedBroadcastReceiver;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/MainFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "checkpointUrl"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/util/CheckpointUtil;->showCheckpointIfNeeded(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unhandled intent action"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
