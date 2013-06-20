.class public Lcom/instagram/android/video/ui/MediaActionsView;
.super Landroid/widget/FrameLayout;
.source "MediaActionsView.java"


# instance fields
.field private final FADE_IN_DURATION_MS:I

.field private final FADE_OUT_DURATION_MS:I

.field private final mCamInnerView:Landroid/view/View;

.field private final mCamOuterView:Landroid/view/View;

.field private final mDoubleTapAnimation:Landroid/view/animation/Animation;

.field private final mHeartView:Landroid/view/View;

.field private final mLoadingAnimation:Landroid/view/animation/Animation;

.field private final mPauseView:Landroid/view/View;

.field private final mPlayView:Landroid/view/View;

.field private final mRetryView:Landroid/view/View;

.field private mVideoIconState:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

.field private final mVideoStates:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/video/ui/MediaActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/android/video/ui/MediaActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v0, 0xfa

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->FADE_IN_DURATION_MS:I

    .line 31
    iput v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->FADE_OUT_DURATION_MS:I

    .line 44
    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->HIDDEN:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    iput-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mVideoIconState:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->view_media_actions:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    sget v0, Lcom/facebook/g;->video_states:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/MediaActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mVideoStates:Landroid/view/View;

    .line 60
    sget v0, Lcom/facebook/g;->play_button:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/MediaActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mPlayView:Landroid/view/View;

    .line 61
    sget v0, Lcom/facebook/g;->pause_button:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/MediaActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mPauseView:Landroid/view/View;

    .line 62
    sget v0, Lcom/facebook/g;->camouter:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/MediaActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mCamOuterView:Landroid/view/View;

    .line 63
    sget v0, Lcom/facebook/g;->caminner:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/MediaActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mCamInnerView:Landroid/view/View;

    .line 64
    sget v0, Lcom/facebook/g;->retry:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/MediaActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mRetryView:Landroid/view/View;

    .line 66
    sget v0, Lcom/facebook/g;->doubletap_heart:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/MediaActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mHeartView:Landroid/view/View;

    .line 68
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/MediaActionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/b;->doubletap_heart:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mDoubleTapAnimation:Landroid/view/animation/Animation;

    .line 69
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mDoubleTapAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/instagram/android/video/ui/MediaActionsView$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/ui/MediaActionsView$1;-><init>(Lcom/instagram/android/video/ui/MediaActionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/MediaActionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/b;->video_loading_indicator:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mLoadingAnimation:Landroid/view/animation/Animation;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/video/ui/MediaActionsView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mHeartView:Landroid/view/View;

    return-object v0
.end method

.method private fadeViewIn(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 143
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 144
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 145
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 148
    return-void
.end method

.method private fadeViewOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 152
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 153
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 154
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 155
    new-instance v1, Lcom/instagram/android/video/ui/MediaActionsView$2;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/video/ui/MediaActionsView$2;-><init>(Lcom/instagram/android/video/ui/MediaActionsView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 162
    return-void
.end method

.method private setVideoIndicatorVisibility(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V
    .locals 5
    .parameter "videoIconState"

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 123
    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->LOADING:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->AUTOPLAY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 126
    :goto_0
    iget-object v4, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mPauseView:Landroid/view/View;

    sget-object v2, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->PAUSE:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    if-ne p1, v2, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v4, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mPlayView:Landroid/view/View;

    sget-object v2, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->PLAY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    if-ne p1, v2, :cond_3

    move v2, v1

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v4, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mRetryView:Landroid/view/View;

    sget-object v2, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->RETRY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    if-ne p1, v2, :cond_4

    move v2, v1

    :goto_3
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v4, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mCamOuterView:Landroid/view/View;

    if-eqz v0, :cond_5

    move v2, v1

    :goto_4
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v2, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mCamInnerView:Landroid/view/View;

    if-eqz v0, :cond_6

    :goto_5
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->LOADING:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    if-ne p1, v0, :cond_7

    .line 134
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mLoadingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 135
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mCamInnerView:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mLoadingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 139
    :goto_6
    return-void

    :cond_1
    move v0, v1

    .line 123
    goto :goto_0

    :cond_2
    move v2, v3

    .line 126
    goto :goto_1

    :cond_3
    move v2, v3

    .line 127
    goto :goto_2

    :cond_4
    move v2, v3

    .line 128
    goto :goto_3

    :cond_5
    move v2, v3

    .line 129
    goto :goto_4

    :cond_6
    move v1, v3

    .line 130
    goto :goto_5

    .line 137
    :cond_7
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mCamInnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_6
.end method


# virtual methods
.method public animateToState(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V
    .locals 2
    .parameter "videoIconState"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mVideoIconState:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    if-ne v0, p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->HIDDEN:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    if-ne p1, v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mVideoStates:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/instagram/android/video/ui/MediaActionsView;->fadeViewOut(Landroid/view/View;)V

    .line 107
    :goto_1
    iput-object p1, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mVideoIconState:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mVideoIconState:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    sget-object v1, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->HIDDEN:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    if-ne v0, v1, :cond_2

    .line 101
    invoke-direct {p0, p1}, Lcom/instagram/android/video/ui/MediaActionsView;->setVideoIndicatorVisibility(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V

    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mVideoStates:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/instagram/android/video/ui/MediaActionsView;->fadeViewIn(Landroid/view/View;)V

    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {p0, p1}, Lcom/instagram/android/video/ui/MediaActionsView;->setVideoIconState(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V

    goto :goto_1
.end method

.method public hideHeart()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mHeartView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 119
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mHeartView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 81
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 82
    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 83
    invoke-super {p0, v0, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 84
    return-void
.end method

.method public setVideoIconState(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V
    .locals 2
    .parameter "videoIconState"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mVideoIconState:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    if-ne v0, p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mVideoStates:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 90
    iget-object v1, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mVideoStates:Landroid/view/View;

    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->HIDDEN:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-direct {p0, p1}, Lcom/instagram/android/video/ui/MediaActionsView;->setVideoIndicatorVisibility(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V

    .line 92
    iput-object p1, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mVideoIconState:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public showHeart()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mDoubleTapAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 112
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mHeartView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 113
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mHeartView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mHeartView:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/android/video/ui/MediaActionsView;->mDoubleTapAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 115
    return-void
.end method
