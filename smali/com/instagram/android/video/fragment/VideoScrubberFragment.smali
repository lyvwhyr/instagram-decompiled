.class public Lcom/instagram/android/video/fragment/VideoScrubberFragment;
.super Lcom/instagram/android/video/fragment/VideoFragment;
.source "VideoScrubberFragment.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final INNER_THUMB_IMAGE_SIZE_DP:I = 0x2d

.field private static final MSG_HIDE_PROGRESS_BAR:I = 0x5

.field public static final TAG:Ljava/lang/String; = "VideoScrubberFragment"


# instance fields
.field private info:Landroid/media/MediaCodec$BufferInfo;

.field private mCoverPhotoDimension:I

.field private volatile mDecoder:Landroid/media/MediaCodec;

.field private volatile mDecoderInputBuffers:[Ljava/nio/ByteBuffer;

.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private volatile mExtractor:Landroid/media/MediaExtractor;

.field private volatile mFormat:Landroid/media/MediaFormat;

.field private mForwardProgress:Lcom/instagram/android/widget/IgProgressDialog;

.field private mInnerThumbImageSize:I

.field private mMainHandler:Landroid/os/Handler;

.field private volatile mPendingMediaService:Lcom/instagram/android/service/PendingMediaService;

.field private mPendingMediaServiceConnection:Lcom/instagram/android/video/fragment/VideoScrubberFragment$PendingMediaServiceConnection;

.field private final mPendingMediaServiceLock:Ljava/lang/Object;

.field private final mPrepareLock:Ljava/lang/Object;

.field private mPrepared:Z

.field private volatile mPreviousFrame:J

.field private mProgressBar:Landroid/view/View;

.field private mRenderOnNextFrame:Z

.field private mRenderedFirstFrame:Z

.field private volatile mRequestedFrame:J

.field public mScrubberRenderController:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

.field private mSquareTextureView:Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;

.field private mThumb:Lcom/instagram/android/video/widget/IgScrubberThumb;

.field private mVideoDurationUS:J


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 52
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/VideoFragment;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 71
    iput-wide v3, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mRequestedFrame:J

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPreviousFrame:J

    .line 80
    iput-boolean v7, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mRenderedFirstFrame:Z

    .line 81
    iput-boolean v7, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mRenderOnNextFrame:Z

    .line 82
    iput-boolean v7, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPrepared:Z

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPrepareLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaServiceLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/video/fragment/VideoScrubberFragment$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$1;-><init>(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mMainHandler:Landroid/os/Handler;

    .line 531
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mProgressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/instagram/android/video/fragment/VideoScrubberFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mRequestedFrame:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mVideoDurationUS:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/instagram/android/video/fragment/VideoScrubberFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mVideoDurationUS:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Lcom/instagram/android/widget/IgProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mForwardProgress:Lcom/instagram/android/widget/IgProgressDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Lcom/instagram/android/widget/IgProgressDialog;)Lcom/instagram/android/widget/IgProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mForwardProgress:Lcom/instagram/android/widget/IgProgressDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->startMetadataFragment()V

    return-void
.end method

.method static synthetic access$1500(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mRenderedFirstFrame:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Lcom/instagram/android/video/widget/IgScrubberThumb;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mThumb:Lcom/instagram/android/video/widget/IgScrubberThumb;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mInnerThumbImageSize:I

    return v0
.end method

.method static synthetic access$1900(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mSquareTextureView:Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/video/fragment/VideoScrubberFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->showFrame(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaExtractor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaCodec;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/instagram/android/video/fragment/VideoScrubberFragment;[Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPrepareLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaServiceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Lcom/instagram/android/service/PendingMediaService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaService:Lcom/instagram/android/service/PendingMediaService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Lcom/instagram/android/service/PendingMediaService;)Lcom/instagram/android/service/PendingMediaService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaService:Lcom/instagram/android/service/PendingMediaService;

    return-object p1
.end method

.method static synthetic access$602(Lcom/instagram/android/video/fragment/VideoScrubberFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPreviousFrame:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/media/MediaFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method static synthetic access$702(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mFormat:Landroid/media/MediaFormat;

    return-object p1
.end method

.method static synthetic access$800(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mCoverPhotoDimension:I

    return v0
.end method

.method static synthetic access$802(Lcom/instagram/android/video/fragment/VideoScrubberFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mCoverPhotoDimension:I

    return p1
.end method

.method static synthetic access$902(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPrepared:Z

    return p1
.end method

.method private showFrame(J)V
    .locals 2
    .parameter "requestedFrame"

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPreviousFrame:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->displayThumbnailInSurfaceTexture(J)V

    .line 159
    iput-wide p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPreviousFrame:J

    .line 160
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    :cond_0
    return-void
.end method

.method private startMetadataFragment()V
    .locals 4

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getPendingMedia()Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    .line 503
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/android/service/PendingMediaService;->uploadVideo(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V

    .line 505
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 506
    const-string v2, "com.instagram.android.MetadataFragment.INTENT_EXTRA_PENDING_MEDIA_ID"

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-direct {v2}, Lcom/instagram/android/creation/fragment/MetadataFragment;-><init>()V

    const-string v3, "METADATA_FRAGMENT"

    invoke-static {v0, v2, v3, v1}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 509
    return-void
.end method


# virtual methods
.method public displayThumbnailInSurfaceTexture(J)V
    .locals 18
    .parameter "targetFrame"

    .prologue
    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 216
    const/4 v9, 0x1

    .line 217
    const/4 v14, 0x0

    .line 218
    const-wide/16 v10, -0x1

    .line 221
    :goto_0
    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mRequestedFrame:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPrepareLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 223
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPrepared:Z

    if-nez v2, :cond_1

    .line 224
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 275
    const-string v4, "VideoScrubberFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long/2addr v2, v15

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms to decode and render frame"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_1
    return-void

    .line 226
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 227
    if-ltz v3, :cond_9

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v2, :cond_2

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 231
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v2, :cond_3

    .line 232
    monitor-exit v17

    goto :goto_1

    .line 272
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 234
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 235
    if-gez v5, :cond_4

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 245
    const/4 v2, 0x1

    move-wide v3, v10

    move v5, v2

    .line 258
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->info:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v7, 0x2710

    invoke-virtual {v2, v6, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    .line 259
    const/4 v2, -0x3

    if-ne v6, v2, :cond_5

    move v2, v9

    .line 272
    :goto_3
    monitor-exit v17

    move-wide v10, v3

    move v14, v5

    move v9, v2

    goto/16 :goto_0

    .line 247
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    .line 252
    if-nez v14, :cond_9

    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_9

    move-wide v3, v12

    move v5, v14

    .line 253
    goto :goto_2

    .line 260
    :cond_5
    if-ltz v6, :cond_8

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v7, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v7, p1

    if-gez v2, :cond_6

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v7, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v7, v3

    if-ltz v2, :cond_7

    :cond_6
    const/4 v2, 0x1

    .line 265
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v7, v6, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 266
    if-eqz v2, :cond_8

    .line 267
    const-string v2, "VideoScrubberFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but displaying: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v7, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 263
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    move v2, v9

    goto/16 :goto_3

    :cond_9
    move-wide v3, v10

    move v5, v14

    goto/16 :goto_2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget v0, Lcom/facebook/k;->video_cover_screen_title:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackButtonPressed(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 148
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "bundle"

    .prologue
    .line 108
    sget v0, Lcom/facebook/h;->fragment_videoscrubber:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 514
    invoke-super {p0}, Lcom/instagram/android/video/fragment/VideoFragment;->onDestroy()V

    .line 516
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 517
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 518
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 523
    invoke-super {p0}, Lcom/instagram/android/video/fragment/VideoFragment;->onDestroyView()V

    .line 525
    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mThumb:Lcom/instagram/android/video/widget/IgScrubberThumb;

    .line 526
    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mProgressBar:Landroid/view/View;

    .line 527
    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mSquareTextureView:Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;

    .line 528
    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 529
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "surfaceTexture"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mScrubberRenderController:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mScrubberRenderController:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    #calls: Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->requestRender()V
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->access$300(Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;)V

    .line 283
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mRenderOnNextFrame:Z

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mScrubberRenderController:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    invoke-virtual {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->savePosterFrameAndFinish()V

    .line 286
    :cond_1
    return-void
.end method

.method public onNextButtonPressed(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mScrubberRenderController:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->scrubber_seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 135
    sget v0, Lcom/facebook/k;->processing:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/instagram/android/widget/IgProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mForwardProgress:Lcom/instagram/android/widget/IgProgressDialog;

    .line 137
    iget-boolean v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mRenderedFirstFrame:Z

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mScrubberRenderController:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    invoke-virtual {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;->savePosterFrameAndFinish()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mRenderOnNextFrame:Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-super {p0}, Lcom/instagram/android/video/fragment/VideoFragment;->onPause()V

    .line 169
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaServiceConnection:Lcom/instagram/android/video/fragment/VideoScrubberFragment$PendingMediaServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 170
    iput-object v2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaServiceConnection:Lcom/instagram/android/video/fragment/VideoScrubberFragment$PendingMediaServiceConnection;

    .line 171
    iget-object v1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaService:Lcom/instagram/android/service/PendingMediaService;

    .line 173
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mSquareTextureView:Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;

    invoke-virtual {v0}, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->pauseRender()V

    .line 175
    return-void

    .line 173
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 190
    if-eqz p3, :cond_0

    .line 191
    iget-wide v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mVideoDurationUS:J

    int-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mRequestedFrame:J

    .line 192
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mProgressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-wide v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mRequestedFrame:J

    .line 194
    iget-object v2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 195
    iget-object v2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/video/fragment/VideoScrubberFragment$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$2;-><init>(Lcom/instagram/android/video/fragment/VideoScrubberFragment;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 179
    invoke-super {p0}, Lcom/instagram/android/video/fragment/VideoFragment;->onResume()V

    .line 180
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mSquareTextureView:Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;

    invoke-virtual {v0}, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->resumeRender()V

    .line 181
    new-instance v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$PendingMediaServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$PendingMediaServiceConnection;-><init>(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Lcom/instagram/android/video/fragment/VideoScrubberFragment$1;)V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaServiceConnection:Lcom/instagram/android/video/fragment/VideoScrubberFragment$PendingMediaServiceConnection;

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/instagram/android/service/PendingMediaService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mPendingMediaServiceConnection:Lcom/instagram/android/video/fragment/VideoScrubberFragment$PendingMediaServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 184
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 185
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 186
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 207
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 212
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lcom/instagram/android/video/fragment/VideoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 115
    sget v0, Lcom/facebook/g;->scrubber_preview_texture:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;

    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mSquareTextureView:Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;

    .line 117
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mSquareTextureView:Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;

    invoke-virtual {v0, p0}, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->setScrubberFragment(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)V

    .line 119
    sget v0, Lcom/facebook/g;->scrubber_progressbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mProgressBar:Landroid/view/View;

    .line 121
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/instagram/util/ViewUtil;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mInnerThumbImageSize:I

    .line 122
    new-instance v0, Lcom/instagram/android/video/widget/IgScrubberThumb;

    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/f;->cover_handle:I

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/video/widget/IgScrubberThumb;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mThumb:Lcom/instagram/android/video/widget/IgScrubberThumb;

    .line 125
    sget v0, Lcom/facebook/g;->scrubber_seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 126
    iget-object v1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mThumb:Lcom/instagram/android/video/widget/IgScrubberThumb;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 128
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 129
    return-void
.end method
