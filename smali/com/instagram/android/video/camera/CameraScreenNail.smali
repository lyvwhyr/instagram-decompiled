.class public Lcom/instagram/android/video/camera/CameraScreenNail;
.super Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;
.source "CameraScreenNail.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xd
.end annotation


# static fields
.field private static final ANIM_CAPTURE_RUNNING:I = 0x2

.field private static final ANIM_CAPTURE_START:I = 0x1

.field private static final ANIM_NONE:I = 0x0

.field private static final ANIM_SWITCH_COPY_TEXTURE:I = 0x3

.field private static final ANIM_SWITCH_DARK_PREVIEW:I = 0x4

.field private static final ANIM_SWITCH_RUNNING:I = 0x7

.field private static final ANIM_SWITCH_START:I = 0x6

.field private static final ANIM_SWITCH_WAITING_FIRST_FRAME:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CAM_ScreenNail"


# instance fields
.field private mAlpha:F

.field private mAnimState:I

.field private mAnimTexture:Lcom/instagram/android/video/gl/RawTexture;

.field private mCaptureAnimManager:Lcom/instagram/android/video/ui/CaptureAnimManager;

.field private mEnableAspectRatioClamping:Z

.field private mFirstFrameArrived:Z

.field private mFullScreen:Z

.field private mListener:Lcom/instagram/android/video/camera/CameraScreenNail$Listener;

.field private mLock:Ljava/lang/Object;

.field private mOnFrameDrawnListener:Ljava/lang/Runnable;

.field private mOneTimeFrameDrawnListener:Lcom/instagram/android/video/camera/CameraScreenNail$OnFrameDrawnListener;

.field private mRenderHeight:I

.field private mRenderWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field private mSwitchAnimManager:Lcom/instagram/android/video/ui/SwitchAnimManager;

.field private final mTextureTransformMatrix:[F

.field private mUncroppedRenderHeight:I

.field private mUncroppedRenderWidth:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/instagram/android/video/camera/CameraScreenNail$Listener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 97
    invoke-direct {p0}, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;-><init>()V

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    .line 62
    new-instance v0, Lcom/instagram/android/video/ui/CaptureAnimManager;

    invoke-direct {v0}, Lcom/instagram/android/video/ui/CaptureAnimManager;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/instagram/android/video/ui/CaptureAnimManager;

    .line 63
    new-instance v0, Lcom/instagram/android/video/ui/SwitchAnimManager;

    invoke-direct {v0}, Lcom/instagram/android/video/ui/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/instagram/android/video/ui/SwitchAnimManager;

    .line 64
    iput v2, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimState:I

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    .line 79
    iput v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mScaleX:F

    iput v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mScaleY:F

    .line 81
    iput-boolean v2, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 82
    iput v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAlpha:F

    .line 98
    iput-object p1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mListener:Lcom/instagram/android/video/camera/CameraScreenNail$Listener;

    .line 99
    return-void
.end method

.method private callbackIfNeeded()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/instagram/android/video/camera/CameraScreenNail$OnFrameDrawnListener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/instagram/android/video/camera/CameraScreenNail$OnFrameDrawnListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/video/camera/CameraScreenNail$OnFrameDrawnListener;->onFrameDrawn(Lcom/instagram/android/video/camera/CameraScreenNail;)V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/instagram/android/video/camera/CameraScreenNail$OnFrameDrawnListener;

    .line 233
    :cond_0
    return-void
.end method

.method private copyPreviewTexture(Lcom/instagram/android/video/gl/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 318
    iget-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimTexture:Lcom/instagram/android/video/gl/RawTexture;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/RawTexture;->getWidth()I

    move-result v5

    .line 319
    iget-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimTexture:Lcom/instagram/android/video/gl/RawTexture;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/RawTexture;->getHeight()I

    move-result v6

    .line 320
    iget-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimTexture:Lcom/instagram/android/video/gl/RawTexture;

    invoke-interface {p1, v0}, Lcom/instagram/android/video/gl/GLCanvas;->beginRenderTarget(Lcom/instagram/android/video/gl/RawTexture;)V

    .line 323
    const/4 v0, 0x0

    int-to-float v1, v6

    invoke-interface {p1, v0, v1}, Lcom/instagram/android/video/gl/GLCanvas;->translate(FF)V

    .line 324
    const/high16 v0, -0x4080

    invoke-interface {p1, v2, v0, v2}, Lcom/instagram/android/video/gl/GLCanvas;->scale(FFF)V

    .line 325
    invoke-virtual {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 326
    iget-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/camera/CameraScreenNail;->updateTransformMatrix([F)V

    .line 327
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mExtTexture:Lcom/instagram/android/video/gl/ExtTexture;

    iget-object v2, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    move-object v0, p1

    move v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/instagram/android/video/gl/GLCanvas;->drawTexture(Lcom/instagram/android/video/gl/BasicTexture;[FIIII)V

    .line 329
    invoke-interface {p1}, Lcom/instagram/android/video/gl/GLCanvas;->endRenderTarget()V

    .line 330
    return-void
.end method

.method private getTextureHeight()I
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->getHeight()I

    move-result v0

    return v0
.end method

.method private getTextureWidth()I
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->getWidth()I

    move-result v0

    return v0
.end method

.method private setPreviewLayoutSize(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 163
    const-string v0, "CAM_ScreenNail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preview layout size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iput p1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderWidth:I

    .line 165
    iput p2, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderHeight:I

    .line 166
    invoke-direct {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->updateRenderSize()V

    .line 167
    return-void
.end method

.method private updateRenderSize()V
    .locals 4

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-nez v0, :cond_0

    .line 171
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mScaleY:F

    iput v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mScaleX:F

    .line 172
    invoke-direct {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getTextureWidth()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mUncroppedRenderWidth:I

    .line 173
    invoke-direct {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getTextureHeight()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mUncroppedRenderHeight:I

    .line 174
    const-string v0, "CAM_ScreenNail"

    const-string v1, "aspect ratio clamping disabled"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getTextureWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getTextureHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getTextureWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getTextureHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 185
    :goto_1
    iget v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderWidth:I

    iget v2, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderHeight:I

    if-le v1, v2, :cond_2

    .line 186
    iget v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderWidth:I

    iget v2, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 188
    iget v2, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderHeight:I

    iget v3, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderWidth:I

    int-to-float v3, v3

    div-float v0, v3, v0

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 196
    :goto_2
    iget v2, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    iput v2, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mScaleX:F

    .line 197
    iget v2, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    iput v2, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mScaleY:F

    .line 198
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mUncroppedRenderWidth:I

    .line 199
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mUncroppedRenderHeight:I

    .line 200
    const-string v0, "CAM_ScreenNail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aspect ratio clamping enabled, surfaceTexture scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mScaleX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mScaleY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getTextureHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getTextureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1

    .line 191
    :cond_2
    iget v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderWidth:I

    iget v2, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 193
    iget v2, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderHeight:I

    iget v3, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderWidth:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    goto :goto_2
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 5

    .prologue
    .line 206
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 208
    invoke-super {p0}, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->acquireSurfaceTexture()V

    .line 209
    new-instance v0, Lcom/instagram/android/video/gl/RawTexture;

    invoke-direct {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getTextureWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/instagram/android/video/gl/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimTexture:Lcom/instagram/android/video/gl/RawTexture;

    .line 210
    monitor-exit v1

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public copyTexture()V
    .locals 2

    .prologue
    .line 222
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mListener:Lcom/instagram/android/video/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/instagram/android/video/camera/CameraScreenNail$Listener;->requestRender()V

    .line 224
    const/4 v0, 0x3

    iput v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimState:I

    .line 225
    monitor-exit v1

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public directDraw(Lcom/instagram/android/video/gl/GLCanvas;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 244
    invoke-super/range {p0 .. p5}, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->draw(Lcom/instagram/android/video/gl/GLCanvas;IIII)V

    .line 245
    return-void
.end method

.method public draw(Lcom/instagram/android/video/gl/GLCanvas;IIII)V
    .locals 10
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 249
    iget-object v8, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 250
    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mVisible:Z

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v1, :cond_2

    :cond_1
    monitor-exit v8

    .line 315
    :goto_0
    return-void

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 254
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 255
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    .line 257
    :cond_3
    invoke-interface {p1}, Lcom/instagram/android/video/gl/GLCanvas;->getAlpha()F

    move-result v9

    .line 258
    iget v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAlpha:F

    invoke-interface {p1, v1}, Lcom/instagram/android/video/gl/GLCanvas;->setAlpha(F)V

    .line 260
    iget v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimState:I

    packed-switch v1, :pswitch_data_0

    .line 290
    :goto_1
    :pswitch_0
    iget v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 292
    :cond_4
    iget v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 293
    iget-boolean v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mFullScreen:Z

    if-nez v0, :cond_6

    .line 295
    const/4 v0, 0x0

    .line 303
    :goto_2
    if-eqz v0, :cond_8

    .line 304
    iget-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mListener:Lcom/instagram/android/video/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/instagram/android/video/camera/CameraScreenNail$Listener;->requestRender()V

    .line 312
    :cond_5
    :goto_3
    invoke-interface {p1, v9}, Lcom/instagram/android/video/gl/GLCanvas;->setAlpha(F)V

    .line 313
    invoke-direct {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->callbackIfNeeded()V

    .line 314
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 262
    :pswitch_1
    :try_start_1
    invoke-super/range {p0 .. p5}, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->draw(Lcom/instagram/android/video/gl/GLCanvas;IIII)V

    goto :goto_1

    .line 265
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/instagram/android/video/camera/CameraScreenNail;->copyPreviewTexture(Lcom/instagram/android/video/gl/GLCanvas;)V

    .line 266
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/instagram/android/video/ui/SwitchAnimManager;

    invoke-virtual {v1, p4, p5}, Lcom/instagram/android/video/ui/SwitchAnimManager;->setReviewDrawingSize(II)V

    .line 267
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mListener:Lcom/instagram/android/video/camera/CameraScreenNail$Listener;

    invoke-interface {v1}, Lcom/instagram/android/video/camera/CameraScreenNail$Listener;->onPreviewTextureCopied()V

    .line 268
    const/4 v1, 0x4

    iput v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimState:I

    .line 276
    :pswitch_3
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 277
    iget-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/instagram/android/video/ui/SwitchAnimManager;

    iget-object v6, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimTexture:Lcom/instagram/android/video/gl/RawTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/instagram/android/video/ui/SwitchAnimManager;->drawDarkPreview(Lcom/instagram/android/video/gl/GLCanvas;IIIILcom/instagram/android/video/gl/RawTexture;)Z

    goto :goto_1

    .line 281
    :pswitch_4
    const/4 v0, 0x7

    iput v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimState:I

    goto :goto_1

    .line 284
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/instagram/android/video/camera/CameraScreenNail;->copyPreviewTexture(Lcom/instagram/android/video/gl/GLCanvas;)V

    .line 285
    iget-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mListener:Lcom/instagram/android/video/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/instagram/android/video/camera/CameraScreenNail$Listener;->onCaptureTextureCopied()V

    .line 286
    const/4 v0, 0x2

    iput v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimState:I

    goto :goto_1

    .line 297
    :cond_6
    iget-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/instagram/android/video/ui/CaptureAnimManager;

    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimTexture:Lcom/instagram/android/video/gl/RawTexture;

    invoke-virtual {v0, p1, p0, v1}, Lcom/instagram/android/video/ui/CaptureAnimManager;->drawAnimation(Lcom/instagram/android/video/gl/GLCanvas;Lcom/instagram/android/video/camera/CameraScreenNail;Lcom/instagram/android/video/gl/RawTexture;)Z

    move-result v0

    goto :goto_2

    .line 300
    :cond_7
    iget-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/instagram/android/video/ui/SwitchAnimManager;

    iget-object v7, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimTexture:Lcom/instagram/android/video/gl/RawTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/instagram/android/video/ui/SwitchAnimManager;->drawAnimation(Lcom/instagram/android/video/gl/GLCanvas;IIIILcom/instagram/android/video/camera/CameraScreenNail;Lcom/instagram/android/video/gl/RawTexture;)Z

    move-result v0

    goto :goto_2

    .line 308
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimState:I

    .line 309
    invoke-super/range {p0 .. p5}, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->draw(Lcom/instagram/android/video/gl/GLCanvas;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public enableAspectRatioClamping()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 159
    invoke-direct {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->updateRenderSize()V

    .line 160
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 389
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    :try_start_0
    iget v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAlpha:F

    monitor-exit v1

    return v0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderHeight:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getTextureHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getUncroppedRenderHeight()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mUncroppedRenderHeight:I

    return v0
.end method

.method public getUncroppedRenderWidth()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mUncroppedRenderWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderWidth:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getTextureWidth()I

    move-result v0

    goto :goto_0
.end method

.method public noDraw()V
    .locals 2

    .prologue
    .line 334
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 335
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mVisible:Z

    .line 336
    monitor-exit v1

    .line 337
    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surfaceTexture"

    .prologue
    .line 348
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 349
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 350
    monitor-exit v1

    .line 362
    :goto_0
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 353
    iget-boolean v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mVisible:Z

    if-eqz v0, :cond_2

    .line 354
    iget v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 355
    const/4 v0, 0x6

    iput v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimState:I

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mListener:Lcom/instagram/android/video/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/instagram/android/video/camera/CameraScreenNail$Listener;->requestRender()V

    .line 361
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 341
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mVisible:Z

    .line 343
    monitor-exit v1

    .line 344
    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    .line 215
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    invoke-super {p0}, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->releaseSurfaceTexture()V

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAnimState:I

    .line 218
    monitor-exit v1

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 395
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    :try_start_0
    iput p1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mAlpha:F

    .line 397
    iget-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mListener:Lcom/instagram/android/video/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/instagram/android/video/camera/CameraScreenNail$Listener;->requestRender()V

    .line 398
    monitor-exit v1

    .line 399
    return-void

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFullScreen(Z)V
    .locals 2
    .parameter "full"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iput-boolean p1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mFullScreen:Z

    .line 104
    monitor-exit v1

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnFrameDrawnOneShot(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "run"

    .prologue
    .line 383
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    iput-object p1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    .line 385
    monitor-exit v1

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOneTimeOnFrameDrawnListener(Lcom/instagram/android/video/camera/CameraScreenNail$OnFrameDrawnListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 376
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 378
    iput-object p1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/instagram/android/video/camera/CameraScreenNail$OnFrameDrawnListener;

    .line 379
    monitor-exit v1

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 369
    iget-object v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/instagram/android/video/ui/SwitchAnimManager;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/android/video/ui/SwitchAnimManager;->setPreviewFrameLayoutSize(II)V

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/video/camera/CameraScreenNail;->setPreviewLayoutSize(II)V

    .line 372
    monitor-exit v1

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->setSize(II)V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 143
    iget v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderWidth:I

    if-nez v0, :cond_0

    .line 144
    iput p1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderWidth:I

    .line 145
    iput p2, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mRenderHeight:I

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/video/camera/CameraScreenNail;->updateRenderSize()V

    .line 148
    return-void
.end method

.method protected updateTransformMatrix([F)V
    .locals 6
    .parameter "matrix"

    .prologue
    const/high16 v0, 0x3f00

    const/4 v5, 0x0

    const/high16 v4, -0x4100

    const/4 v3, 0x0

    .line 237
    invoke-super {p0, p1}, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 238
    invoke-static {p1, v3, v0, v0, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 239
    iget v0, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mScaleX:F

    iget v1, p0, Lcom/instagram/android/video/camera/CameraScreenNail;->mScaleY:F

    const/high16 v2, 0x3f80

    invoke-static {p1, v3, v0, v1, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 240
    invoke-static {p1, v3, v4, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 241
    return-void
.end method
