.class public Lcom/instagram/android/video/render/FinalRenderController;
.super Lcom/instagram/android/video/gl/RenderController;
.source "FinalRenderController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FinalRenderController"

.field private static final mAudioEncodeQuality:F

.field private static final videoDir:Ljava/io/File;


# instance fields
.field private durations:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioBuffer:Ljava/nio/ByteBuffer;

.field private mAudioExtractor:Landroid/media/MediaExtractor;

.field private final mAudioFilePath:Ljava/lang/String;

.field private mAudioFormat:Landroid/media/MediaFormat;

.field private mCanceled:Z

.field private mContext:Landroid/content/Context;

.field private final mOutputFilePath:Ljava/lang/String;

.field private final mPendingMedia:Lcom/instagram/android/model/PendingMedia;

.field private mRenderedCounter:I

.field private mVideoDecoder:Landroid/media/MediaCodec;

.field private mVideoDecoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mVideoDecoderInputBuffers:[Ljava/nio/ByteBuffer;

.field private mVideoExtractor:Landroid/media/MediaExtractor;

.field private mVideoFormat:Landroid/media/MediaFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/io/File;

    const-string v2, "Instagram"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/instagram/android/video/render/FinalRenderController;->videoDir:Ljava/io/File;

    .line 61
    sget-object v0, Lcom/instagram/android/video/render/FinalRenderController;->videoDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/video/gl/GLRenderContext;Lcom/instagram/android/model/PendingMedia;)V
    .locals 8
    .parameter "context"
    .parameter "thread"
    .parameter "media"

    .prologue
    const/4 v6, 0x0

    .line 65
    invoke-direct {p0, p2}, Lcom/instagram/android/video/gl/RenderController;-><init>(Lcom/instagram/android/video/gl/GLRenderContext;)V

    .line 38
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioBuffer:Ljava/nio/ByteBuffer;

    .line 48
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 50
    iput v6, p0, Lcom/instagram/android/video/render/FinalRenderController;->mRenderedCounter:I

    .line 56
    iput-boolean v6, p0, Lcom/instagram/android/video/render/FinalRenderController;->mCanceled:Z

    .line 67
    new-instance v2, Ljava/io/File;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "music"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 72
    :cond_0
    const-string v0, "FinalRenderController"

    const-string v1, "Rendering file %s using filter %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/instagram/android/model/PendingMedia;->getStitchedVideoFilePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p3}, Lcom/instagram/android/model/PendingMedia;->getFilterType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/facebook/common/i/c;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mContext:Landroid/content/Context;

    .line 79
    iput-object p3, p0, Lcom/instagram/android/video/render/FinalRenderController;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    .line 80
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 81
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 82
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p3}, Lcom/instagram/android/model/PendingMedia;->getStitchedVideoFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p3}, Lcom/instagram/android/model/PendingMedia;->getStitchedVideoFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->durations:Ljava/util/Queue;

    .line 87
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Lcom/instagram/android/model/PendingMedia;->getStitchedVideoFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v0, "-stitched"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 89
    if-gez v0, :cond_1

    .line 90
    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 92
    :cond_1
    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 94
    const-string v1, ""

    .line 95
    const-string v0, ""

    .line 97
    :try_start_0
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/instagram/android/video/render/FinalRenderController;->videoDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".mkv"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 99
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".ogg"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :goto_0
    iput-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mOutputFilePath:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioFilePath:Ljava/lang/String;

    .line 105
    return-void

    .line 100
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private extractAudioStream(Ljava/lang/String;)V
    .locals 12
    .parameter "audioFilePath"

    .prologue
    const-wide/16 v10, 0x2710

    const/4 v2, 0x0

    .line 267
    const-string v0, "FinalRenderController"

    const-string v1, "Extracting Audio Stream"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0}, Lcom/instagram/android/video/render/FinalRenderController;->initAudioDecoder()Landroid/media/MediaCodec;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 272
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 273
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 274
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 276
    invoke-direct {p0, p1}, Lcom/instagram/android/video/render/FinalRenderController;->initAudioEncoder(Ljava/lang/String;)V

    move-object v7, v1

    .line 279
    :goto_0
    invoke-virtual {v0, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 280
    iget-object v3, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    aget-object v4, v8, v1

    invoke-virtual {v3, v4, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 281
    if-gez v3, :cond_1

    .line 282
    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 289
    :goto_1
    invoke-virtual {v0, v9, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 290
    iget v3, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 307
    invoke-static {}, Lcom/instagram/android/video/render/Encoder;->finishEncodingAudio()I

    .line 308
    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 309
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 310
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 312
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 313
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 314
    :goto_2
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioFormat:Landroid/media/MediaFormat;

    .line 316
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 318
    const-string v0, "FinalRenderController"

    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 325
    :cond_0
    const-string v0, "FinalRenderController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extracted Audio Stream to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void

    .line 284
    :cond_1
    iget-object v4, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 286
    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1

    .line 294
    :cond_2
    const/4 v3, -0x3

    if-ne v1, v3, :cond_3

    .line 295
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object v1, v7

    :goto_3
    move-object v7, v1

    .line 305
    goto/16 :goto_0

    .line 296
    :cond_3
    if-ltz v1, :cond_4

    .line 297
    aget-object v3, v7, v1

    .line 298
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 299
    iget v4, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 300
    iget-object v4, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 301
    iget-object v4, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 302
    iget-object v3, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioBuffer:Ljava/nio/ByteBuffer;

    iget v4, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v3, v4}, Lcom/instagram/android/video/render/Encoder;->encodeAudioBuffer(Ljava/nio/ByteBuffer;I)I

    .line 303
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_4
    move-object v1, v7

    goto :goto_3

    .line 322
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioFormat:Landroid/media/MediaFormat;

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method private initAudioDecoder()Landroid/media/MediaCodec;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 329
    .line 330
    const-string v0, "FinalRenderController"

    const-string v3, "initializing audio decoder"

    invoke-static {v0, v3}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 331
    :goto_0
    iget-object v3, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 332
    iget-object v3, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioFormat:Landroid/media/MediaFormat;

    .line 333
    iget-object v3, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 334
    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 335
    const-string v4, "FinalRenderController"

    iget-object v5, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v5}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v4, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 337
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 338
    iget-object v3, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 343
    :goto_1
    return-object v0

    .line 341
    :cond_0
    iput-object v2, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioFormat:Landroid/media/MediaFormat;

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method private initAudioEncoder(Ljava/lang/String;)V
    .locals 4
    .parameter "audioFilePath"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v1, "channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v2, "sample-rate"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/instagram/android/video/render/Encoder;->configureAudioCodec(Ljava/lang/String;IID)I

    move-result v0

    .line 350
    if-eqz v0, :cond_0

    .line 351
    const-string v1, "FinalRenderController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not configure audio codec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    return-void
.end method

.method private initEncoder()V
    .locals 5

    .prologue
    .line 356
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getShortestOriginalSide()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/android/video/render/FinalRenderController;->sizeForFinalRender(I)I

    move-result v0

    .line 357
    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mOutputFilePath:Ljava/lang/String;

    invoke-static {v1, v0, v0}, Lcom/instagram/android/video/render/Encoder;->configureCodec(Ljava/lang/String;II)I

    move-result v1

    .line 358
    const-string v2, "FinalRenderController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Configuring video codec with size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-eqz v1, :cond_0

    .line 360
    const-string v0, "FinalRenderController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not configure codec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    return-void
.end method

.method private initVideoDecoder()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/instagram/android/video/render/FinalRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v0

    sget-object v2, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;->RENDER_CONTINUOUSLY:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    invoke-virtual {v0, v2}, Lcom/instagram/android/video/gl/GLRenderContext;->setRenderMode(Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;)V

    move v0, v1

    .line 229
    :goto_0
    iget-object v2, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoFormat:Landroid/media/MediaFormat;

    .line 231
    iget-object v2, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoFormat:Landroid/media/MediaFormat;

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    iget-object v3, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 234
    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoder:Landroid/media/MediaCodec;

    .line 235
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoFormat:Landroid/media/MediaFormat;

    new-instance v3, Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/instagram/android/video/render/FinalRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/video/gl/GLRenderContext;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v2, v3, v5, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 243
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 245
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoFormat:Landroid/media/MediaFormat;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoFormat:Landroid/media/MediaFormat;

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 247
    const-string v1, "FinalRenderController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using aspect ratio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for final render"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/instagram/android/video/render/FinalRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/video/gl/GLRenderContext;->setAspectRatioRotation(FI)V

    .line 249
    return-void

    .line 239
    :cond_1
    iput-object v5, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoFormat:Landroid/media/MediaFormat;

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static sizeForFinalRender(I)I
    .locals 2
    .parameter "videoSize"

    .prologue
    .line 108
    const/16 v0, 0x1e0

    const/16 v1, 0x280

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private writeAudioPackets(J)V
    .locals 4
    .parameter "maxTime"

    .prologue
    .line 254
    const-string v0, "FinalRenderController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing Audio Packets before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 256
    const-string v0, "FinalRenderController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing audio packet at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 258
    if-gez v0, :cond_1

    .line 264
    :cond_0
    return-void

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/instagram/android/video/render/Encoder;->writeAudioPacket(Ljava/nio/ByteBuffer;IJ)I

    .line 262
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "FinalRenderController"

    const-string v1, "Cancelling final render"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mCanceled:Z

    .line 216
    invoke-virtual {p0}, Lcom/instagram/android/video/render/FinalRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->finish()V

    .line 217
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/instagram/android/video/render/FinalRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->isFinished()Z

    move-result v0

    return v0
.end method

.method public onFinish()V
    .locals 3

    .prologue
    .line 196
    invoke-static {}, Lcom/instagram/android/video/render/Encoder;->finishEncoding()I

    .line 198
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 199
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 200
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 202
    iget-boolean v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 204
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 205
    const-string v0, "FinalRenderController"

    const-string v1, "Render Cancelled"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string v0, "FinalRenderController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rendered to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/render/FinalRenderController;->mOutputFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mOutputFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/PendingMedia;->setVideoFilePath(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mOutputFilePath:Ljava/lang/String;

    const-string v2, "video/x-matroska"

    invoke-static {v0, v1, v2}, Lcom/instagram/android/video/render/MediaScannerUtil;->scanFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public postRender()V
    .locals 6

    .prologue
    .line 181
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->durations:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 183
    iget-object v2, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v2, v3, v0, v1}, Lcom/instagram/android/video/render/Encoder;->encodeFrame(JJ)I

    .line 184
    iget v2, p0, Lcom/instagram/android/video/render/FinalRenderController;->mRenderedCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/instagram/android/video/render/FinalRenderController;->mRenderedCounter:I

    .line 185
    const-string v2, "FinalRenderController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rendered frame number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/instagram/android/video/render/FinalRenderController;->mRenderedCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "us"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public preInit()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "FinalRenderController"

    const-string v1, "Starting Final Render"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/instagram/android/video/render/FinalRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getShortestOriginalSide()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/android/video/render/FinalRenderController;->sizeForFinalRender(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/gl/GLRenderContext;->setTargetSize(I)V

    .line 116
    invoke-virtual {p0}, Lcom/instagram/android/video/render/FinalRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->startDrawingOffscreen()V

    .line 117
    invoke-direct {p0}, Lcom/instagram/android/video/render/FinalRenderController;->initVideoDecoder()V

    .line 118
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mAudioFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/instagram/android/video/render/FinalRenderController;->extractAudioStream(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/instagram/android/video/render/FinalRenderController;->initEncoder()V

    .line 120
    return-void
.end method

.method public preRender()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 130
    if-ltz v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    .line 133
    iget-object v3, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 134
    if-gez v3, :cond_2

    .line 135
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 147
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    move v2, v7

    .line 176
    :goto_1
    return v2

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    .line 140
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 142
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 143
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->durations:Ljava/util/Queue;

    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    sub-long/2addr v3, v8

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 161
    iget-object v1, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 168
    const-wide/16 v3, 0xc

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v3, v4, v1}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_2
    :pswitch_0
    if-ltz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/instagram/android/video/render/FinalRenderController;->mVideoDecoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/video/render/FinalRenderController;->writeAudioPackets(J)V

    goto :goto_1

    .line 169
    :catch_0
    move-exception v1

    goto :goto_2

    .line 153
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public waitUntilRenderFinished()V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/instagram/android/video/render/FinalRenderController;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->waitUntilRenderFinished()V

    .line 225
    return-void
.end method
