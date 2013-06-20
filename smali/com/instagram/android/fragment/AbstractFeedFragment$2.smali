.class Lcom/instagram/android/fragment/AbstractFeedFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "AbstractFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$2;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    const-string v1, "com.instagram.android.service.action_bar_clicked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$2;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->scrollToTop()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v1, "com.instagram.android.service.action_bar_refresh_clicked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$2;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    const-string v0, "AbstractFeedFragment"

    const-string v1, "Is loading already set, not performing request"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$2;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    const/4 v1, 0x1

    new-instance v2, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;

    iget-object v3, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$2;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-direct {v2, v3}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/fragment/AbstractFeedFragment;->constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V

    goto :goto_0
.end method
