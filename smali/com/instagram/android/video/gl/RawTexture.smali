.class public Lcom/instagram/android/video/gl/RawTexture;
.super Lcom/instagram/android/video/gl/BasicTexture;
.source "RawTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RawTexture"

.field private static final sCropRect:[F

.field private static final sTextureId:[I


# instance fields
.field private final mOpaque:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/instagram/android/video/gl/RawTexture;->sTextureId:[I

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/instagram/android/video/gl/RawTexture;->sCropRect:[F

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "opaque"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/instagram/android/video/gl/BasicTexture;-><init>()V

    .line 36
    iput-boolean p3, p0, Lcom/instagram/android/video/gl/RawTexture;->mOpaque:Z

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/video/gl/RawTexture;->setSize(II)V

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic draw(Lcom/instagram/android/video/gl/GLCanvas;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/video/gl/BasicTexture;->draw(Lcom/instagram/android/video/gl/GLCanvas;II)V

    return-void
.end method

.method public bridge synthetic draw(Lcom/instagram/android/video/gl/GLCanvas;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 26
    invoke-super/range {p0 .. p5}, Lcom/instagram/android/video/gl/BasicTexture;->draw(Lcom/instagram/android/video/gl/GLCanvas;IIII)V

    return-void
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/instagram/android/video/gl/BasicTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/instagram/android/video/gl/BasicTexture;->getId()I

    move-result v0

    return v0
.end method

.method protected getTarget()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0xde1

    return v0
.end method

.method public bridge synthetic getTextureHeight()I
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/instagram/android/video/gl/BasicTexture;->getTextureHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureWidth()I
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/instagram/android/video/gl/BasicTexture;->getTextureWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/instagram/android/video/gl/BasicTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasBorder()Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/instagram/android/video/gl/BasicTexture;->hasBorder()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoaded()Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/instagram/android/video/gl/BasicTexture;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/RawTexture;->mOpaque:Z

    return v0
.end method

.method protected onBind(Lcom/instagram/android/video/gl/GLCanvas;)Z
    .locals 2
    .parameter "canvas"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/RawTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    .line 83
    :cond_0
    const-string v0, "RawTexture"

    const-string v1, "lost the content due to context change"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepare(Lcom/instagram/android/video/gl/GLCanvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/16 v3, 0x1908

    const v7, 0x46180400

    const/4 v10, 0x1

    const/16 v1, 0xde1

    const/4 v2, 0x0

    .line 46
    invoke-interface {p1}, Lcom/instagram/android/video/gl/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v0

    .line 52
    sget-object v4, Lcom/instagram/android/video/gl/RawTexture;->sCropRect:[F

    const/4 v5, 0x0

    aput v5, v4, v2

    .line 53
    sget-object v4, Lcom/instagram/android/video/gl/RawTexture;->sCropRect:[F

    iget v5, p0, Lcom/instagram/android/video/gl/RawTexture;->mHeight:I

    int-to-float v5, v5

    aput v5, v4, v10

    .line 54
    sget-object v4, Lcom/instagram/android/video/gl/RawTexture;->sCropRect:[F

    const/4 v5, 0x2

    iget v6, p0, Lcom/instagram/android/video/gl/RawTexture;->mWidth:I

    int-to-float v6, v6

    aput v6, v4, v5

    .line 55
    sget-object v4, Lcom/instagram/android/video/gl/RawTexture;->sCropRect:[F

    const/4 v5, 0x3

    iget v6, p0, Lcom/instagram/android/video/gl/RawTexture;->mHeight:I

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v5

    .line 58
    sget-object v4, Lcom/instagram/android/video/gl/RawTexture;->sTextureId:[I

    invoke-static {v10, v4, v2}, Lcom/instagram/android/video/gl/GLId;->glGenTextures(I[II)V

    .line 59
    sget-object v4, Lcom/instagram/android/video/gl/RawTexture;->sTextureId:[I

    aget v4, v4, v2

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 60
    const v4, 0x8b9d

    sget-object v5, Lcom/instagram/android/video/gl/RawTexture;->sCropRect:[F

    invoke-interface {v0, v1, v4, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 62
    const/16 v4, 0x2802

    const v5, 0x812f

    invoke-interface {v0, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 64
    const/16 v4, 0x2803

    const v5, 0x812f

    invoke-interface {v0, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 66
    const/16 v4, 0x2801

    invoke-interface {v0, v1, v4, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 68
    const/16 v4, 0x2800

    invoke-interface {v0, v1, v4, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 71
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/RawTexture;->getTextureWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/instagram/android/video/gl/RawTexture;->getTextureHeight()I

    move-result v5

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move v6, v2

    move v7, v3

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 75
    sget-object v0, Lcom/instagram/android/video/gl/RawTexture;->sTextureId:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/instagram/android/video/gl/RawTexture;->mId:I

    .line 76
    iput v10, p0, Lcom/instagram/android/video/gl/RawTexture;->mState:I

    .line 77
    invoke-virtual {p0, p1}, Lcom/instagram/android/video/gl/RawTexture;->setAssociatedCanvas(Lcom/instagram/android/video/gl/GLCanvas;)V

    .line 78
    return-void
.end method

.method public bridge synthetic recycle()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/instagram/android/video/gl/BasicTexture;->recycle()V

    return-void
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
