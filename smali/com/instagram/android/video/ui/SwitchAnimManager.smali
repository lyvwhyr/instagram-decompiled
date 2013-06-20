.class public Lcom/instagram/android/video/ui/SwitchAnimManager;
.super Ljava/lang/Object;
.source "SwitchAnimManager.java"


# static fields
.field private static final ANIMATION_DURATION:F = 400.0f

.field public static final INITIAL_DARKEN_ALPHA:F = 0.8f

.field private static final TAG:Ljava/lang/String; = "SwitchAnimManager"

.field private static final ZOOM_DELTA_PREVIEW:F = 0.2f

.field private static final ZOOM_DELTA_REVIEW:F = 0.5f


# instance fields
.field private mAnimStartTime:J

.field private mPreviewFrameLayoutWidth:I

.field private mReviewDrawingHeight:I

.field private mReviewDrawingWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public drawAnimation(Lcom/instagram/android/video/gl/GLCanvas;IIIILcom/instagram/android/video/camera/CameraScreenNail;Lcom/instagram/android/video/gl/RawTexture;)Z
    .locals 14
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 78
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/instagram/android/video/ui/SwitchAnimManager;->mAnimStartTime:J

    sub-long/2addr v1, v3

    .line 79
    long-to-float v3, v1

    const/high16 v4, 0x43c8

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v1, 0x0

    .line 122
    :goto_0
    return v1

    .line 80
    :cond_0
    long-to-float v1, v1

    const/high16 v2, 0x43c8

    div-float v7, v1, v2

    .line 83
    move/from16 v0, p2

    int-to-float v1, v0

    move/from16 v0, p4

    int-to-float v2, v0

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 84
    move/from16 v0, p3

    int-to-float v1, v0

    move/from16 v0, p5

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v5, v1, v3

    .line 85
    const/high16 v1, 0x3f80

    const v3, 0x3e4ccccd

    const/high16 v4, 0x3f80

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 86
    move/from16 v0, p4

    int-to-float v3, v0

    mul-float v6, v3, v1

    .line 87
    move/from16 v0, p5

    int-to-float v3, v0

    mul-float v8, v3, v1

    .line 88
    const/high16 v1, 0x4000

    div-float v1, v6, v1

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 89
    const/high16 v1, 0x4000

    div-float v1, v8, v1

    sub-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 92
    const/high16 v1, 0x3f80

    const/high16 v9, 0x3f00

    mul-float/2addr v9, v7

    add-float/2addr v9, v1

    .line 100
    const/high16 v1, 0x3f80

    .line 101
    iget v10, p0, Lcom/instagram/android/video/ui/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    if-eqz v10, :cond_1

    .line 102
    move/from16 v0, p4

    int-to-float v1, v0

    iget v10, p0, Lcom/instagram/android/video/ui/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    int-to-float v10, v10

    div-float/2addr v1, v10

    .line 106
    :goto_1
    iget v10, p0, Lcom/instagram/android/video/ui/SwitchAnimManager;->mReviewDrawingWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v9

    mul-float/2addr v10, v1

    .line 107
    iget v11, p0, Lcom/instagram/android/video/ui/SwitchAnimManager;->mReviewDrawingHeight:I

    int-to-float v11, v11

    mul-float/2addr v9, v11

    mul-float/2addr v9, v1

    .line 108
    const/high16 v1, 0x4000

    div-float v1, v10, v1

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 109
    const/high16 v1, 0x4000

    div-float v1, v9, v1

    sub-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 112
    invoke-interface {p1}, Lcom/instagram/android/video/gl/GLCanvas;->getAlpha()F

    move-result v13

    .line 113
    invoke-interface {p1, v7}, Lcom/instagram/android/video/gl/GLCanvas;->setAlpha(F)V

    .line 114
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v1, p6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/instagram/android/video/camera/CameraScreenNail;->directDraw(Lcom/instagram/android/video/gl/GLCanvas;IIII)V

    .line 118
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v7

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    invoke-interface {p1, v1}, Lcom/instagram/android/video/gl/GLCanvas;->setAlpha(F)V

    .line 119
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v1, p7

    move-object v2, p1

    move v3, v11

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Lcom/instagram/android/video/gl/RawTexture;->draw(Lcom/instagram/android/video/gl/GLCanvas;IIII)V

    .line 121
    invoke-interface {p1, v13}, Lcom/instagram/android/video/gl/GLCanvas;->setAlpha(F)V

    .line 122
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 104
    :cond_1
    const-string v10, "SwitchAnimManager"

    const-string v11, "mPreviewFrameLayoutWidth is 0."

    invoke-static {v10, v11}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public drawDarkPreview(Lcom/instagram/android/video/gl/GLCanvas;IIIILcom/instagram/android/video/gl/RawTexture;)Z
    .locals 7
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "review"

    .prologue
    const/high16 v5, 0x4000

    .line 128
    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v1, v5

    add-float/2addr v1, v0

    .line 129
    int-to-float v0, p3

    int-to-float v2, p5

    div-float/2addr v2, v5

    add-float v3, v0, v2

    .line 130
    const/high16 v0, 0x3f80

    .line 131
    iget v2, p0, Lcom/instagram/android/video/ui/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    if-eqz v2, :cond_0

    .line 132
    int-to-float v0, p4

    iget v2, p0, Lcom/instagram/android/video/ui/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 136
    :goto_0
    iget v2, p0, Lcom/instagram/android/video/ui/SwitchAnimManager;->mReviewDrawingWidth:I

    int-to-float v2, v2

    mul-float v4, v2, v0

    .line 137
    iget v2, p0, Lcom/instagram/android/video/ui/SwitchAnimManager;->mReviewDrawingHeight:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 138
    div-float v2, v4, v5

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 139
    div-float v1, v0, v5

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 142
    invoke-interface {p1}, Lcom/instagram/android/video/gl/GLCanvas;->getAlpha()F

    move-result v6

    .line 143
    const v1, 0x3f4ccccd

    invoke-interface {p1, v1}, Lcom/instagram/android/video/gl/GLCanvas;->setAlpha(F)V

    .line 144
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object v0, p6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/video/gl/RawTexture;->draw(Lcom/instagram/android/video/gl/GLCanvas;IIII)V

    .line 146
    invoke-interface {p1, v6}, Lcom/instagram/android/video/gl/GLCanvas;->setAlpha(F)V

    .line 147
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_0
    const-string v2, "SwitchAnimManager"

    const-string v4, "mPreviewFrameLayoutWidth is 0."

    invoke-static {v2, v4}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 65
    iput p1, p0, Lcom/instagram/android/video/ui/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    .line 66
    return-void
.end method

.method public setReviewDrawingSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 57
    iput p1, p0, Lcom/instagram/android/video/ui/SwitchAnimManager;->mReviewDrawingWidth:I

    .line 58
    iput p2, p0, Lcom/instagram/android/video/ui/SwitchAnimManager;->mReviewDrawingHeight:I

    .line 59
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/android/video/ui/SwitchAnimManager;->mAnimStartTime:J

    .line 71
    return-void
.end method
