.class Lcom/instagram/android/fragment/AbstractFeedFragment$4;
.super Landroid/os/Handler;
.source "AbstractFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$4;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$4;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$4;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->notifyDataSetChanged()V

    .line 192
    :cond_0
    return-void
.end method
