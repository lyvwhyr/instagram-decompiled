.class public Lcom/instagram/android/maps/ui/IgAnimatingMapItem;
.super Landroid/widget/FrameLayout;
.source "IgAnimatingMapItem.java"


# static fields
.field public static final ANIMATION_DURATION:I = 0x12c

.field public static final INTENT_ANIMATING:Ljava/lang/String; = "ANIMATING"

.field public static final INTENT_ANIMATING_STOPPING:Ljava/lang/String; = "ANIMATING_STOPPING"

.field public static NUM_ANIMATING_ITEMS:I

.field public static final REVERSE_INTERPOLATOR:Lcom/instagram/android/animation/ReverseInterpolator;


# instance fields
.field private mAnimationFinishListener:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;

.field public mAnimationStartListener:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationStartListener;

.field private mOriginalSize:I

.field private mReverseAnimation:Z

.field public mReverseAnimationFinishListener:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;

.field public mReverseAnimationPreFinishListener:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationPreFinishListener;

.field private mScale:Z

.field protected mSet:Landroid/view/animation/AnimationSet;

.field private mTranslateAnimation:Lcom/instagram/android/animation/IgTranslateAnimation;

.field private startX:I

.field private startY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/instagram/android/animation/ReverseInterpolator;

    invoke-direct {v0}, Lcom/instagram/android/animation/ReverseInterpolator;-><init>()V

    sput-object v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->REVERSE_INTERPOLATOR:Lcom/instagram/android/animation/ReverseInterpolator;

    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->NUM_ANIMATING_ITEMS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mReverseAnimation:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mScale:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mReverseAnimation:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mScale:Z

    .line 58
    invoke-direct {p0, p2}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->init(Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mReverseAnimation:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mScale:Z

    .line 64
    invoke-direct {p0, p2}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->init(Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/maps/ui/IgAnimatingMapItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mReverseAnimation:Z

    return v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "attrs"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/m;->IgAnimatingMapItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    sget v1, Lcom/facebook/m;->IgAnimatingMapItem_scale:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mScale:Z

    .line 76
    return-void
.end method


# virtual methods
.method public addAnimation()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x12c

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 80
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mSet:Landroid/view/animation/AnimationSet;

    .line 82
    iget-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mScale:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/instagram/android/animation/IgScaleAnimation;

    iget v1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mOriginalSize:I

    iget v2, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mOriginalSize:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/animation/IgScaleAnimation;-><init>(IIZ)V

    .line 84
    invoke-virtual {v0, v8, v9}, Lcom/instagram/android/animation/IgScaleAnimation;->setDuration(J)V

    .line 85
    invoke-virtual {v0, v6, v7}, Lcom/instagram/android/animation/IgScaleAnimation;->setStartOffset(J)V

    .line 86
    invoke-virtual {v0, v4}, Lcom/instagram/android/animation/IgScaleAnimation;->setFillBefore(Z)V

    .line 87
    invoke-virtual {v0, v4}, Lcom/instagram/android/animation/IgScaleAnimation;->setFillAfter(Z)V

    .line 88
    iget-object v1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 91
    :cond_0
    new-instance v0, Lcom/instagram/android/animation/IgTranslateAnimation;

    iget v1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->startX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->startY:F

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/instagram/android/animation/IgTranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mTranslateAnimation:Lcom/instagram/android/animation/IgTranslateAnimation;

    .line 95
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mTranslateAnimation:Lcom/instagram/android/animation/IgTranslateAnimation;

    invoke-virtual {v0, v8, v9}, Lcom/instagram/android/animation/IgTranslateAnimation;->setDuration(J)V

    .line 96
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mTranslateAnimation:Lcom/instagram/android/animation/IgTranslateAnimation;

    invoke-virtual {v0, v6, v7}, Lcom/instagram/android/animation/IgTranslateAnimation;->setStartOffset(J)V

    .line 97
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mTranslateAnimation:Lcom/instagram/android/animation/IgTranslateAnimation;

    invoke-virtual {v0, v4}, Lcom/instagram/android/animation/IgTranslateAnimation;->setFillAfter(Z)V

    .line 98
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mTranslateAnimation:Lcom/instagram/android/animation/IgTranslateAnimation;

    invoke-virtual {v0, v4}, Lcom/instagram/android/animation/IgTranslateAnimation;->setFillBefore(Z)V

    .line 100
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 101
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mTranslateAnimation:Lcom/instagram/android/animation/IgTranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 103
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/instagram/android/maps/ui/IgAnimatingMapItem$PreFinishAnimation;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem$PreFinishAnimation;-><init>(Lcom/instagram/android/maps/ui/IgAnimatingMapItem;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 105
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->addOtherAnimationsToSet(Landroid/view/animation/AnimationSet;)V

    .line 106
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    return-void
.end method

.method protected addOtherAnimationsToSet(Landroid/view/animation/AnimationSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 111
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 198
    const-string v1, "IgAnimatingMapItem"

    const-string v2, "draw %s %s %s %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v0, 0x1

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    .line 222
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getTop()I

    move-result v1

    if-nez v1, :cond_0

    .line 226
    :goto_0
    return v0

    .line 225
    :cond_0
    const-string v1, "IgAnimatingMapItem"

    const-string v2, "drawChild %s %s %s %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getLeft()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getRight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getBottom()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 3

    .prologue
    .line 126
    sget v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->NUM_ANIMATING_ITEMS:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->NUM_ANIMATING_ITEMS:I

    .line 127
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mAnimationFinishListener:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mAnimationFinishListener:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;->onFinish(Landroid/view/View;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mReverseAnimationFinishListener:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mReverseAnimation:Z

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mReverseAnimationFinishListener:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;->onFinish(Landroid/view/View;)V

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "ANIMATING_STOPPING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->b(Landroid/content/Intent;)V

    .line 135
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationEnd()V

    .line 136
    return-void
.end method

.method protected onAnimationStart()V
    .locals 3

    .prologue
    .line 115
    sget v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->NUM_ANIMATING_ITEMS:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->NUM_ANIMATING_ITEMS:I

    .line 116
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mAnimationStartListener:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationStartListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mAnimationStartListener:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationStartListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationStartListener;->onStart(Landroid/view/View;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "ANIMATING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->b(Landroid/content/Intent;)V

    .line 121
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationStart()V

    .line 122
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 190
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 191
    const-string v0, "IgAnimatingMapItem"

    const-string v1, "onLayout %s %s %s %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 69
    sget v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->NUM_ANIMATING_ITEMS:I

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimationFinishListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;)V
    .locals 0
    .parameter "ranimationFinishListener"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mAnimationFinishListener:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;

    .line 166
    return-void
.end method

.method public setAnimationStartListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationStartListener;)V
    .locals 0
    .parameter "animationStartListener"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mAnimationStartListener:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationStartListener;

    .line 176
    return-void
.end method

.method public setOriginalSize(I)V
    .locals 0
    .parameter "originalSize"

    .prologue
    .line 152
    iput p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mOriginalSize:I

    .line 153
    return-void
.end method

.method public setReverseAnimationFinishListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;)V
    .locals 0
    .parameter "reverseAnimationFinishListener"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mReverseAnimationFinishListener:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;

    .line 171
    return-void
.end method

.method public setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationPreFinishListener;)V
    .locals 0
    .parameter "reverseAnimationPreFinishListener"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mReverseAnimationPreFinishListener:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationPreFinishListener;

    .line 181
    return-void
.end method

.method public setStartX(I)V
    .locals 0
    .parameter "startX"

    .prologue
    .line 156
    iput p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->startX:I

    .line 157
    return-void
.end method

.method public setStartY(F)V
    .locals 0
    .parameter "startY"

    .prologue
    .line 160
    iput p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->startY:F

    .line 161
    return-void
.end method

.method public shouldScale()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mScale:Z

    return v0
.end method

.method public translateBack()V
    .locals 2

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mReverseAnimation:Z

    .line 140
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->reset()V

    .line 141
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mSet:Landroid/view/animation/AnimationSet;

    sget-object v1, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->REVERSE_INTERPOLATOR:Lcom/instagram/android/animation/ReverseInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 142
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    return-void
.end method

.method public translateBack(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mTranslateAnimation:Lcom/instagram/android/animation/IgTranslateAnimation;

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getLeft()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/animation/IgTranslateAnimation;->setFromXValue(F)V

    .line 147
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mTranslateAnimation:Lcom/instagram/android/animation/IgTranslateAnimation;

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/e;->maps_translate_animation_back_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/animation/IgTranslateAnimation;->setFromYValue(F)V

    .line 148
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->translateBack()V

    .line 149
    return-void
.end method
