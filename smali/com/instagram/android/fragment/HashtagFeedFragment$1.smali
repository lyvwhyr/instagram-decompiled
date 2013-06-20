.class Lcom/instagram/android/fragment/HashtagFeedFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "HashtagFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/HashtagFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/HashtagFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/instagram/android/fragment/HashtagFeedFragment$1;->this$0:Lcom/instagram/android/fragment/HashtagFeedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/fragment/HashtagFeedFragment$1;->this$0:Lcom/instagram/android/fragment/HashtagFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/HashtagFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method
