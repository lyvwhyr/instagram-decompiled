.class Lcom/instagram/android/video/fragment/VideoScrubberFragment$PendingMediaServiceConnection;
.super Ljava/lang/Object;
.source "VideoScrubberFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$PendingMediaServiceConnection;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Lcom/instagram/android/video/fragment/VideoScrubberFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$PendingMediaServiceConnection;-><init>(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 535
    check-cast p2, Lcom/instagram/android/service/PendingMediaService$ServiceBinder;

    .line 536
    .end local p2
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$PendingMediaServiceConnection;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaServiceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$400(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$PendingMediaServiceConnection;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    invoke-virtual {p2}, Lcom/instagram/android/service/PendingMediaService$ServiceBinder;->getService()Lcom/instagram/android/service/PendingMediaService;

    move-result-object v2

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaService:Lcom/instagram/android/service/PendingMediaService;
    invoke-static {v0, v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$502(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Lcom/instagram/android/service/PendingMediaService;)Lcom/instagram/android/service/PendingMediaService;

    .line 538
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$PendingMediaServiceConnection;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaServiceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$400(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 539
    monitor-exit v1

    .line 540
    return-void

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$PendingMediaServiceConnection;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaServiceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$400(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$PendingMediaServiceConnection;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    const/4 v2, 0x0

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaService:Lcom/instagram/android/service/PendingMediaService;
    invoke-static {v0, v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$502(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Lcom/instagram/android/service/PendingMediaService;)Lcom/instagram/android/service/PendingMediaService;

    .line 546
    monitor-exit v1

    .line 547
    return-void

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
