.class public Lcom/instagram/android/video/ui/CaptureAnimManager;
.super Ljava/lang/Object;
.source "CaptureAnimManager.java"


# static fields
.field private static final CAPTURE_ANIM_DURATION:F = 700.0f

.field private static final GAP_RATIO:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "CaptureAnimManager"

.field private static final TOTAL_RATIO:F = 1.1f

.field private static final ZOOM_DELTA:F = 0.2f

.field private static final ZOOM_IN_BEGIN:F = 0.8f


# instance fields
.field private mAnimOrientation:I

.field private mAnimStartTime:J

.field private mCenterDelta:F

.field private mCenterX:F

.field private mCenterY:F

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mGap:F

.field private mHalfGap:F

.field private final mSlideInterpolator:Landroid/view/animation/Interpolator;

.field private final mZoomInInterpolator:Landroid/view/animation/Interpolator;

.field private final mZoomOutInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mZoomOutInterpolator:Landroid/view/animation/Interpolator;

    .line 46
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mZoomInInterpolator:Landroid/view/animation/Interpolator;

    .line 47
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    .line 63
    return-void
.end method

.method private calculateScale(F)F
    .locals 5
    .parameter "fraction"

    .prologue
    const/high16 v4, 0x4000

    const/high16 v2, 0x3f00

    const v3, 0x3e4ccccd

    .line 166
    .line 167
    cmpg-float v0, p1, v2

    if-gtz v0, :cond_0

    .line 169
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mZoomOutInterpolator:Landroid/view/animation/Interpolator;

    mul-float v2, p1, v4

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 176
    :goto_0
    return v0

    .line 173
    :cond_0
    const v0, 0x3f4ccccd

    iget-object v1, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mZoomInInterpolator:Landroid/view/animation/Interpolator;

    sub-float v2, p1, v2

    mul-float/2addr v2, v4

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public drawAnimation(Lcom/instagram/android/video/gl/GLCanvas;Lcom/instagram/android/video/camera/CameraScreenNail;Lcom/instagram/android/video/gl/RawTexture;)Z
    .locals 12
    .parameter "canvas"
    .parameter "preview"
    .parameter "review"

    .prologue
    const/high16 v4, 0x442f

    const/high16 v11, 0x4000

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mAnimStartTime:J

    sub-long/2addr v0, v2

    .line 112
    long-to-float v2, v0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    .line 113
    :cond_0
    long-to-float v0, v0

    div-float v8, v0, v4

    .line 114
    invoke-direct {p0, v8}, Lcom/instagram/android/video/ui/CaptureAnimManager;->calculateScale(F)F

    move-result v6

    .line 115
    iget v1, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterX:F

    .line 116
    iget v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterY:F

    .line 117
    iget v2, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mAnimOrientation:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mAnimOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_2

    .line 118
    :cond_1
    iget v1, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterX:F

    iget v2, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterDelta:F

    iget-object v3, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 123
    :goto_1
    iget v2, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mDrawHeight:I

    int-to-float v2, v2

    mul-float v9, v2, v6

    .line 124
    iget v2, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mDrawWidth:I

    int-to-float v2, v2

    mul-float v10, v2, v6

    .line 125
    float-to-int v5, v1

    .line 126
    float-to-int v4, v0

    .line 127
    float-to-int v3, v1

    .line 128
    float-to-int v2, v0

    .line 129
    iget v7, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v7, :sswitch_data_0

    move v6, v2

    move v7, v3

    move v3, v4

    move v2, v5

    .line 155
    :goto_2
    invoke-interface {p1}, Lcom/instagram/android/video/gl/GLCanvas;->getAlpha()F

    move-result v11

    .line 156
    invoke-interface {p1, v8}, Lcom/instagram/android/video/gl/GLCanvas;->setAlpha(F)V

    .line 157
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/video/camera/CameraScreenNail;->directDraw(Lcom/instagram/android/video/gl/GLCanvas;IIII)V

    .line 158
    invoke-interface {p1, v11}, Lcom/instagram/android/video/gl/GLCanvas;->setAlpha(F)V

    .line 160
    float-to-int v4, v10

    float-to-int v5, v9

    move-object v0, p3

    move-object v1, p1

    move v2, v7

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/video/gl/RawTexture;->draw(Lcom/instagram/android/video/gl/GLCanvas;IIII)V

    .line 161
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :cond_2
    iget v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterY:F

    iget v2, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterDelta:F

    iget-object v3, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    goto :goto_1

    .line 131
    :sswitch_0
    sub-float v2, v1, v10

    iget v3, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mHalfGap:F

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 132
    div-float v3, v9, v11

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 133
    iget v3, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mHalfGap:F

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v6, v0

    move v7, v1

    move v3, v0

    .line 135
    goto :goto_2

    .line 137
    :sswitch_1
    iget v2, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mHalfGap:F

    mul-float/2addr v2, v6

    add-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 138
    div-float v2, v10, v11

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 139
    sub-float/2addr v0, v9

    iget v2, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mHalfGap:F

    mul-float/2addr v2, v6

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v6, v0

    move v7, v1

    move v2, v1

    .line 141
    goto :goto_2

    .line 143
    :sswitch_2
    add-float v2, v1, v10

    iget v3, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mHalfGap:F

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 144
    div-float v3, v9, v11

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 145
    iget v3, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mHalfGap:F

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v6, v0

    move v7, v1

    move v3, v0

    .line 147
    goto/16 :goto_2

    .line 149
    :sswitch_3
    sub-float v2, v0, v9

    iget v3, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mHalfGap:F

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 150
    div-float v2, v10, v11

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 151
    iget v2, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mHalfGap:F

    mul-float/2addr v2, v6

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v6, v0

    move v7, v1

    move v2, v1

    .line 152
    goto/16 :goto_2

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "animOrientation"

    .prologue
    .line 66
    iput p1, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mAnimOrientation:I

    .line 67
    return-void
.end method

.method public startAnimation(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const v4, 0x3f8ccccd

    const v3, 0x3dcccccd

    const/high16 v2, 0x4000

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mAnimStartTime:J

    .line 74
    iput p3, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mDrawWidth:I

    .line 75
    iput p4, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mDrawHeight:I

    .line 76
    iget v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 78
    :sswitch_0
    int-to-float v0, p3

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mGap:F

    .line 79
    iget v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mHalfGap:F

    .line 80
    int-to-float v0, p1

    iget v1, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mHalfGap:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterX:F

    .line 81
    int-to-float v0, p3

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterDelta:F

    .line 82
    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterY:F

    goto :goto_0

    .line 85
    :sswitch_1
    int-to-float v0, p4

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mGap:F

    .line 86
    iget v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mHalfGap:F

    .line 87
    add-int v0, p2, p4

    int-to-float v0, v0

    iget v1, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mHalfGap:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterY:F

    .line 88
    neg-int v0, p4

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterDelta:F

    .line 89
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterX:F

    goto :goto_0

    .line 92
    :sswitch_2
    int-to-float v0, p3

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mGap:F

    .line 93
    iget v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mHalfGap:F

    .line 94
    int-to-float v0, p1

    iget v1, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mHalfGap:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterX:F

    .line 95
    neg-int v0, p3

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterDelta:F

    .line 96
    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterY:F

    goto :goto_0

    .line 99
    :sswitch_3
    int-to-float v0, p4

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mGap:F

    .line 100
    iget v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mHalfGap:F

    .line 101
    int-to-float v0, p2

    iget v1, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mHalfGap:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterY:F

    .line 102
    int-to-float v0, p4

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterDelta:F

    .line 103
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/android/video/ui/CaptureAnimManager;->mCenterX:F

    goto :goto_0

    .line 76
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
