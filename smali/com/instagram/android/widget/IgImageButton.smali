.class public Lcom/instagram/android/widget/IgImageButton;
.super Landroid/widget/FrameLayout;
.source "IgImageButton.java"


# static fields
.field private static final HIDE_OVERLAY_DELAY:I = 0xc8

.field private static final HIDE_OVERLAY_DURATION:I = 0x190

.field private static final MESSAGE_HIDE_OVERLAY:I = 0x2

.field private static final MESSAGE_SHOW_OVERLAY:I = 0x1

.field private static final SHOW_OVERLAY_DELAY:I = 0x4b


# instance fields
.field private mAlphaHelper:Lcom/instagram/util/AlphaHelper;

.field private mFadeoutAnimation:Landroid/view/animation/AlphaAnimation;

.field private final mHandler:Lcom/instagram/android/widget/IgImageButton$OverlayHandler;

.field private mImageView:Lcom/instagram/android/widget/ConstrainedImageView;

.field private mTouchOverlay:Landroid/view/View;

.field private mVideoOverlay:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/widget/IgImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/android/widget/IgImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Lcom/instagram/android/widget/IgImageButton$OverlayHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/widget/IgImageButton$OverlayHandler;-><init>(Lcom/instagram/android/widget/IgImageButton;Lcom/instagram/android/widget/IgImageButton$1;)V

    iput-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mHandler:Lcom/instagram/android/widget/IgImageButton$OverlayHandler;

    .line 47
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->layout_imagebutton:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/instagram/android/widget/IgImageButton;->createAnimations()V

    .line 51
    sget v0, Lcom/facebook/g;->grid_item_with_frame_iv:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgImageButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/ConstrainedImageView;

    iput-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mImageView:Lcom/instagram/android/widget/ConstrainedImageView;

    .line 52
    iget-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mImageView:Lcom/instagram/android/widget/ConstrainedImageView;

    new-instance v1, Lcom/instagram/android/widget/IgImageButton$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/IgImageButton$1;-><init>(Lcom/instagram/android/widget/IgImageButton;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/ConstrainedImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    sget v0, Lcom/facebook/g;->touch_overlay:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgImageButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mTouchOverlay:Landroid/view/View;

    .line 90
    sget v0, Lcom/facebook/g;->video_overlay:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgImageButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mVideoOverlay:Landroid/view/View;

    .line 91
    invoke-direct {p0}, Lcom/instagram/android/widget/IgImageButton;->hideTouchOverlay()V

    .line 92
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/widget/IgImageButton;)Lcom/instagram/android/widget/IgImageButton$OverlayHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mHandler:Lcom/instagram/android/widget/IgImageButton$OverlayHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/widget/IgImageButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/android/widget/IgImageButton;->fadeOutTouchOverlay()V

    return-void
.end method

.method static synthetic access$300(Lcom/instagram/android/widget/IgImageButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/android/widget/IgImageButton;->showTouchOverlay()V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/widget/IgImageButton;)Lcom/instagram/android/widget/ConstrainedImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mImageView:Lcom/instagram/android/widget/ConstrainedImageView;

    return-object v0
.end method

.method private createAnimations()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/instagram/util/AlphaHelper;

    invoke-direct {v0}, Lcom/instagram/util/AlphaHelper;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mAlphaHelper:Lcom/instagram/util/AlphaHelper;

    .line 138
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mFadeoutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 139
    iget-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mFadeoutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 140
    iget-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mFadeoutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 141
    iget-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mFadeoutAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/instagram/android/widget/IgImageButton$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/IgImageButton$2;-><init>(Lcom/instagram/android/widget/IgImageButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 155
    return-void
.end method

.method private fadeOutTouchOverlay()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mTouchOverlay:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/android/widget/IgImageButton;->mFadeoutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 134
    return-void
.end method

.method private hideTouchOverlay()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mAlphaHelper:Lcom/instagram/util/AlphaHelper;

    iget-object v1, p0, Lcom/instagram/android/widget/IgImageButton;->mTouchOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/instagram/util/AlphaHelper;->hide(Landroid/view/View;)V

    .line 130
    return-void
.end method

.method private showTouchOverlay()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mImageView:Lcom/instagram/android/widget/ConstrainedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/ConstrainedImageView;->setDrawFrameDecorationNewStyle(Z)V

    .line 124
    iget-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mTouchOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 125
    iget-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mAlphaHelper:Lcom/instagram/util/AlphaHelper;

    iget-object v1, p0, Lcom/instagram/android/widget/IgImageButton;->mTouchOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/instagram/util/AlphaHelper;->show(Landroid/view/View;)V

    .line 126
    return-void
.end method


# virtual methods
.method public getImageView()Lcom/instagram/android/widget/ConstrainedImageView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mImageView:Lcom/instagram/android/widget/ConstrainedImageView;

    return-object v0
.end method

.method public getVideoOverlayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/instagram/android/widget/IgImageButton;->mVideoOverlay:Landroid/view/View;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, 0x4000

    .line 104
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 106
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/widget/IgImageButton;->mImageView:Lcom/instagram/android/widget/ConstrainedImageView;

    invoke-virtual {v1}, Lcom/instagram/android/widget/ConstrainedImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/instagram/android/widget/IgImageButton;->mImageView:Lcom/instagram/android/widget/ConstrainedImageView;

    invoke-virtual {v1}, Lcom/instagram/android/widget/ConstrainedImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 110
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/widget/IgImageButton;->mImageView:Lcom/instagram/android/widget/ConstrainedImageView;

    invoke-virtual {v2}, Lcom/instagram/android/widget/ConstrainedImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/instagram/android/widget/IgImageButton;->mImageView:Lcom/instagram/android/widget/ConstrainedImageView;

    invoke-virtual {v2}, Lcom/instagram/android/widget/ConstrainedImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 118
    iget-object v2, p0, Lcom/instagram/android/widget/IgImageButton;->mTouchOverlay:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 119
    return-void
.end method
