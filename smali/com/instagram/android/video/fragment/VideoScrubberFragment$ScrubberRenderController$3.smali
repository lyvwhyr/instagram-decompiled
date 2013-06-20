.class Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$3;
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
    .line 378
    iput-object p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$3;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 381
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$3;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mThumb:Lcom/instagram/android/video/widget/IgScrubberThumb;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1700(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Lcom/instagram/android/video/widget/IgScrubberThumb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$3;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mThumb:Lcom/instagram/android/video/widget/IgScrubberThumb;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1700(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Lcom/instagram/android/video/widget/IgScrubberThumb;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$3;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v1, v1, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mSquareTextureView:Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;
    invoke-static {v1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1900(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$3;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v2, v2, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mInnerThumbImageSize:I
    invoke-static {v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1800(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$3;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v3, v3, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mInnerThumbImageSize:I
    invoke-static {v3}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1800(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/widget/IgScrubberThumb;->setInnerBitmap(Landroid/graphics/Bitmap;)V

    .line 385
    :cond_0
    return-void
.end method
