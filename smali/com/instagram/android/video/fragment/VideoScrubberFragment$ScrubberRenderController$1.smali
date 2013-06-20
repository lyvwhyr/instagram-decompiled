.class Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$1;
.super Ljava/lang/Object;
.source "VideoScrubberFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$1;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x2

    .line 331
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$1;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$1;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v1, v1, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mVideoDurationUS:J
    invoke-static {v1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1100(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)J

    move-result-wide v1

    div-long/2addr v1, v3

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mRequestedFrame:J
    invoke-static {v0, v1, v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1002(Lcom/instagram/android/video/fragment/VideoScrubberFragment;J)J

    .line 332
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$1;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$1;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v1, v1, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mVideoDurationUS:J
    invoke-static {v1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1100(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->showFrame(J)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$200(Lcom/instagram/android/video/fragment/VideoScrubberFragment;J)V

    .line 333
    return-void
.end method
