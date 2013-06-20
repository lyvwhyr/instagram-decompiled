.class Lcom/instagram/android/fragment/MainFeedFragment$4;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/MainFeedFragment;

.field final synthetic val$currentMiliseconds:J

.field final synthetic val$epochWhenCalled:J

.field final synthetic val$itemsForMainThread:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/MainFeedFragment;JJLjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/instagram/android/fragment/MainFeedFragment$4;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    iput-wide p2, p0, Lcom/instagram/android/fragment/MainFeedFragment$4;->val$currentMiliseconds:J

    iput-wide p4, p0, Lcom/instagram/android/fragment/MainFeedFragment$4;->val$epochWhenCalled:J

    iput-object p6, p0, Lcom/instagram/android/fragment/MainFeedFragment$4;->val$itemsForMainThread:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 336
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$4;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/instagram/android/fragment/MainFeedFragment;->mLoadingDefaultContent:Z

    .line 337
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$4;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    iget-boolean v0, v0, Lcom/instagram/android/fragment/MainFeedFragment;->mInitialNetworkRequestFinished:Z

    if-nez v0, :cond_0

    .line 338
    const-string v0, "MainFeedFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read cache file BEFORE network request finished. Will dispatch to UI thread in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    iget-wide v4, p0, Lcom/instagram/android/fragment/MainFeedFragment$4;->val$currentMiliseconds:J

    iget-wide v6, p0, Lcom/instagram/android/fragment/MainFeedFragment$4;->val$epochWhenCalled:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$4;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/MainFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/MainFeedFragment$4;->val$itemsForMainThread:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->addMedia(Ljava/util/ArrayList;)V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string v0, "MainFeedFragment"

    const-string v1, "Read cache file AFTER network request finished"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
