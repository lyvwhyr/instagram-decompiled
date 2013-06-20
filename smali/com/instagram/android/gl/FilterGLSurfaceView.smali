.class public Lcom/instagram/android/gl/FilterGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "FilterGLSurfaceView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FilterGLSurfaceView"


# instance fields
.field final mRenderer:Lcom/instagram/android/gl/NativeRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Lcom/instagram/android/gl/NativeRenderer;

    invoke-direct {v0}, Lcom/instagram/android/gl/NativeRenderer;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/gl/FilterGLSurfaceView;->mRenderer:Lcom/instagram/android/gl/NativeRenderer;

    .line 29
    invoke-direct {p0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Lcom/instagram/android/gl/NativeRenderer;

    invoke-direct {v0}, Lcom/instagram/android/gl/NativeRenderer;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/gl/FilterGLSurfaceView;->mRenderer:Lcom/instagram/android/gl/NativeRenderer;

    .line 34
    invoke-direct {p0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->init()V

    .line 35
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/instagram/android/gl/FilterGLSurfaceView;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 5
    .parameter "prompt"
    .parameter "egl"

    .prologue
    .line 94
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 95
    const-string v1, "FilterGLSurfaceView"

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/common/i/b;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/c/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method private guardedSetPreserveEGLContextOnPause()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 73
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->setZOrderOnTop(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 48
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 49
    new-instance v0, Lcom/instagram/android/gl/FilterGLSurfaceView$ContextFactory;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/instagram/android/gl/FilterGLSurfaceView$ContextFactory;-><init>(Lcom/instagram/android/gl/FilterGLSurfaceView$1;)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 50
    new-instance v0, Lcom/instagram/android/gl/FilterGLSurfaceView$ConfigChooser;

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/gl/FilterGLSurfaceView$ConfigChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->guardedSetPreserveEGLContextOnPause()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/gl/FilterGLSurfaceView;->mRenderer:Lcom/instagram/android/gl/NativeRenderer;

    invoke-virtual {p0, v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 61
    invoke-virtual {p0, v4}, Lcom/instagram/android/gl/FilterGLSurfaceView;->setRenderMode(I)V

    .line 62
    return-void
.end method


# virtual methods
.method public getRenderer()Lcom/instagram/android/gl/NativeRenderer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/instagram/android/gl/FilterGLSurfaceView;->mRenderer:Lcom/instagram/android/gl/NativeRenderer;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    .line 80
    invoke-virtual {p0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/gl/FilterGLSurfaceView;->setMeasuredDimension(II)V

    .line 81
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 86
    return-void
.end method
