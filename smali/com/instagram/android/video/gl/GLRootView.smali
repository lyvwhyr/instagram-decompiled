.class public Lcom/instagram/android/video/gl/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/instagram/android/video/gl/GLRoot;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final DEBUG_DRAWING_STAT:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final DEBUG_PROFILE:Z = false

.field private static final DEBUG_PROFILE_SLOW_ONLY:Z = false

.field private static final FLAG_INITIALIZED:I = 0x1

.field private static final FLAG_NEED_LAYOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GLRootView"


# instance fields
.field private mCanvas:Lcom/instagram/android/video/gl/GLCanvas;

.field private mCompensation:I

.field private mCompensationMatrix:Landroid/graphics/Matrix;

.field private mContentView:Lcom/instagram/android/video/gl/GLView;

.field private mDisplayRotation:I

.field private final mEglConfigChooser:Lcom/instagram/android/video/gl/GalleryEGLConfigChooser;

.field private mFirstDraw:Z

.field private mFlags:I

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mFreeze:Z

.field private final mFreezeCondition:Ljava/util/concurrent/locks/Condition;

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mIdleListeners:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/instagram/android/video/gl/GLRoot$OnGLIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleRunner:Lcom/instagram/android/video/gl/GLRootView$IdleRunner;

.field private mInDownState:Z

.field private mInvalidateColor:I

.field private mLastDrawFinishTime:J

.field private mOrientationSource:Lcom/instagram/android/video/ui/OrientationSource;

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z

.field private mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/video/gl/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput v2, p0, Lcom/instagram/android/video/gl/GLRootView;->mFrameCount:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFrameCountingStart:J

    .line 68
    iput v2, p0, Lcom/instagram/android/video/gl/GLRootView;->mInvalidateColor:I

    .line 88
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    .line 91
    const/4 v0, 0x2

    iput v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFlags:I

    .line 92
    iput-boolean v2, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderRequested:Z

    .line 94
    new-instance v0, Lcom/instagram/android/video/gl/GalleryEGLConfigChooser;

    invoke-direct {v0}, Lcom/instagram/android/video/gl/GalleryEGLConfigChooser;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mEglConfigChooser:Lcom/instagram/android/video/gl/GalleryEGLConfigChooser;

    .line 97
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    .line 100
    new-instance v0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;

    invoke-direct {v0, p0, v3}, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;-><init>(Lcom/instagram/android/video/gl/GLRootView;Lcom/instagram/android/video/gl/GLRootView$1;)V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mIdleRunner:Lcom/instagram/android/video/gl/GLRootView$IdleRunner;

    .line 102
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 103
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    .line 108
    iput-boolean v2, p0, Lcom/instagram/android/video/gl/GLRootView;->mInDownState:Z

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFirstDraw:Z

    .line 182
    new-instance v0, Lcom/instagram/android/video/gl/GLRootView$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/video/gl/GLRootView$1;-><init>(Lcom/instagram/android/video/gl/GLRootView;)V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    .line 117
    iget v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFlags:I

    .line 118
    invoke-virtual {p0, v3}, Lcom/instagram/android/video/gl/GLRootView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mEglConfigChooser:Lcom/instagram/android/video/gl/GalleryEGLConfigChooser;

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLRootView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 120
    invoke-virtual {p0, p0}, Lcom/instagram/android/video/gl/GLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 121
    sget-boolean v0, Lcom/instagram/android/video/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 129
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/instagram/android/video/gl/GLRootView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLRootView;->superRequestRender()V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/video/gl/GLRootView;)Ljava/util/ArrayDeque;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/video/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/video/gl/GLRootView;)Lcom/instagram/android/video/gl/GLCanvas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCanvas:Lcom/instagram/android/video/gl/GLCanvas;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/video/gl/GLRootView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderRequested:Z

    return v0
.end method

.method private layoutContentPane()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 211
    iget v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFlags:I

    .line 213
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->getWidth()I

    move-result v3

    .line 214
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->getHeight()I

    move-result v4

    .line 219
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mOrientationSource:Lcom/instagram/android/video/ui/OrientationSource;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mOrientationSource:Lcom/instagram/android/video/ui/OrientationSource;

    invoke-interface {v0}, Lcom/instagram/android/video/ui/OrientationSource;->getDisplayRotation()I

    move-result v2

    .line 221
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mOrientationSource:Lcom/instagram/android/video/ui/OrientationSource;

    invoke-interface {v0}, Lcom/instagram/android/video/ui/OrientationSource;->getCompensation()I

    move-result v0

    .line 227
    :goto_0
    iget v5, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensation:I

    if-eq v5, v0, :cond_0

    .line 228
    iput v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensation:I

    .line 229
    iget v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensation:I

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 232
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    neg-int v5, v3

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    neg-int v6, v4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 234
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 239
    :cond_0
    :goto_1
    iput v2, p0, Lcom/instagram/android/video/gl/GLRootView;->mDisplayRotation:I

    .line 242
    iget v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_4

    move v0, v3

    .line 247
    :goto_2
    const-string v2, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "layout content pane "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (compensation "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensation:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/instagram/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRootView;->mContentView:Lcom/instagram/android/video/gl/GLView;

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 250
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRootView;->mContentView:Lcom/instagram/android/video/gl/GLView;

    invoke-virtual {v2, v1, v1, v4, v0}, Lcom/instagram/android/video/gl/GLView;->layout(IIII)V

    .line 254
    :cond_1
    return-void

    :cond_2
    move v0, v1

    move v2, v1

    .line 224
    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensation:I

    int-to-float v5, v5

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1

    :cond_4
    move v0, v4

    move v4, v3

    goto :goto_2
.end method

.method private onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCanvas:Lcom/instagram/android/video/gl/GLCanvas;

    invoke-interface {v0}, Lcom/instagram/android/video/gl/GLCanvas;->deleteRecycledResources()V

    .line 380
    invoke-static {}, Lcom/instagram/android/video/gl/UploadedTexture;->resetUploadLimit()V

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderRequested:Z

    .line 384
    iget v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLRootView;->layoutContentPane()V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCanvas:Lcom/instagram/android/video/gl/GLCanvas;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/instagram/android/video/gl/GLCanvas;->save(I)V

    .line 387
    iget v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensation:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/instagram/android/video/gl/GLRootView;->rotateCanvas(I)V

    .line 388
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mContentView:Lcom/instagram/android/video/gl/GLView;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mContentView:Lcom/instagram/android/video/gl/GLView;

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRootView;->mCanvas:Lcom/instagram/android/video/gl/GLCanvas;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/gl/GLView;->render(Lcom/instagram/android/video/gl/GLCanvas;)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCanvas:Lcom/instagram/android/video/gl/GLCanvas;

    invoke-interface {v0}, Lcom/instagram/android/video/gl/GLCanvas;->restore()V

    .line 393
    invoke-static {}, Lcom/instagram/android/video/gl/UploadedTexture;->uploadLimitReached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->requestRender()V

    .line 397
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mIdleRunner:Lcom/instagram/android/video/gl/GLRootView$IdleRunner;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->enable()V

    .line 399
    :cond_3
    monitor-exit v1

    .line 409
    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private outputFps()V
    .locals 8

    .prologue
    .line 311
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 312
    iget-wide v2, p0, Lcom/instagram/android/video/gl/GLRootView;->mFrameCountingStart:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 313
    iput-wide v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFrameCountingStart:J

    .line 320
    :cond_0
    :goto_0
    iget v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFrameCount:I

    .line 321
    return-void

    .line 314
    :cond_1
    iget-wide v2, p0, Lcom/instagram/android/video/gl/GLRootView;->mFrameCountingStart:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 315
    const-string v2, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/instagram/android/video/gl/GLRootView;->mFrameCount:I

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/instagram/android/video/gl/GLRootView;->mFrameCountingStart:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iput-wide v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFrameCountingStart:J

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFrameCount:I

    goto :goto_0
.end method

.method private rotateCanvas(I)V
    .locals 6
    .parameter "degrees"

    .prologue
    const/4 v5, 0x0

    .line 412
    if-nez p1, :cond_0

    .line 424
    :goto_0
    return-void

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->getWidth()I

    move-result v0

    .line 414
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->getHeight()I

    move-result v1

    .line 415
    div-int/lit8 v0, v0, 0x2

    .line 416
    div-int/lit8 v1, v1, 0x2

    .line 417
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRootView;->mCanvas:Lcom/instagram/android/video/gl/GLCanvas;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-interface {v2, v3, v4}, Lcom/instagram/android/video/gl/GLCanvas;->translate(FF)V

    .line 418
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRootView;->mCanvas:Lcom/instagram/android/video/gl/GLCanvas;

    int-to-float v3, p1

    const/high16 v4, 0x3f80

    invoke-interface {v2, v3, v5, v5, v4}, Lcom/instagram/android/video/gl/GLCanvas;->rotate(FFFF)V

    .line 419
    rem-int/lit16 v2, p1, 0xb4

    if-eqz v2, :cond_1

    .line 420
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRootView;->mCanvas:Lcom/instagram/android/video/gl/GLCanvas;

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {v2, v1, v0}, Lcom/instagram/android/video/gl/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 422
    :cond_1
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRootView;->mCanvas:Lcom/instagram/android/video/gl/GLCanvas;

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {v2, v0, v1}, Lcom/instagram/android/video/gl/GLCanvas;->translate(FF)V

    goto :goto_0
.end method

.method private superRequestRender()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 191
    return-void
.end method


# virtual methods
.method public addOnGLIdleListener(Lcom/instagram/android/video/gl/GLRoot$OnGLIdleListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mIdleRunner:Lcom/instagram/android/video/gl/GLRootView$IdleRunner;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->enable()V

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 452
    :goto_0
    return v0

    .line 430
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 431
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    if-ne v2, v1, :cond_6

    .line 433
    :cond_1
    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mInDownState:Z

    .line 438
    :cond_2
    iget v3, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensation:I

    if-eqz v3, :cond_3

    .line 439
    iget-object v3, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v3}, Lcom/instagram/android/video/util/MotionEventHelper;->transformEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 442
    :cond_3
    iget-object v3, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 445
    :try_start_0
    iget-object v3, p0, Lcom/instagram/android/video/gl/GLRootView;->mContentView:Lcom/instagram/android/video/gl/GLView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/instagram/android/video/gl/GLRootView;->mContentView:Lcom/instagram/android/video/gl/GLView;

    invoke-virtual {v3, p1}, Lcom/instagram/android/video/gl/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 447
    :cond_4
    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 448
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/instagram/android/video/gl/GLRootView;->mInDownState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :cond_5
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 434
    :cond_6
    iget-boolean v3, p0, Lcom/instagram/android/video/gl/GLRootView;->mInDownState:Z

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 452
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 593
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->unfreeze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    .line 597
    return-void

    .line 595
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    throw v0
.end method

.method public freeze()V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFreeze:Z

    .line 536
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 537
    return-void
.end method

.method public getCompensation()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensation:I

    return v0
.end method

.method public getCompensationMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mDisplayRotation:I

    return v0
.end method

.method public lockRenderThread()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 493
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->unfreeze()V

    .line 587
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 588
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 332
    :goto_0
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFreeze:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    .line 337
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/instagram/android/video/gl/GLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 345
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFirstDraw:Z

    if-eqz v0, :cond_1

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFirstDraw:Z

    .line 347
    new-instance v0, Lcom/instagram/android/video/gl/GLRootView$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/video/gl/GLRootView$2;-><init>(Lcom/instagram/android/video/gl/GLRootView;)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLRootView;->post(Ljava/lang/Runnable;)Z

    .line 371
    :cond_1
    return-void

    .line 339
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 259
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->requestLayoutContentPane()V

    .line 260
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->unfreeze()V

    .line 503
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 510
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .parameter "gl1"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 296
    const-string v0, "GLRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gl10: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 304
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 305
    .end local p1
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/instagram/android/video/util/VideoUtil;->assertTrue(Z)V

    .line 307
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCanvas:Lcom/instagram/android/video/gl/GLCanvas;

    invoke-interface {v0, p2, p3}, Lcom/instagram/android/video/gl/GLCanvas;->setSize(II)V

    .line 308
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter "gl1"
    .parameter "config"

    .prologue
    .line 268
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 269
    .end local p1
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "GLRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLObject has changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 275
    :try_start_0
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 276
    new-instance v0, Lcom/instagram/android/video/gl/GLCanvasImpl;

    invoke-direct {v0, p1}, Lcom/instagram/android/video/gl/GLCanvasImpl;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mCanvas:Lcom/instagram/android/video/gl/GLCanvas;

    .line 277
    invoke-static {}, Lcom/instagram/android/video/gl/BasicTexture;->invalidateAllTextures()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLRootView;->setRenderMode(I)V

    .line 287
    return-void

    .line 279
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public requestLayoutContentPane()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mContentView:Lcom/instagram/android/video/gl/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 208
    :goto_0
    return-void

    .line 201
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 203
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFlags:I

    .line 204
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->requestRender()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderRequested:Z

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderRequested:Z

    .line 175
    sget-boolean v0, Lcom/instagram/android/video/ApiHelper;->HAS_POST_ON_ANIMATION:Z

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLRootView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public requestRenderForced()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLRootView;->superRequestRender()V

    .line 164
    return-void
.end method

.method public setContentPane(Lcom/instagram/android/video/gl/GLView;)V
    .locals 8
    .parameter "content"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 141
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mContentView:Lcom/instagram/android/video/gl/GLView;

    if-ne v0, p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mContentView:Lcom/instagram/android/video/gl/GLView;

    if-eqz v0, :cond_3

    .line 143
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mInDownState:Z

    if-eqz v0, :cond_2

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 145
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRootView;->mContentView:Lcom/instagram/android/video/gl/GLView;

    invoke-virtual {v1, v0}, Lcom/instagram/android/video/gl/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 148
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 149
    iput-boolean v7, p0, Lcom/instagram/android/video/gl/GLRootView;->mInDownState:Z

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mContentView:Lcom/instagram/android/video/gl/GLView;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLView;->detachFromRoot()V

    .line 152
    invoke-static {}, Lcom/instagram/android/video/gl/BasicTexture;->yieldAllTextures()V

    .line 154
    :cond_3
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLRootView;->mContentView:Lcom/instagram/android/video/gl/GLView;

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1, p0}, Lcom/instagram/android/video/gl/GLView;->attachToRoot(Lcom/instagram/android/video/gl/GLRoot;)V

    .line 157
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public setLightsOutMode(Z)V
    .locals 2
    .parameter "enabled"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 550
    sget-boolean v0, Lcom/instagram/android/video/ApiHelper;->HAS_SET_SYSTEM_UI_VISIBILITY:Z

    if-nez v0, :cond_0

    .line 560
    :goto_0
    return-void

    .line 552
    :cond_0
    const/4 v0, 0x0

    .line 553
    if-eqz p1, :cond_1

    .line 554
    const/4 v0, 0x1

    .line 555
    sget-boolean v1, Lcom/instagram/android/video/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-eqz v1, :cond_1

    .line 556
    const/16 v0, 0x105

    .line 559
    :cond_1
    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLRootView;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public setOrientationSource(Lcom/instagram/android/video/ui/OrientationSource;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 514
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLRootView;->mOrientationSource:Lcom/instagram/android/video/ui/OrientationSource;

    .line 515
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->unfreeze()V

    .line 569
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 570
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->unfreeze()V

    .line 575
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 576
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView;->unfreeze()V

    .line 581
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 582
    return-void
.end method

.method public unfreeze()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFreeze:Z

    .line 543
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 544
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 545
    return-void
.end method

.method public unlockRenderThread()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 498
    return-void
.end method
