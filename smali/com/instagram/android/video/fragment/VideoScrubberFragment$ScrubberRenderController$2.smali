.class Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$2;
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
    .line 342
    iput-object p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$2;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$2;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mForwardProgress:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1300(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->dismiss()V

    .line 346
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$2;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mForwardProgress:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0, v1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1302(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Lcom/instagram/android/widget/IgProgressDialog;)Lcom/instagram/android/widget/IgProgressDialog;

    .line 347
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$2;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #calls: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->startMetadataFragment()V
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1400(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)V

    .line 348
    return-void
.end method
