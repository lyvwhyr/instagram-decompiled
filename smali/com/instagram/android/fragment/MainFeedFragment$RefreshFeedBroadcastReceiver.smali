.class Lcom/instagram/android/fragment/MainFeedFragment$RefreshFeedBroadcastReceiver;
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
    .line 96
    iput-object p1, p0, Lcom/instagram/android/fragment/MainFeedFragment$RefreshFeedBroadcastReceiver;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    .line 97
    invoke-direct {p0, p2, p3}, Lcom/facebook/b/a/l;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 98
    return-void
.end method

.method private feedIsStale()Z
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$RefreshFeedBroadcastReceiver;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    iget-object v0, v0, Lcom/instagram/android/fragment/MainFeedFragment;->lastUpdatedFeedTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/instagram/android/fragment/MainFeedFragment$RefreshFeedBroadcastReceiver;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    iget-object v2, v2, Lcom/instagram/android/fragment/MainFeedFragment;->lastUpdatedFeedTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 111
    const-string v0, "com.instagram.android.activity.ARGUMENT_REFRESH_FORCE_LOAD"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 113
    invoke-static {}, Lcom/instagram/android/service/PendingMediaService;->takeNewMediaUploaded()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/fragment/MainFeedFragment$RefreshFeedBroadcastReceiver;->feedIsStale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$RefreshFeedBroadcastReceiver;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    const/4 v1, 0x1

    new-instance v2, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;

    iget-object v3, p0, Lcom/instagram/android/fragment/MainFeedFragment$RefreshFeedBroadcastReceiver;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-direct {v2, v3}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/fragment/MainFeedFragment;->constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V

    .line 116
    :cond_1
    return-void
.end method
