.class public Lcom/instagram/android/creation/widget/ActionBarHighlightButton;
.super Landroid/widget/CompoundButton;
.source "ActionBarHighlightButton.java"


# static fields
.field private static final FADE_DURATION:I = 0x29a

.field private static final TAG:Ljava/lang/String; = "ActionBarHighlightButton"


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mHighlightAnimation:Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/m;->ActionBarHighlightButton:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    sget v1, Lcom/facebook/m;->ActionBarHighlightButton_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 38
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-direct {p0}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->init()V

    .line 41
    return-void
.end method

.method private calculateStartAlpha(F)I
    .locals 2
    .parameter "pressure"

    .prologue
    .line 86
    const/high16 v0, 0x3f80

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 87
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/f;->action_bar_glyph_pressed_overlay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 48
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->setClickable(Z)V

    .line 51
    return-void
.end method

.method private resetAnimation(F)V
    .locals 5
    .parameter "pressure"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->calculateStartAlpha(F)I

    move-result v0

    .line 92
    mul-int/lit16 v1, v0, 0x29a

    int-to-float v1, v1

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 94
    iget-object v2, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 96
    iget-object v2, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->mHighlightAnimation:Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->mHighlightAnimation:Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;

    invoke-virtual {v2}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;->cancel()V

    .line 100
    :cond_0
    new-instance v2, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;

    iget-object v3, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v2, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->mHighlightAnimation:Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;

    .line 101
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->mHighlightAnimation:Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 102
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->mHighlightAnimation:Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;->setDuration(J)V

    .line 103
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->mHighlightAnimation:Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;->setFillAfter(Z)V

    .line 104
    return-void
.end method


# virtual methods
.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 59
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 82
    :cond_0
    :goto_0
    return v2

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 82
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    .line 67
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->resetAnimation(F)V

    move v0, v1

    .line 69
    goto :goto_1

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->mHighlightAnimation:Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->mHighlightAnimation:Lcom/instagram/android/creation/widget/ActionBarHighlightButton$AlphaDrawableAnimation;

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    move v0, v1

    .line 76
    goto :goto_1

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
