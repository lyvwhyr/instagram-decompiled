.class Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$4;
.super Ljava/lang/Object;
.source "VideoScrubberFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$4;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iput-object p2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$4;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 468
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$4;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mSquareTextureView:Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1900(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 469
    const-string v1, "VideoScrubberFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Original width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$4;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v1, v1, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mCoverPhotoDimension:I
    invoke-static {v1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$800(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$4;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v2, v2, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mCoverPhotoDimension:I
    invoke-static {v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$800(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 474
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 476
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$4;->this$1:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$4;->val$fileName:Ljava/lang/String;

    #calls: Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->saveAndMediaScanBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v2, v1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->access$2400(Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 477
    return-void
.end method
