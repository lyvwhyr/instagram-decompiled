.class public Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;
.super Ljava/lang/Object;
.source "SurfaceViewVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/instagram/android/video/player/VideoPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceViewVideoPlayer"


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Lcom/instagram/android/video/player/VideoPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/instagram/android/video/player/VideoPlayer$OnErrorListener;

.field private mOnPreparedListener:Lcom/instagram/android/video/player/VideoPlayer$OnPreparedListener;

.field private mParent:Landroid/view/ViewGroup;

.field private mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

.field private mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 53
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 54
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 55
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 57
    sget-object v0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->IDLE:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    .line 58
    return-void
.end method


# virtual methods
.method public bindView(Landroid/widget/FrameLayout;I)V
    .locals 3
    .parameter "parent"
    .parameter "index"

    .prologue
    const/4 v2, -0x1

    .line 81
    iput-object p1, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mParent:Landroid/view/ViewGroup;

    .line 83
    new-instance v0, Lcom/instagram/android/video/ui/SquareSurfaceView;

    iget-object v1, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/video/ui/SquareSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 84
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 87
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 88
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 89
    return-void
.end method

.method public canPlay()Z
    .locals 4

    .prologue
    .line 153
    sget-object v0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->PREPARED:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->STARTED:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    sget-object v2, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->PAUSED:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    sget-object v3, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->PLAYBACK_COMPLETED:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->PAUSED:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

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
    .line 148
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->PLAYBACK_COMPLETED:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

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
    .line 138
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 205
    sget-object v0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->PLAYBACK_COMPLETED:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    .line 207
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mOnCompletionListener:Lcom/instagram/android/video/player/VideoPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mOnCompletionListener:Lcom/instagram/android/video/player/VideoPlayer$OnCompletionListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/video/player/VideoPlayer$OnCompletionListener;->onCompletion(Lcom/instagram/android/video/player/VideoPlayer;)V

    .line 210
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 218
    const-string v0, "SurfaceViewVideoPlayer"

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

    .line 220
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mOnErrorListener:Lcom/instagram/android/video/player/VideoPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mOnErrorListener:Lcom/instagram/android/video/player/VideoPlayer$OnErrorListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/video/player/VideoPlayer$OnErrorListener;->onError(Lcom/instagram/android/video/player/VideoPlayer;)Z

    move-result v0

    .line 224
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
    .line 233
    const/16 v0, 0x2bc

    if-ne p2, v0, :cond_0

    .line 234
    const-string v0, "SurfaceViewVideoPlayer"

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

    .line 238
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 236
    :cond_0
    const-string v0, "SurfaceViewVideoPlayer"

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
    .line 192
    sget-object v0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->PREPARED:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    .line 194
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mOnPreparedListener:Lcom/instagram/android/video/player/VideoPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mOnPreparedListener:Lcom/instagram/android/video/player/VideoPlayer$OnPreparedListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/video/player/VideoPlayer$OnPreparedListener;->onPrepared(Lcom/instagram/android/video/player/VideoPlayer;)V

    .line 197
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->STARTED:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->PAUSED:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    if-ne v0, v1, :cond_1

    .line 131
    :cond_0
    sget-object v0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->PAUSED:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    .line 132
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 134
    :cond_1
    return-void
.end method

.method public play()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->PREPARED:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->STARTED:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->PAUSED:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->PLAYBACK_COMPLETED:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    if-ne v0, v1, :cond_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 122
    sget-object v0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->STARTED:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    .line 126
    return-void

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoPlayer cannot play in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 175
    sget-object v0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->END:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    .line 176
    return-void
.end method

.method public removeView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 182
    iput-object v2, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mParent:Landroid/view/ViewGroup;

    .line 183
    iput-object v2, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 184
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->IDLE:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    if-eq v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 165
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 167
    sget-object v0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->IDLE:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    .line 169
    :cond_0
    return-void
.end method

.method public setFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->IDLE:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    if-eq v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 110
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 112
    sget-object v0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->PREPARING:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    .line 113
    return-void
.end method

.method public setOnCompletionListener(Lcom/instagram/android/video/player/VideoPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mOnCompletionListener:Lcom/instagram/android/video/player/VideoPlayer$OnCompletionListener;

    .line 77
    return-void
.end method

.method public setOnErrorListener(Lcom/instagram/android/video/player/VideoPlayer$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mOnErrorListener:Lcom/instagram/android/video/player/VideoPlayer$OnErrorListener;

    .line 72
    return-void
.end method

.method public setOnPreparedListener(Lcom/instagram/android/video/player/VideoPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mOnPreparedListener:Lcom/instagram/android/video/player/VideoPlayer$OnPreparedListener;

    .line 67
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->IDLE:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    if-eq v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 100
    sget-object v0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;->PREPARING:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    iput-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mState:Lcom/instagram/android/video/player/SurfaceViewVideoPlayer$State;

    .line 101
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 248
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 252
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 256
    return-void
.end method
