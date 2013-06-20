.class Lcom/instagram/android/video/fragment/VideoScrubberFragment$2;
.super Ljava/lang/Object;
.source "VideoScrubberFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

.field final synthetic val$frame:J


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/VideoScrubberFragment;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$2;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    iput-wide p2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$2;->val$frame:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$2;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    iget-wide v1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$2;->val$frame:J

    #calls: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->showFrame(J)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$200(Lcom/instagram/android/video/fragment/VideoScrubberFragment;J)V

    .line 199
    return-void
.end method
