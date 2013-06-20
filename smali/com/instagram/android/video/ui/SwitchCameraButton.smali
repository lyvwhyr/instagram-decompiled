.class public Lcom/instagram/android/video/ui/SwitchCameraButton;
.super Landroid/widget/ImageButton;
.source "SwitchCameraButton.java"


# static fields
.field private static final FADE_DURATION:I = 0x29a

.field private static final TAG:Ljava/lang/String; = "SwitchCameraButton"


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mHighlightAnimation:Lcom/instagram/android/video/ui/SwitchCameraButton$AlphaDrawableAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/instagram/android/video/ui/SwitchCameraButton;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget v0, Lcom/facebook/m;->ActionBarHighlightButton_button:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/SwitchCameraButton;->setBackgroundResource(I)V

    .line 35
    invoke-direct {p0}, Lcom/instagram/android/video/ui/SwitchCameraButton;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0}, Lcom/instagram/android/video/ui/SwitchCameraButton;->init()V

    .line 41
    return-void
.end method

.method private calculateStartAlpha(F)I
    .locals 2
    .parameter "pressure"

    .prologue
    .line 80
    const/high16 v0, 0x3f80

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 81
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/SwitchCameraButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/f;->action_bar_glyph_pressed_overlay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/ui/SwitchCameraButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    iget-object v0, p0, Lcom/instagram/android/video/ui/SwitchCameraButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 48
    iget-object v0, p0, Lcom/instagram/android/video/ui/SwitchCameraButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/SwitchCameraButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method

.method private resetAnimation(F)V
    .locals 5
    .parameter "pressure"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/instagram/android/video/ui/SwitchCameraButton;->calculateStartAlpha(F)I

    move-result v0

    .line 86
    mul-int/lit16 v1, v0, 0x29a

    int-to-float v1, v1

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 88
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/SwitchCameraButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 90
    iget-object v2, p0, Lcom/instagram/android/video/ui/SwitchCameraButton;->mHighlightAnimation:Lcom/instagram/android/video/ui/SwitchCameraButton$AlphaDrawableAnimation;

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/instagram/android/video/ui/SwitchCameraButton;->mHighlightAnimation:Lcom/instagram/android/video/ui/SwitchCameraButton$AlphaDrawableAnimation;

    invoke-virtual {v2}, Lcom/instagram/android/video/ui/SwitchCameraButton$AlphaDrawableAnimation;->cancel()V

    .line 94
    :cond_0
    new-instance v2, Lcom/instagram/android/video/ui/SwitchCameraButton$AlphaDrawableAnimation;

    invoke-virtual {p0}, Lcom/instagram/android/video/ui/SwitchCameraButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/instagram/android/video/ui/SwitchCameraButton$AlphaDrawableAnimation;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v2, p0, Lcom/instagram/android/video/ui/SwitchCameraButton;->mHighlightAnimation:Lcom/instagram/android/video/ui/SwitchCameraButton$AlphaDrawableAnimation;

    .line 95
    iget-object v0, p0, Lcom/instagram/android/video/ui/SwitchCameraButton;->mHighlightAnimation:Lcom/instagram/android/video/ui/SwitchCameraButton$AlphaDrawableAnimation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/instagram/android/video/ui/SwitchCameraButton$AlphaDrawableAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 96
    iget-object v0, p0, Lcom/instagram/android/video/ui/SwitchCameraButton;->mHighlightAnimation:Lcom/instagram/android/video/ui/SwitchCameraButton$AlphaDrawableAnimation;

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/video/ui/SwitchCameraButton$AlphaDrawableAnimation;->setDuration(J)V

    .line 97
    iget-object v0, p0, Lcom/instagram/android/video/ui/SwitchCameraButton;->mHighlightAnimation:Lcom/instagram/android/video/ui/SwitchCameraButton$AlphaDrawableAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/SwitchCameraButton$AlphaDrawableAnimation;->setFillAfter(Z)V

    .line 98
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 53
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/SwitchCameraButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 76
    :cond_0
    :goto_0
    return v2

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 76
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    .line 61
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/android/video/ui/SwitchCameraButton;->resetAnimation(F)V

    move v0, v1

    .line 63
    goto :goto_1

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/video/ui/SwitchCameraButton;->mHighlightAnimation:Lcom/instagram/android/video/ui/SwitchCameraButton$AlphaDrawableAnimation;

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/instagram/android/video/ui/SwitchCameraButton;->mHighlightAnimation:Lcom/instagram/android/video/ui/SwitchCameraButton$AlphaDrawableAnimation;

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/SwitchCameraButton;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    move v0, v1

    .line 70
    goto :goto_1

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
