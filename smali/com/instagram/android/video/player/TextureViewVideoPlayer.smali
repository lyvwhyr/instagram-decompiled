.class public Lcom/instagram/android/video/player/TextureViewVideoPlayer;
.super Ljava/lang/Object;
.source "TextureViewVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/instagram/android/video/player/VideoPlayer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureViewVideoPlayer"


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Lcom/instagram/android/video/player/VideoPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/instagram/android/video/player/VideoPlayer$OnErrorListener;

.field private mOnPreparedListener:Lcom/instagram/android/video/player/VideoPlayer$OnPreparedListener;

.field private mParent:Landroid/view/ViewGroup;

.field private mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

.field private mSurfaceToRelease:Landroid/graphics/SurfaceTexture;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 56
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 57
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 58
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 59
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 61
    sget-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->IDLE:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 62
    return-void
.end method


# virtual methods
.method public bindView(Landroid/widget/FrameLayout;I)V
    .locals 3
    .parameter "parent"
    .parameter "index"

    .prologue
    const/4 v2, -0x1

    .line 85
    iput-object p1, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mParent:Landroid/view/ViewGroup;

    .line 87
    new-instance v0, Lcom/instagram/android/video/ui/SquareTextureView;

    iget-object v1, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/video/ui/SquareTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mTextureView:Landroid/view/TextureView;

    .line 88
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mTextureView:Landroid/view/TextureView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 91
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 92
    return-void
.end method

.method public canPlay()Z
    .locals 4

    .prologue
    .line 162
    sget-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PREPARED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->STARTED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    sget-object v2, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PAUSED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    sget-object v3, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PLAYBACK_COMPLETED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PAUSED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaybackCompleted()Z
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PLAYBACK_COMPLETED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 225
    sget-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PLAYBACK_COMPLETED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 227
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mOnCompletionListener:Lcom/instagram/android/video/player/VideoPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mOnCompletionListener:Lcom/instagram/android/video/player/VideoPlayer$OnCompletionListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/video/player/VideoPlayer$OnCompletionListener;->onCompletion(Lcom/instagram/android/video/player/VideoPlayer;)V

    .line 230
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 238
    const-string v0, "TextureViewVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mOnErrorListener:Lcom/instagram/android/video/player/VideoPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mOnErrorListener:Lcom/instagram/android/video/player/VideoPlayer$OnErrorListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/video/player/VideoPlayer$OnErrorListener;->onError(Lcom/instagram/android/video/player/VideoPlayer;)Z

    move-result v0

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 253
    const/16 v0, 0x2bc

    if-ne p2, v0, :cond_0

    .line 254
    const-string v0, "TextureViewVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer Info: LAGGING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 256
    :cond_0
    const-string v0, "TextureViewVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 212
    sget-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PREPARED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 214
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mOnPreparedListener:Lcom/instagram/android/video/player/VideoPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mOnPreparedListener:Lcom/instagram/android/video/player/VideoPlayer$OnPreparedListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/video/player/VideoPlayer$OnPreparedListener;->onPrepared(Lcom/instagram/android/video/player/VideoPlayer;)V

    .line 217
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 267
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 268
    iget-object v1, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 269
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter "surface"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mSurfaceToRelease:Landroid/graphics/SurfaceTexture;

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 273
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 284
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->STARTED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PAUSED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    if-ne v0, v1, :cond_1

    .line 140
    :cond_0
    sget-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PAUSED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 141
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 143
    :cond_1
    return-void
.end method

.method public play()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const-string v0, "TextureViewVideoPlayer"

    const-string v1, "The 0-height texture view bug happened"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PREPARED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->STARTED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PAUSED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PLAYBACK_COMPLETED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    if-ne v0, v1, :cond_2

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 131
    sget-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->STARTED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 135
    return-void

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoPlayer cannot play in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 189
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mSurfaceToRelease:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mSurfaceToRelease:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 191
    iput-object v1, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mSurfaceToRelease:Landroid/graphics/SurfaceTexture;

    .line 194
    :cond_0
    iput-object v1, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 195
    sget-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->END:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 196
    return-void
.end method

.method public removeView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 202
    iput-object v2, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mParent:Landroid/view/ViewGroup;

    .line 203
    iput-object v2, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mTextureView:Landroid/view/TextureView;

    .line 204
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->IDLE:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    if-eq v0, v1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 174
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 176
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mSurfaceToRelease:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mSurfaceToRelease:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 178
    iput-object v2, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mSurfaceToRelease:Landroid/graphics/SurfaceTexture;

    .line 181
    :cond_0
    sget-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->IDLE:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 183
    :cond_1
    return-void
.end method

.method public setFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->IDLE:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    if-eq v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 113
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 115
    sget-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PREPARING:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 116
    return-void
.end method

.method public setOnCompletionListener(Lcom/instagram/android/video/player/VideoPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mOnCompletionListener:Lcom/instagram/android/video/player/VideoPlayer$OnCompletionListener;

    .line 81
    return-void
.end method

.method public setOnErrorListener(Lcom/instagram/android/video/player/VideoPlayer$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mOnErrorListener:Lcom/instagram/android/video/player/VideoPlayer$OnErrorListener;

    .line 76
    return-void
.end method

.method public setOnPreparedListener(Lcom/instagram/android/video/player/VideoPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mOnPreparedListener:Lcom/instagram/android/video/player/VideoPlayer$OnPreparedListener;

    .line 71
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->IDLE:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    if-eq v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 103
    sget-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PREPARING:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;->mState:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 104
    return-void
.end method
