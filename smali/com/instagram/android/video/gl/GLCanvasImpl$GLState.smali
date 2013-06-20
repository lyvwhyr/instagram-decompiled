.class Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"


# instance fields
.field private mBlendEnabled:Z

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mLineSmooth:Z

.field private mLineWidth:F

.field private mTexEnvMode:I

.field private mTextureAlpha:F

.field private mTextureTarget:I


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/16 v2, 0xde1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v1, 0x3f80

    const/4 v3, 0x0

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    const/16 v0, 0x1e01

    iput v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mTexEnvMode:I

    .line 591
    iput v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mTextureAlpha:F

    .line 592
    iput v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mTextureTarget:I

    .line 593
    iput-boolean v5, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mBlendEnabled:Z

    .line 594
    iput v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mLineWidth:F

    .line 595
    iput-boolean v4, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mLineSmooth:Z

    .line 598
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 601
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 604
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 606
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 607
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 608
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 610
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v2, 0x45f00800

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 614
    const/high16 v0, 0x3f00

    invoke-interface {p1, v3, v0, v3, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 615
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearStencil(I)V

    .line 617
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 618
    const/16 v0, 0x303

    invoke-interface {p1, v5, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 621
    const/16 v0, 0xcf5

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V

    .line 622
    return-void
.end method


# virtual methods
.method public setBlendEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/16 v1, 0xbe2

    .line 679
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mBlendEnabled:Z

    if-ne v0, p1, :cond_0

    .line 686
    :goto_0
    return-void

    .line 680
    :cond_0
    iput-boolean p1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mBlendEnabled:Z

    .line 681
    if-eqz p1, :cond_1

    .line 682
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    goto :goto_0
.end method

.method public setColorMode(IF)V
    .locals 6
    .parameter "color"
    .parameter "alpha"

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x437f

    .line 650
    invoke-static {p1}, Lcom/instagram/android/video/util/VideoUtil;->isOpaque(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f733333

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 654
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mTextureAlpha:F

    .line 656
    invoke-virtual {p0, v1}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setTextureTarget(I)V

    .line 658
    ushr-int/lit8 v0, p1, 0x18

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const v1, 0x477fff00

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    div-float/2addr v0, v5

    .line 659
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/opengles/GL11;->glColor4x(IIII)V

    .line 664
    return-void

    :cond_1
    move v0, v1

    .line 650
    goto :goto_0
.end method

.method public setLineWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 631
    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mLineWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 632
    :cond_0
    iput p1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mLineWidth:F

    .line 633
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glLineWidth(F)V

    goto :goto_0
.end method

.method public setTexEnvMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 625
    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mTexEnvMode:I

    if-ne v0, p1, :cond_0

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_0
    iput p1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mTexEnvMode:I

    .line 627
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    int-to-float v3, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    goto :goto_0
.end method

.method public setTextureAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    const/high16 v1, 0x3f80

    .line 637
    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mTextureAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 638
    :cond_0
    iput p1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mTextureAlpha:F

    .line 639
    const v0, 0x3f733333

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 642
    const/16 v0, 0x1e01

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p1, p1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 645
    const/16 v0, 0x2100

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto :goto_0
.end method

.method public setTextureTarget(I)V
    .locals 2
    .parameter "target"

    .prologue
    .line 668
    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mTextureTarget:I

    if-ne v0, p1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mTextureTarget:I

    if-eqz v0, :cond_2

    .line 670
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mTextureTarget:I

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 672
    :cond_2
    iput p1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mTextureTarget:I

    .line 673
    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mTextureTarget:I

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->mTextureTarget:I

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0
.end method
