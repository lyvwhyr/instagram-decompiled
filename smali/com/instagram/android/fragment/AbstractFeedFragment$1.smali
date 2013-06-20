.class Lcom/instagram/android/fragment/AbstractFeedFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AbstractFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$1;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 84
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$1;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->hasMedia()Z

    move-result v1

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.instagram.android.model.Media.reload_table"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$1;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    #getter for: Lcom/instagram/android/fragment/AbstractFeedFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/instagram/android/fragment/AbstractFeedFragment;->access$000(Lcom/instagram/android/fragment/AbstractFeedFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    iget-object v2, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$1;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    #getter for: Lcom/instagram/android/fragment/AbstractFeedFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/instagram/android/fragment/AbstractFeedFragment;->access$000(Lcom/instagram/android/fragment/AbstractFeedFragment;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    :goto_0
    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->hasMedia()Z

    move-result v0

    .line 106
    iget-object v2, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$1;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/AbstractFeedFragment;->shouldPopFragmentWhenEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$1;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->f()I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$1;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$1;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()V

    .line 116
    :cond_0
    :goto_1
    return-void

    .line 100
    :cond_1
    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$1;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/fragment/AbstractFeedFragment;->mPopBackStackOnResume:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->access$102(Lcom/instagram/android/fragment/AbstractFeedFragment;Z)Z

    goto :goto_1
.end method
