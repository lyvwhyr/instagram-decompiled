.class public Lcom/instagram/android/video/ui/LivePreviewTextureView;
.super Lcom/instagram/android/video/widget/IgTextureView;
.source "LivePreviewTextureView.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LivePreviewTextureView"


# instance fields
.field private mCurrentPlayer:I

.field private mMediaCompleted:Z

.field private mMediaPaused:Z

.field private mMediaPlayers:[Landroid/media/MediaPlayer;

.field private mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

.field private mOrientation:I

.field private mPaths:[Ljava/lang/String;

.field private mPlayButton:Landroid/view/View;

.field private mPlayButtonFadeInAnimation:Landroid/view/animation/Animation;

.field private mPlayButtonFadeOutAnimation:Landroid/view/animation/Animation;

.field private mPrepared:Z

.field private mShouldAdvanceSurfaceTexture:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/instagram/android/video/widget/IgTextureView;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mShouldAdvanceSurfaceTexture:Z

    .line 43
    iput v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I

    .line 44
    iput v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOrientation:I

    .line 45
    iput-boolean v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPrepared:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/video/widget/IgTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-boolean v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mShouldAdvanceSurfaceTexture:Z

    .line 43
    iput v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I

    .line 44
    iput v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOrientation:I

    .line 45
    iput-boolean v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPrepared:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/video/widget/IgTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-boolean v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mShouldAdvanceSurfaceTexture:Z

    .line 43
    iput v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I

    .line 44
    iput v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOrientation:I

    .line 45
    iput-boolean v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPrepared:Z

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/video/ui/LivePreviewTextureView;)[Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/instagram/android/video/ui/LivePreviewTextureView;[Landroid/media/MediaPlayer;)[Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/instagram/android/video/ui/LivePreviewTextureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOrientation:I

    return v0
.end method

.method static synthetic access$200(Lcom/instagram/android/video/ui/LivePreviewTextureView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->showPlayButton()V

    return-void
.end method

.method static synthetic access$302(Lcom/instagram/android/video/ui/LivePreviewTextureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaCompleted:Z

    return p1
.end method

.method static synthetic access$402(Lcom/instagram/android/video/ui/LivePreviewTextureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I

    return p1
.end method

.method static synthetic access$502(Lcom/instagram/android/video/ui/LivePreviewTextureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPrepared:Z

    return p1
.end method

.method private hidePlayButton()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPlayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 273
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPlayButton:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPlayButtonFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 274
    return-void
.end method

.method private resetPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 204
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->resetSurfaceTexture()V

    .line 205
    iput v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I

    .line 206
    return-void
.end method

.method private showPlayButton()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPlayButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPlayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 279
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPlayButton:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPlayButtonFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 281
    :cond_0
    return-void
.end method

.method private startRenderer()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    const-string v0, "LivePreviewTextureView"

    const-string v1, "Video path not set."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-virtual {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/video/gl/GLRenderContext;->setSurface(Landroid/graphics/SurfaceTexture;I)V

    .line 95
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    new-instance v1, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;

    iget-object v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-direct {v1, p0, v2}, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;-><init>(Lcom/instagram/android/video/ui/LivePreviewTextureView;Lcom/instagram/android/video/gl/GLRenderContext;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/gl/GLRenderContext;->setController(Lcom/instagram/android/video/gl/RenderController;)V

    .line 171
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected init()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lcom/instagram/android/video/gl/GLRenderContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/video/gl/GLRenderContext;-><init>(Landroid/graphics/SurfaceTexture;I)V

    iput-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaCompleted:Z

    .line 64
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 285
    const-string v0, "LivePreviewTextureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion called for player"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I

    .line 288
    iget v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I

    iget-object v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 300
    :goto_0
    iput-boolean v4, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mShouldAdvanceSurfaceTexture:Z

    .line 301
    return-void

    .line 291
    :cond_0
    iput v3, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I

    .line 292
    invoke-direct {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->showPlayButton()V

    .line 294
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;

    array-length v0, v0

    if-ne v0, v4, :cond_1

    .line 295
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 297
    :cond_1
    iput-boolean v4, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaCompleted:Z

    goto :goto_0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "surfaceTexture"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-virtual {v0, p1}, Lcom/instagram/android/video/gl/GLRenderContext;->isCurrentInputTexture(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->requestRender()V

    .line 311
    :cond_2
    iget-boolean v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mShouldAdvanceSurfaceTexture:Z

    if-eqz v0, :cond_0

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mShouldAdvanceSurfaceTexture:Z

    .line 313
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->advanceSurfaceTexture()V

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 210
    const-string v0, "LivePreviewTextureView"

    const-string v1, "Surface Texture Available"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->startRenderer()V

    .line 214
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .parameter "surface"

    .prologue
    const/4 v2, 0x0

    .line 218
    const-string v0, "LivePreviewTextureView"

    const-string v1, "Surface Texture Destroyed"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "LivePreviewTextureView"

    const-string v1, "Finishing GL render"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->finish()V

    .line 222
    iput-object v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    .line 224
    :cond_0
    iput-object v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPlayButton:Landroid/view/View;

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "evt"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 67
    iget-boolean v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPrepared:Z

    if-nez v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 71
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->resumePlayback()Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    iput-boolean v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPaused:Z

    .line 76
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 77
    invoke-direct {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->showPlayButton()V

    :cond_2
    move v0, v1

    .line 80
    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 83
    goto :goto_0
.end method

.method public pauseRender()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->pause()V

    .line 230
    return-void
.end method

.method public resumePlayback()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    const-string v2, "LivePreviewTextureView"

    const-string v3, "Resuming Playback"

    invoke-static {v2, v3}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-boolean v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaCompleted:Z

    if-eqz v2, :cond_0

    .line 185
    iput-boolean v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaCompleted:Z

    .line 186
    iput-boolean v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPaused:Z

    .line 187
    iget-object v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 188
    invoke-direct {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->hidePlayButton()V

    .line 199
    :goto_0
    return v0

    .line 191
    :cond_0
    iget-boolean v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPaused:Z

    if-eqz v2, :cond_1

    .line 192
    iput-boolean v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPaused:Z

    .line 194
    iget-object v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 195
    invoke-direct {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->hidePlayButton()V

    goto :goto_0

    .line 198
    :cond_1
    const-string v0, "LivePreviewTextureView"

    const-string v2, "Nothing to resume"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 199
    goto :goto_0
.end method

.method public resumeRender()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->resume()V

    .line 234
    return-void
.end method

.method public setFilter(Lcom/instagram/android/video/filters/VideoFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-virtual {v0, p1}, Lcom/instagram/android/video/gl/GLRenderContext;->setFilter(Lcom/instagram/android/video/filters/VideoFilter;)V

    .line 176
    iget-boolean v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPrepared:Z

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->resumePlayback()Z

    goto :goto_0
.end method

.method public setPlayButton(Landroid/view/View;)V
    .locals 6
    .parameter "playButton"

    .prologue
    const-wide/16 v4, 0xfa

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 262
    iput-object p1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPlayButton:Landroid/view/View;

    .line 263
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPlayButtonFadeInAnimation:Landroid/view/animation/Animation;

    .line 264
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPlayButtonFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 265
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPlayButtonFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 266
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPlayButtonFadeOutAnimation:Landroid/view/animation/Animation;

    .line 267
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPlayButtonFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 268
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPlayButtonFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 269
    return-void
.end method

.method public setVideoFiles([Ljava/lang/String;I)V
    .locals 2
    .parameter "paths"
    .parameter "orientation"

    .prologue
    .line 237
    const-string v0, "LivePreviewTextureView"

    const-string v1, "Set Video Files"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput-object p1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPaths:[Ljava/lang/String;

    .line 239
    iput p2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOrientation:I

    .line 240
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/gl/GLRenderContext;->setNumClips(I)V

    .line 241
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->setupMediaPlayers()V

    .line 243
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->startRenderer()V

    .line 246
    :cond_0
    return-void
.end method

.method public setupMediaPlayers()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPaths:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;

    .line 250
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPaths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    aput-object v2, v1, v0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPaths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    const-string v1, "LivePreviewTextureView"

    const-string v2, "Couldn\'t set video file"

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 259
    :cond_0
    return-void
.end method
