.class public Lcom/instagram/android/animation/IgScaleAnimation;
.super Landroid/view/animation/Animation;
.source "IgScaleAnimation.java"


# instance fields
.field private final mFrom:Z

.field private mFromX:F

.field private mFromY:F

.field private final mHeight:I

.field private mToX:F

.field private mToY:F

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "from"

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 20
    iput p1, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mWidth:I

    .line 21
    iput p2, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mHeight:I

    .line 22
    iput-boolean p3, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mFrom:Z

    .line 23
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v1, 0x3f80

    .line 37
    .line 40
    iget v0, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mFromX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mToX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 41
    :cond_0
    iget v0, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mFromX:F

    iget v2, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mToX:F

    iget v3, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mFromX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    .line 43
    :goto_0
    iget v2, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mFromY:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    iget v2, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mToY:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    .line 44
    :cond_1
    iget v1, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mFromY:F

    iget v2, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mToY:F

    iget v3, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mFromY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 47
    :cond_2
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 48
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    const/high16 v2, 0x3f80

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 29
    iget v0, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mWidth:I

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mFromX:F

    .line 30
    iget v0, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mHeight:I

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mFromY:F

    .line 31
    iput v2, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mToX:F

    .line 32
    iput v2, p0, Lcom/instagram/android/animation/IgScaleAnimation;->mToY:F

    .line 33
    return-void
.end method
