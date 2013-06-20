.class public Lcom/instagram/android/animation/IgTranslateAnimation;
.super Landroid/view/animation/Animation;
.source "IgTranslateAnimation.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "IgTranslateAnimation"


# instance fields
.field private mFromXDelta:F

.field private mFromXType:I

.field private mFromXValue:F

.field private mFromYDelta:F

.field private mFromYType:I

.field private mFromYValue:F

.field private mToXDelta:F

.field private mToXType:I

.field private mToXValue:F

.field private mToYDelta:F

.field private mToYType:I

.field private mToYValue:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 11
    iput v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromXType:I

    .line 12
    iput v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToXType:I

    .line 14
    iput v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromYType:I

    .line 15
    iput v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToYType:I

    .line 17
    iput v1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromXValue:F

    .line 18
    iput v1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToXValue:F

    .line 20
    iput v1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromYValue:F

    .line 21
    iput v1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToYValue:F

    .line 41
    iput p1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromXValue:F

    .line 42
    iput p2, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToXValue:F

    .line 43
    iput p3, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromYValue:F

    .line 44
    iput p4, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToYValue:F

    .line 46
    iput v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromXType:I

    .line 47
    iput v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToXType:I

    .line 48
    iput v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromYType:I

    .line 49
    iput v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToYType:I

    .line 50
    return-void
.end method

.method public constructor <init>(IFIFIFIF)V
    .locals 2
    .parameter "fromXType"
    .parameter "fromXValue"
    .parameter "toXType"
    .parameter "toXValue"
    .parameter "fromYType"
    .parameter "fromYValue"
    .parameter "toYType"
    .parameter "toYValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 11
    iput v1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromXType:I

    .line 12
    iput v1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToXType:I

    .line 14
    iput v1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromYType:I

    .line 15
    iput v1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToYType:I

    .line 17
    iput v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromXValue:F

    .line 18
    iput v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToXValue:F

    .line 20
    iput v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromYValue:F

    .line 21
    iput v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToYValue:F

    .line 83
    iput p2, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromXValue:F

    .line 84
    iput p4, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToXValue:F

    .line 85
    iput p6, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromYValue:F

    .line 86
    iput p8, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToYValue:F

    .line 88
    iput p1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromXType:I

    .line 89
    iput p3, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToXType:I

    .line 90
    iput p5, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromYType:I

    .line 91
    iput p7, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToYType:I

    .line 92
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 96
    iget v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromXDelta:F

    .line 97
    iget v1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromYDelta:F

    .line 98
    iget v2, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromXDelta:F

    iget v3, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToXDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 99
    iget v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromXDelta:F

    iget v2, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToXDelta:F

    iget v3, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromXDelta:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    .line 101
    :cond_0
    iget v2, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromYDelta:F

    iget v3, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToYDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 102
    iget v1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromYDelta:F

    iget v2, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToYDelta:F

    iget v3, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromYDelta:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 104
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 105
    return-void
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 110
    iget v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromXType:I

    iget v1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/instagram/android/animation/IgTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromXDelta:F

    .line 111
    iget v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToXType:I

    iget v1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/instagram/android/animation/IgTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToXDelta:F

    .line 112
    iget v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromYType:I

    iget v1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/instagram/android/animation/IgTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromYDelta:F

    .line 113
    iget v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToYType:I

    iget v1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/instagram/android/animation/IgTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToYDelta:F

    .line 114
    return-void
.end method

.method public setFromXValue(F)V
    .locals 0
    .parameter "fromXValue"

    .prologue
    .line 117
    iput p1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromXValue:F

    .line 118
    return-void
.end method

.method public setFromYValue(F)V
    .locals 0
    .parameter "fromYValue"

    .prologue
    .line 125
    iput p1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mFromYValue:F

    .line 126
    return-void
.end method

.method public setToXValue(F)V
    .locals 0
    .parameter "toXValue"

    .prologue
    .line 121
    iput p1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToXValue:F

    .line 122
    return-void
.end method

.method public setToYValue(F)V
    .locals 0
    .parameter "toYValue"

    .prologue
    .line 129
    iput p1, p0, Lcom/instagram/android/animation/IgTranslateAnimation;->mToYValue:F

    .line 130
    return-void
.end method
