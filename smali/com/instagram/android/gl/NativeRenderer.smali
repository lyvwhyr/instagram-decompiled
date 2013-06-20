.class public Lcom/instagram/android/gl/NativeRenderer;
.super Ljava/lang/Object;
.source "NativeRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeRenderer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeOnDrawFrame()V
.end method

.method private native nativeOnSurfaceChanged(II)V
.end method

.method private native nativeOnSurfaceCreated()V
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/instagram/android/gl/NativeRenderer;->nativeOnDrawFrame()V

    .line 35
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 29
    invoke-direct {p0, p2, p3}, Lcom/instagram/android/gl/NativeRenderer;->nativeOnSurfaceChanged(II)V

    .line 30
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 22
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->onStartLoadMasterTexture()V

    .line 23
    invoke-direct {p0}, Lcom/instagram/android/gl/NativeRenderer;->nativeOnSurfaceCreated()V

    .line 24
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->onFinishLoadMasterTexture()V

    .line 25
    return-void
.end method
