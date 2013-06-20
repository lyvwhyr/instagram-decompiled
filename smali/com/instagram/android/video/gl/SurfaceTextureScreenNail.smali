.class public abstract Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/instagram/android/video/ui/ScreenNail;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xd
.end annotation


# static fields
.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final TAG:Ljava/lang/String; = "SurfaceTextureScreenNail"


# instance fields
.field protected mExtTexture:Lcom/instagram/android/video/gl/ExtTexture;

.field private mHasTexture:Z

.field private mHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTransform:[F

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mTransform:[F

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 46
    return-void
.end method

.method private static releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "st"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 69
    sget-boolean v0, Lcom/instagram/android/video/ApiHelper;->HAS_RELEASE_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 72
    :cond_0
    return-void
.end method

.method private static setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .parameter "st"
    .parameter "width"
    .parameter "height"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 61
    sget-boolean v0, Lcom/instagram/android/video/ApiHelper;->HAS_SET_DEFALT_BUFFER_SIZE:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/instagram/android/video/gl/ExtTexture;

    const v1, 0x8d65

    invoke-direct {v0, v1}, Lcom/instagram/android/video/gl/ExtTexture;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mExtTexture:Lcom/instagram/android/video/gl/ExtTexture;

    .line 50
    iget-object v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mExtTexture:Lcom/instagram/android/video/gl/ExtTexture;

    iget v1, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/video/gl/ExtTexture;->setSize(II)V

    .line 51
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mExtTexture:Lcom/instagram/android/video/gl/ExtTexture;

    invoke-virtual {v1}, Lcom/instagram/android/video/gl/ExtTexture;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mHeight:I

    invoke-static {v0, v1, v2}, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V

    .line 53
    iget-object v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 54
    monitor-enter p0

    .line 55
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/instagram/android/video/gl/GLCanvas;IIII)V
    .locals 7
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mHasTexture:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 129
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 115
    iget-object v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 118
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/instagram/android/video/gl/GLCanvas;->save(I)V

    .line 119
    div-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p2

    .line 120
    div-int/lit8 v1, p5, 0x2

    add-int/2addr v1, p3

    .line 121
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-interface {p1, v2, v3}, Lcom/instagram/android/video/gl/GLCanvas;->translate(FF)V

    .line 122
    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    invoke-interface {p1, v2, v3, v4}, Lcom/instagram/android/video/gl/GLCanvas;->scale(FFF)V

    .line 123
    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/instagram/android/video/gl/GLCanvas;->translate(FF)V

    .line 124
    const/4 v0, 0x0

    div-int/lit8 v1, p5, 0x2

    div-int/lit8 v2, p4, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/instagram/android/video/gl/GLCanvas;->translate(FF)V

    .line 125
    iget-object v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 126
    iget-object v1, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mExtTexture:Lcom/instagram/android/video/gl/ExtTexture;

    iget-object v2, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mTransform:[F

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/instagram/android/video/gl/GLCanvas;->drawTexture(Lcom/instagram/android/video/gl/BasicTexture;[FIIII)V

    .line 127
    invoke-interface {p1}, Lcom/instagram/android/video/gl/GLCanvas;->restore()V

    .line 128
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/instagram/android/video/gl/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public abstract noDraw()V
.end method

.method public abstract onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract recycle()V
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    monitor-enter p0

    .line 80
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 81
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mExtTexture:Lcom/instagram/android/video/gl/ExtTexture;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/ExtTexture;->recycle()V

    .line 83
    iput-object v1, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mExtTexture:Lcom/instagram/android/video/gl/ExtTexture;

    .line 84
    iget-object v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 85
    iput-object v1, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 86
    return-void

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resizeTexture()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mExtTexture:Lcom/instagram/android/video/gl/ExtTexture;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mExtTexture:Lcom/instagram/android/video/gl/ExtTexture;

    iget v1, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/video/gl/ExtTexture;->setSize(II)V

    .line 96
    iget-object v0, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mHeight:I

    invoke-static {v0, v1, v2}, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V

    .line 98
    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 89
    iput p1, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mWidth:I

    .line 90
    iput p2, p0, Lcom/instagram/android/video/gl/SurfaceTextureScreenNail;->mHeight:I

    .line 91
    return-void
.end method

.method protected updateTransformMatrix([F)V
    .locals 0
    .parameter "matrix"

    .prologue
    .line 136
    return-void
.end method
