.class Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;
.super Landroid/view/animation/Animation;
.source "ActionBarHighlightButton.java"


# instance fields
.field private mCurrentAlpha:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFromAlpha:I

.field private mToAlpha:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .parameter "drawable"
    .parameter "fromAlpha"
    .parameter "toAlpha"

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;->mCurrentAlpha:I

    .line 115
    iput-object p1, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    iput p2, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;->mFromAlpha:I

    .line 117
    iput p3, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;->mToAlpha:I

    .line 118
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .parameter "interpolatedTime"
    .parameter "transformation"

    .prologue
    .line 122
    iget v0, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;->mFromAlpha:I

    int-to-float v0, v0

    iget v1, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;->mToAlpha:I

    iget v2, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;->mFromAlpha:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 123
    iget v1, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;->mCurrentAlpha:I

    if-eq v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 125
    iget-object v1, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 126
    iput v0, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;->mCurrentAlpha:I

    .line 128
    :cond_0
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method
