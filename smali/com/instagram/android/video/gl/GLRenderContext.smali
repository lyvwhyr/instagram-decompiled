.class public Lcom/instagram/android/video/gl/GLRenderContext;
.super Ljava/lang/Object;
.source "GLRenderContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GLRenderContext"


# instance fields
.field private mAspectRatio:F

.field private mController:Lcom/instagram/android/video/gl/RenderController;

.field private mCurrentIndex:I

.field private mDrawingOffscreen:Z

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mFilter:Lcom/instagram/android/video/filters/VideoFilter;

.field private final mFinishLock:Ljava/lang/Object;

.field private final mFinishRequestLock:Ljava/lang/Object;

.field private volatile mFinished:Z

.field private volatile mHasMoreData:Z

.field private volatile mIgnorePause:Z

.field private mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;

.field private mInputTextures:[I

.field private mOESTransformMatrix:[F

.field private mOffscreenBuffer1:Lcom/instagram/android/video/gl/FramebufferTexture;

.field private mOffscreenBuffer2:Lcom/instagram/android/video/gl/FramebufferTexture;

.field private final mPauseLock:Ljava/lang/Object;

.field private volatile mPauseRendering:Z

.field private mRenderLock:Ljava/lang/Object;

.field private volatile mRenderMode:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

.field private volatile mRequestFinished:Z

.field private mSize:I

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private oesCopyFilter:Lcom/instagram/android/video/filters/OESCopyFilter;

.field private preRenderActions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private useYUV:Z

.field private yuvFilter:Lcom/instagram/android/video/filters/YUVFilter;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;I)V
    .locals 2
    .parameter "surface"
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFinishRequestLock:Ljava/lang/Object;

    .line 50
    iput-boolean v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mHasMoreData:Z

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mOESTransformMatrix:[F

    .line 71
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mAspectRatio:F

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFinishLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mPauseLock:Ljava/lang/Object;

    .line 77
    iput-boolean v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mPauseRendering:Z

    .line 86
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mRenderLock:Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;->RENDER_CONTINUOUSLY:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mRenderMode:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    .line 89
    new-instance v0, Lcom/instagram/android/video/filters/OESCopyFilter;

    invoke-direct {v0}, Lcom/instagram/android/video/filters/OESCopyFilter;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->oesCopyFilter:Lcom/instagram/android/video/filters/OESCopyFilter;

    .line 90
    new-instance v0, Lcom/instagram/android/video/filters/YUVFilter;

    invoke-direct {v0}, Lcom/instagram/android/video/filters/YUVFilter;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->yuvFilter:Lcom/instagram/android/video/filters/YUVFilter;

    .line 91
    new-instance v0, Lcom/instagram/android/video/filters/NormalFilter;

    invoke-direct {v0}, Lcom/instagram/android/video/filters/NormalFilter;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFilter:Lcom/instagram/android/video/filters/VideoFilter;

    .line 92
    iput p2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mSize:I

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->preRenderActions:Ljava/util/Queue;

    .line 96
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 97
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 98
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/video/gl/GLRenderContext;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mAspectRatio:F

    return v0
.end method

.method static synthetic access$100(Lcom/instagram/android/video/gl/GLRenderContext;)Lcom/instagram/android/video/filters/OESCopyFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->oesCopyFilter:Lcom/instagram/android/video/filters/OESCopyFilter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/video/gl/GLRenderContext;)[Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/video/gl/GLRenderContext;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/instagram/android/video/gl/GLRenderContext;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/instagram/android/video/gl/GLRenderContext;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mSize:I

    return v0
.end method

.method static synthetic access$402(Lcom/instagram/android/video/gl/GLRenderContext;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mSize:I

    return p1
.end method

.method static synthetic access$500(Lcom/instagram/android/video/gl/GLRenderContext;)Lcom/instagram/android/video/gl/FramebufferTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mOffscreenBuffer1:Lcom/instagram/android/video/gl/FramebufferTexture;

    return-object v0
.end method

.method static synthetic access$600(Lcom/instagram/android/video/gl/GLRenderContext;)Lcom/instagram/android/video/gl/FramebufferTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mOffscreenBuffer2:Lcom/instagram/android/video/gl/FramebufferTexture;

    return-object v0
.end method

.method static synthetic access$702(Lcom/instagram/android/video/gl/GLRenderContext;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mDrawingOffscreen:Z

    return p1
.end method

.method private checkCurrent()V
    .locals 5

    .prologue
    .line 455
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_1
    return-void
.end method

.method private checkEglError()V
    .locals 4

    .prologue
    .line 553
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 554
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 555
    const-string v1, "GLRenderContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 520
    new-array v5, v4, [I

    .line 521
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 522
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLRenderContext;->getConfig()[I

    move-result-object v2

    .line 523
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    .line 527
    aget-object v0, v3, v6

    .line 529
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .parameter "egl"
    .parameter "eglDisplay"
    .parameter "eglConfig"

    .prologue
    .line 515
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 516
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    .line 515
    nop

    :array_0
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private finishGL()V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 548
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 549
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 550
    return-void
.end method

.method private getConfig()[I
    .locals 1

    .prologue
    .line 533
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x4
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x26t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private initGL()V
    .locals 5

    .prologue
    .line 465
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 467
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 468
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 469
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglGetDisplay failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 474
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 475
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglInitialize failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLRenderContext;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 480
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_2

    .line 481
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/video/gl/GLRenderContext;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 486
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mSurface:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_5

    .line 487
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 492
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 497
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_7

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 499
    const/16 v1, 0x300b

    if-ne v0, v1, :cond_6

    .line 500
    const-string v0, "GLRenderContext"

    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_4
    return-void

    .line 494
    :cond_5
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mSurface:Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 503
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWindowSurface failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 507
    :cond_7
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 508
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    nop

    :array_0
    .array-data 0x4
        0x57t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x56t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public advanceSurfaceTexture()V
    .locals 2

    .prologue
    .line 328
    iget v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;

    array-length v1, v1

    rem-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLRenderContext;->useSurfaceTexture(I)V

    .line 329
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 433
    const-string v0, "GLRenderContext"

    const-string v1, "Requesting finish"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFinishRequestLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mRequestFinished:Z

    .line 436
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRenderContext;->resume()V

    .line 438
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRenderContext;->requestRender()V

    .line 439
    return-void

    .line 436
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public flipFinalRender(Z)V
    .locals 0
    .parameter "flipped"

    .prologue
    .line 385
    invoke-static {p1}, Lcom/instagram/android/video/filters/VideoFilter;->setFinalTransformFlipped(Z)V

    .line 386
    return-void
.end method

.method public getFilterId()I
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFilter:Lcom/instagram/android/video/filters/VideoFilter;

    invoke-virtual {v0}, Lcom/instagram/android/video/filters/VideoFilter;->getId()I

    move-result v0

    return v0
.end method

.method public getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getInputSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "index"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 141
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLRenderContext;->setNumClips(I)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isCurrentInputTexture(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .parameter "st"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mCurrentIndex:I

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFinished:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 365
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mPauseRendering:Z

    .line 367
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRenderContext;->requestRender()V

    .line 370
    return-void

    .line 367
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 446
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mRenderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mHasMoreData:Z

    .line 448
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mRenderLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 449
    monitor-exit v1

    .line 450
    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized resetSurfaceTexture()V
    .locals 3

    .prologue
    .line 332
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLRenderContext;->useSurfaceTexture(I)V

    .line 333
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->preRenderActions:Ljava/util/Queue;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 334
    :try_start_1
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->preRenderActions:Ljava/util/Queue;

    new-instance v2, Lcom/instagram/android/video/gl/GLRenderContext$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/video/gl/GLRenderContext$2;-><init>(Lcom/instagram/android/video/gl/GLRenderContext;)V

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 342
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 332
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 373
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 374
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mPauseRendering:Z

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mIgnorePause:Z

    .line 376
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 377
    monitor-exit v1

    .line 378
    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const v5, 0x8d40

    const/4 v1, 0x0

    .line 196
    const-string v0, "GLRenderContext"

    const-string v2, "Starting Render Thread"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLRenderContext;->initGL()V

    .line 199
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0, v3}, Lcom/instagram/android/video/gl/GLRenderContext;->setNumClips(I)V

    :cond_0
    move v0, v1

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputTextures:[I

    const v3, 0x8d65

    invoke-static {v3}, Lcom/instagram/android/gl/GLHelper;->createTexture(I)I

    move-result v3

    aput v3, v2, v0

    .line 205
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;

    new-instance v3, Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputTextures:[I

    aget v4, v4, v0

    invoke-direct {v3, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    aput-object v3, v2, v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mController:Lcom/instagram/android/video/gl/RenderController;

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mController:Lcom/instagram/android/video/gl/RenderController;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/RenderController;->preInit()V

    .line 212
    :cond_2
    new-instance v0, Lcom/instagram/android/video/gl/FramebufferTexture;

    iget v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mSize:I

    invoke-direct {v0, v2}, Lcom/instagram/android/video/gl/FramebufferTexture;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mOffscreenBuffer1:Lcom/instagram/android/video/gl/FramebufferTexture;

    .line 213
    new-instance v0, Lcom/instagram/android/video/gl/FramebufferTexture;

    iget v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mSize:I

    invoke-direct {v0, v2}, Lcom/instagram/android/video/gl/FramebufferTexture;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mOffscreenBuffer2:Lcom/instagram/android/video/gl/FramebufferTexture;

    .line 216
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mRenderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 217
    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mHasMoreData:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mRenderMode:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    sget-object v3, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;->RENDER_WHEN_DIRTY:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v3, :cond_7

    .line 219
    :try_start_1
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mRenderLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    :goto_2
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mHasMoreData:Z

    .line 225
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mPauseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 227
    :try_start_3
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mIgnorePause:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mPauseRendering:Z

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mController:Lcom/instagram/android/video/gl/RenderController;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/RenderController;->onPause()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 230
    :try_start_4
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 232
    :goto_3
    :try_start_5
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mRequestFinished:Z

    if-nez v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mController:Lcom/instagram/android/video/gl/RenderController;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/RenderController;->onResume()V

    .line 236
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mIgnorePause:Z

    .line 237
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 239
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mRequestFinished:Z

    if-eqz v0, :cond_8

    .line 305
    :cond_5
    invoke-virtual {p0, v1}, Lcom/instagram/android/video/gl/GLRenderContext;->flipFinalRender(Z)V

    .line 307
    const-string v0, "GLRenderContext"

    const-string v1, "Render finished."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mController:Lcom/instagram/android/video/gl/RenderController;

    if-eqz v0, :cond_6

    .line 310
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mController:Lcom/instagram/android/video/gl/RenderController;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/RenderController;->onFinish()V

    .line 313
    :cond_6
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFinishLock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFinished:Z

    .line 315
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFinishLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 316
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 323
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLRenderContext;->finishGL()V

    .line 324
    const-string v0, "GLRenderContext"

    const-string v1, "Render Thread destroyed"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 222
    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_2

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 237
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 243
    :cond_8
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLRenderContext;->checkCurrent()V

    .line 245
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mController:Lcom/instagram/android/video/gl/RenderController;

    if-eqz v0, :cond_9

    .line 246
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mController:Lcom/instagram/android/video/gl/RenderController;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/RenderController;->preRender()Z

    move-result v0

    if-nez v0, :cond_5

    .line 252
    :cond_9
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->preRenderActions:Ljava/util/Queue;

    monitor-enter v2

    .line 253
    :try_start_9
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->preRenderActions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 254
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    .line 256
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :cond_a
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 258
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 260
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mCurrentIndex:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 261
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mCurrentIndex:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mOESTransformMatrix:[F

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 263
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mOffscreenBuffer1:Lcom/instagram/android/video/gl/FramebufferTexture;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/FramebufferTexture;->getFramebuffer()I

    move-result v0

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 264
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->oesCopyFilter:Lcom/instagram/android/video/filters/OESCopyFilter;

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputTextures:[I

    iget v3, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mCurrentIndex:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mOESTransformMatrix:[F

    invoke-virtual {v0, v2, v3}, Lcom/instagram/android/video/filters/OESCopyFilter;->draw(I[F)V

    .line 266
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mOffscreenBuffer1:Lcom/instagram/android/video/gl/FramebufferTexture;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/FramebufferTexture;->getTexture()I

    move-result v2

    .line 267
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mOffscreenBuffer2:Lcom/instagram/android/video/gl/FramebufferTexture;

    .line 269
    iget-boolean v3, p0, Lcom/instagram/android/video/gl/GLRenderContext;->useYUV:Z

    if-eqz v3, :cond_b

    .line 270
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mOffscreenBuffer2:Lcom/instagram/android/video/gl/FramebufferTexture;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/FramebufferTexture;->getFramebuffer()I

    move-result v0

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 271
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFilter:Lcom/instagram/android/video/filters/VideoFilter;

    invoke-virtual {v0, v2}, Lcom/instagram/android/video/filters/VideoFilter;->draw(I)V

    .line 272
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mOffscreenBuffer2:Lcom/instagram/android/video/gl/FramebufferTexture;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/FramebufferTexture;->getTexture()I

    move-result v2

    .line 273
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mOffscreenBuffer1:Lcom/instagram/android/video/gl/FramebufferTexture;

    .line 276
    :cond_b
    iget-boolean v3, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mDrawingOffscreen:Z

    if-eqz v3, :cond_c

    .line 277
    invoke-virtual {v0}, Lcom/instagram/android/video/gl/FramebufferTexture;->getFramebuffer()I

    move-result v0

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 282
    :goto_5
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->useYUV:Z

    if-eqz v0, :cond_d

    .line 283
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->yuvFilter:Lcom/instagram/android/video/filters/YUVFilter;

    invoke-virtual {v0}, Lcom/instagram/android/video/filters/YUVFilter;->setUseFinalTransformOnce()V

    .line 284
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->yuvFilter:Lcom/instagram/android/video/filters/YUVFilter;

    invoke-virtual {v0, v2}, Lcom/instagram/android/video/filters/YUVFilter;->draw(I)V

    .line 290
    :goto_6
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFinishRequestLock:Ljava/lang/Object;

    monitor-enter v2

    .line 291
    :try_start_b
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mDrawingOffscreen:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mRequestFinished:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 294
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot swap buffers "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mRequestFinished:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    .line 279
    :cond_c
    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    goto :goto_5

    .line 286
    :cond_d
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFilter:Lcom/instagram/android/video/filters/VideoFilter;

    invoke-virtual {v0}, Lcom/instagram/android/video/filters/VideoFilter;->setUseFinalTransformOnce()V

    .line 287
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFilter:Lcom/instagram/android/video/filters/VideoFilter;

    invoke-virtual {v0, v2}, Lcom/instagram/android/video/filters/VideoFilter;->draw(I)V

    goto :goto_6

    .line 296
    :cond_e
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 297
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLRenderContext;->checkEglError()V

    .line 300
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mController:Lcom/instagram/android/video/gl/RenderController;

    if-eqz v0, :cond_3

    .line 301
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mController:Lcom/instagram/android/video/gl/RenderController;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/RenderController;->postRender()V

    goto/16 :goto_1

    .line 316
    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    .line 231
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 220
    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method

.method public setAspectRatioRotation(FI)V
    .locals 1
    .parameter "f"
    .parameter "r"

    .prologue
    .line 122
    iput p1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mAspectRatio:F

    .line 123
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->oesCopyFilter:Lcom/instagram/android/video/filters/OESCopyFilter;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/android/video/filters/OESCopyFilter;->setAspectRatioRotation(FI)V

    .line 124
    return-void
.end method

.method public setController(Lcom/instagram/android/video/gl/RenderController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mController:Lcom/instagram/android/video/gl/RenderController;

    .line 103
    return-void
.end method

.method public setFilter(Lcom/instagram/android/video/filters/VideoFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFilter:Lcom/instagram/android/video/filters/VideoFilter;

    .line 390
    return-void
.end method

.method public setNumClips(I)V
    .locals 1
    .parameter "numClips"

    .prologue
    .line 106
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 107
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputTextures:[I

    .line 108
    new-array v0, p1, [Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;

    .line 110
    :cond_0
    return-void
.end method

.method public setRenderMode(Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mRenderMode:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mRenderMode:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    sget-object v1, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;->RENDER_WHEN_DIRTY:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    if-ne v0, v1, :cond_0

    .line 114
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mRenderMode:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    .line 115
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRenderContext;->requestRender()V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mRenderMode:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    goto :goto_0
.end method

.method public declared-synchronized setRotation(I)V
    .locals 2
    .parameter "r"

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->preRenderActions:Ljava/util/Queue;

    new-instance v1, Lcom/instagram/android/video/gl/GLRenderContext$1;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/video/gl/GLRenderContext$1;-><init>(Lcom/instagram/android/video/gl/GLRenderContext;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;I)V
    .locals 2
    .parameter "surface"
    .parameter "size"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_0

    .line 155
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 156
    iput p2, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mSize:I

    .line 158
    :cond_0
    return-void
.end method

.method public setTargetSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->preRenderActions:Ljava/util/Queue;

    new-instance v1, Lcom/instagram/android/video/gl/GLRenderContext$4;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/video/gl/GLRenderContext$4;-><init>(Lcom/instagram/android/video/gl/GLRenderContext;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method public setUseYUV()V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->useYUV:Z

    .line 382
    return-void
.end method

.method public startDrawingOffscreen()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->preRenderActions:Ljava/util/Queue;

    new-instance v1, Lcom/instagram/android/video/gl/GLRenderContext$5;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/gl/GLRenderContext$5;-><init>(Lcom/instagram/android/video/gl/GLRenderContext;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 416
    return-void
.end method

.method public startDrawingOnscreen()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->preRenderActions:Ljava/util/Queue;

    new-instance v1, Lcom/instagram/android/video/gl/GLRenderContext$6;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/gl/GLRenderContext$6;-><init>(Lcom/instagram/android/video/gl/GLRenderContext;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 425
    return-void
.end method

.method public useSurfaceTexture(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 346
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->preRenderActions:Ljava/util/Queue;

    monitor-enter v1

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->preRenderActions:Ljava/util/Queue;

    new-instance v2, Lcom/instagram/android/video/gl/GLRenderContext$3;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/video/gl/GLRenderContext$3;-><init>(Lcom/instagram/android/video/gl/GLRenderContext;I)V

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 357
    monitor-exit v1

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitUntilRenderFinished()V
    .locals 2

    .prologue
    .line 560
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFinishLock:Ljava/lang/Object;

    monitor-enter v1

    .line 561
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 563
    :try_start_1
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext;->mFinishLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    goto :goto_0

    .line 567
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 568
    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
