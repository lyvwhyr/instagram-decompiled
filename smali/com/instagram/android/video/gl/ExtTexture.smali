.class public Lcom/instagram/android/video/gl/ExtTexture;
.super Lcom/instagram/android/video/gl/BasicTexture;
.source "ExtTexture.java"


# static fields
.field private static sCropRect:[F

.field private static sTextureId:[I


# instance fields
.field private mTarget:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/instagram/android/video/gl/ExtTexture;->sTextureId:[I

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/instagram/android/video/gl/ExtTexture;->sCropRect:[F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "target"

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Lcom/instagram/android/video/gl/BasicTexture;-><init>()V

    .line 33
    const/4 v0, 0x1

    sget-object v1, Lcom/instagram/android/video/gl/ExtTexture;->sTextureId:[I

    invoke-static {v0, v1, v2}, Lcom/instagram/android/video/gl/GLId;->glGenTextures(I[II)V

    .line 34
    sget-object v0, Lcom/instagram/android/video/gl/ExtTexture;->sTextureId:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/instagram/android/video/gl/ExtTexture;->mId:I

    .line 35
    iput p1, p0, Lcom/instagram/android/video/gl/ExtTexture;->mTarget:I

    .line 36
    return-void
.end method

.method private uploadToCanvas(Lcom/instagram/android/video/gl/GLCanvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const v8, 0x812f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x46180400

    .line 39
    invoke-interface {p1}, Lcom/instagram/android/video/gl/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/ExtTexture;->getWidth()I

    move-result v1

    .line 42
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/ExtTexture;->getHeight()I

    move-result v2

    .line 46
    sget-object v3, Lcom/instagram/android/video/gl/ExtTexture;->sCropRect:[F

    const/4 v4, 0x0

    aput v4, v3, v6

    .line 47
    sget-object v3, Lcom/instagram/android/video/gl/ExtTexture;->sCropRect:[F

    int-to-float v4, v2

    aput v4, v3, v7

    .line 48
    sget-object v3, Lcom/instagram/android/video/gl/ExtTexture;->sCropRect:[F

    const/4 v4, 0x2

    int-to-float v1, v1

    aput v1, v3, v4

    .line 49
    sget-object v1, Lcom/instagram/android/video/gl/ExtTexture;->sCropRect:[F

    const/4 v3, 0x3

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v1, v3

    .line 52
    iget v1, p0, Lcom/instagram/android/video/gl/ExtTexture;->mTarget:I

    iget v2, p0, Lcom/instagram/android/video/gl/ExtTexture;->mId:I

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 53
    iget v1, p0, Lcom/instagram/android/video/gl/ExtTexture;->mTarget:I

    const v2, 0x8b9d

    sget-object v3, Lcom/instagram/android/video/gl/ExtTexture;->sCropRect:[F

    invoke-interface {v0, v1, v2, v3, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 55
    iget v1, p0, Lcom/instagram/android/video/gl/ExtTexture;->mTarget:I

    const/16 v2, 0x2802

    invoke-interface {v0, v1, v2, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 57
    iget v1, p0, Lcom/instagram/android/video/gl/ExtTexture;->mTarget:I

    const/16 v2, 0x2803

    invoke-interface {v0, v1, v2, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 59
    iget v1, p0, Lcom/instagram/android/video/gl/ExtTexture;->mTarget:I

    const/16 v2, 0x2801

    invoke-interface {v0, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 61
    iget v1, p0, Lcom/instagram/android/video/gl/ExtTexture;->mTarget:I

    const/16 v2, 0x2800

    invoke-interface {v0, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/instagram/android/video/gl/ExtTexture;->setAssociatedCanvas(Lcom/instagram/android/video/gl/GLCanvas;)V

    .line 65
    iput v7, p0, Lcom/instagram/android/video/gl/ExtTexture;->mState:I

    .line 66
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

.method public getTarget()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/instagram/android/video/gl/ExtTexture;->mTarget:I

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
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method protected onBind(Lcom/instagram/android/video/gl/GLCanvas;)Z
    .locals 1
    .parameter "canvas"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/ExtTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/instagram/android/video/gl/ExtTexture;->uploadToCanvas(Lcom/instagram/android/video/gl/GLCanvas;)V

    .line 74
    :cond_0
    const/4 v0, 0x1

    return v0
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
    .line 89
    return-void
.end method
