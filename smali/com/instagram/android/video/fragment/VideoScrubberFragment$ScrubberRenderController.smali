.class public Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;
.super Lcom/instagram/android/video/gl/RenderController;
.source "VideoScrubberFragment.java"


# instance fields
.field private mSavePosterFrameRequest:Z

.field private mSavingPosterFrame:Z

.field final synthetic this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;


# direct methods
.method public constructor <init>(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Lcom/instagram/android/video/gl/GLRenderContext;)V
    .locals 1
    .parameter
    .parameter "thread"

    .prologue
    const/4 v0, 0x0

    .line 293
    iput-object p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    .line 294
    invoke-direct {p0, p2}, Lcom/instagram/android/video/gl/RenderController;-><init>(Lcom/instagram/android/video/gl/GLRenderContext;)V

    .line 290
    iput-boolean v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->mSavePosterFrameRequest:Z

    .line 291
    iput-boolean v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->mSavingPosterFrame:Z

    .line 295
    return-void
.end method

.method static synthetic access$2400(Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 288
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->saveAndMediaScanBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->requestRender()V

    return-void
.end method

.method private prepareCodec()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 406
    const-string v0, "VideoScrubberFragment"

    const-string v2, "Preparing codec"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;
    invoke-static {v0, v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2002(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;

    .line 408
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2000(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaExtractor;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    invoke-virtual {v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getPendingMedia()Lcom/instagram/android/model/PendingMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/model/PendingMedia;->getStitchedVideoFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    move v0, v1

    .line 410
    :goto_0
    iget-object v2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;
    invoke-static {v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2000(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaExtractor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 411
    iget-object v2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    iget-object v3, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;
    invoke-static {v3}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2000(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaExtractor;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mFormat:Landroid/media/MediaFormat;
    invoke-static {v2, v3}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$702(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    .line 412
    iget-object v2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mFormat:Landroid/media/MediaFormat;
    invoke-static {v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$700(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 413
    iget-object v3, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    iget-object v4, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mFormat:Landroid/media/MediaFormat;
    invoke-static {v4}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$700(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaFormat;

    move-result-object v4

    const-string v5, "durationUs"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mVideoDurationUS:J
    invoke-static {v3, v4, v5}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1102(Lcom/instagram/android/video/fragment/VideoScrubberFragment;J)J

    .line 414
    const-string v3, "VideoScrubberFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total length is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mVideoDurationUS:J
    invoke-static {v5}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1100(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 416
    const-string v3, "VideoScrubberFragment"

    const-string v4, "Video track found"

    invoke-static {v3, v4}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v3, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;
    invoke-static {v3}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2000(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaExtractor;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 418
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v0, v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2102(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2100(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaCodec;

    move-result-object v0

    if-nez v0, :cond_2

    .line 425
    const-string v0, "VideoScrubberFragment"

    const-string v2, "Could not acquire decoder."

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2000(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 427
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;
    invoke-static {v0, v7}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2002(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;

    .line 438
    :goto_1
    return v1

    .line 421
    :cond_1
    iget-object v2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mFormat:Landroid/media/MediaFormat;
    invoke-static {v2, v7}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$702(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2100(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaCodec;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mFormat:Landroid/media/MediaFormat;
    invoke-static {v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$700(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaFormat;

    move-result-object v2

    new-instance v3, Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/video/gl/GLRenderContext;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v2, v3, v7, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 433
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 436
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2100(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 437
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2100(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoderInputBuffers:[Ljava/nio/ByteBuffer;
    invoke-static {v0, v1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2202(Lcom/instagram/android/video/fragment/VideoScrubberFragment;[Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    .line 438
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private releaseResources()V
    .locals 3

    .prologue
    .line 442
    const-string v0, "VideoScrubberFragment"

    const-string v1, "Releasing Resources"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPrepareLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2300(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    const/4 v2, 0x0

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPrepared:Z
    invoke-static {v0, v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$902(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Z)Z

    .line 446
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2100(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2100(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 448
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2100(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 449
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    const/4 v2, 0x0

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v0, v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2102(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2000(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaExtractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2000(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 453
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    const/4 v2, 0x0

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;
    invoke-static {v0, v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$2002(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;

    .line 455
    :cond_1
    monitor-exit v1

    .line 456
    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private requestRender()V
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->requestRender()V

    .line 403
    return-void
.end method

.method private saveAndMediaScanBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "fileName"
    .parameter "bitmap"

    .prologue
    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    invoke-virtual {v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/video/util/VideoFileUtil;->getCoversPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 488
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {p2, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 490
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 491
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    invoke-virtual {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getPendingMedia()Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/android/model/PendingMedia;->setImageFilePath(Ljava/lang/String;)V

    .line 492
    const-string v0, "VideoScrubberFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cover photo path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 494
    const-string v1, "VideoScrubberFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private savePosterFrame(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1500(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$4;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$4;-><init>(Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->releaseResources()V

    .line 341
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mForwardProgress:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1300(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1500(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$2;-><init>(Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 351
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->releaseResources()V

    .line 393
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->prepareCodec()Z

    .line 398
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPrepared:Z
    invoke-static {v0, v1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$902(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Z)Z

    .line 399
    return-void
.end method

.method public postRender()V
    .locals 4

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->mSavingPosterFrame:Z

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    invoke-virtual {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getPendingMedia()Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    .line 373
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getStitchedVideoFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-direct {p0, v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->savePosterFrame(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->finish()V

    .line 388
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1500(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$3;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$3;-><init>(Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public preInit()V
    .locals 5

    .prologue
    .line 299
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaServiceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$400(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 300
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaService:Lcom/instagram/android/service/PendingMediaService;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$500(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Lcom/instagram/android/service/PendingMediaService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    .line 302
    :try_start_1
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaServiceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$400(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    goto :goto_0

    .line 307
    :cond_0
    :try_start_2
    const-string v0, "VideoScrubberFragment"

    const-string v2, "Cancelling old renders"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaService:Lcom/instagram/android/service/PendingMediaService;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$500(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Lcom/instagram/android/service/PendingMediaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaService;->cancelRender()V

    .line 309
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaService:Lcom/instagram/android/service/PendingMediaService;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$500(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Lcom/instagram/android/service/PendingMediaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaService;->waitUntilRenderFinished()V

    .line 310
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    const-wide/16 v2, -0x1

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPreviousFrame:J
    invoke-static {v0, v2, v3}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$602(Lcom/instagram/android/video/fragment/VideoScrubberFragment;J)J

    .line 311
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->prepareCodec()Z

    .line 315
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mFormat:Landroid/media/MediaFormat;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$700(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 316
    iget-object v1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mFormat:Landroid/media/MediaFormat;
    invoke-static {v1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$700(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 317
    iget-object v2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x280

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mCoverPhotoDimension:I
    invoke-static {v2, v3}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$802(Lcom/instagram/android/video/fragment/VideoScrubberFragment;I)I

    .line 318
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 319
    const-string v1, "VideoScrubberFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scrubber aspect ratio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    invoke-virtual {v1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getPendingMedia()Lcom/instagram/android/model/PendingMedia;

    move-result-object v1

    .line 322
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v2

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getFilterType()I

    move-result v3

    invoke-static {v3}, Lcom/instagram/android/creation/widget/FilterTileUtil;->getVideoFilterById(I)Lcom/instagram/android/video/filters/VideoFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/android/video/gl/GLRenderContext;->setFilter(Lcom/instagram/android/video/filters/VideoFilter;)V

    .line 323
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v2

    sget-object v3, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;->RENDER_WHEN_DIRTY:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    invoke-virtual {v2, v3}, Lcom/instagram/android/video/gl/GLRenderContext;->setRenderMode(Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;)V

    .line 324
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v2

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getOrientation()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/instagram/android/video/gl/GLRenderContext;->setAspectRatioRotation(FI)V

    .line 326
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPrepared:Z
    invoke-static {v0, v1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$902(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Z)Z

    .line 328
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1200(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController$1;-><init>(Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 335
    return-void

    .line 311
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public preRender()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 356
    iget-object v1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #setter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mRenderedFirstFrame:Z
    invoke-static {v1, v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$1602(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Z)Z

    .line 357
    iget-boolean v1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->mSavingPosterFrame:Z

    if-eqz v1, :cond_0

    .line 366
    :goto_0
    return v0

    .line 360
    :cond_0
    iget-boolean v1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->mSavePosterFrameRequest:Z

    if-eqz v1, :cond_1

    .line 361
    const-string v1, "VideoScrubberFragment"

    const-string v2, "Saving!"

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iput-boolean v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->mSavingPosterFrame:Z

    .line 363
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mCoverPhotoDimension:I
    invoke-static {v1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$800(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/gl/GLRenderContext;->setTargetSize(I)V

    .line 364
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->startDrawingOffscreen()V

    .line 366
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public savePosterFrameAndFinish()V
    .locals 2

    .prologue
    .line 459
    const-string v0, "VideoScrubberFragment"

    const-string v1, "Saving Poster Frame"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;->RENDER_CONTINUOUSLY:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/gl/GLRenderContext;->setRenderMode(Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;)V

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->mSavePosterFrameRequest:Z

    .line 462
    return-void
.end method
