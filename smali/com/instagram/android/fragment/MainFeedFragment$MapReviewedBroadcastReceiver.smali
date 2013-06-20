.class Lcom/instagram/android/fragment/MainFeedFragment$MapReviewedBroadcastReceiver;
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
    .line 198
    iput-object p1, p0, Lcom/instagram/android/fragment/MainFeedFragment$MapReviewedBroadcastReceiver;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    .line 199
    invoke-direct {p0, p2, p3}, Lcom/facebook/b/a/l;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 200
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$MapReviewedBroadcastReceiver;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/MainFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->removeMapReviewMessage()V

    .line 205
    return-void
.end method
