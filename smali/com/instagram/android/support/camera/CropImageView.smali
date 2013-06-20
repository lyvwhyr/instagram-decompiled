.class Lcom/instagram/android/support/camera/CropImageView;
.super Lcom/instagram/android/support/camera/ImageViewTouchBase;
.source "CropImageView.java"


# instance fields
.field private mCropFragment:Lcom/instagram/android/support/camera/CropFragment;

.field mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/support/camera/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/instagram/android/support/camera/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/support/camera/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mMotionHighlightView:Lcom/instagram/android/support/camera/HighlightView;

    .line 43
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/instagram/android/support/camera/HighlightView;)V
    .locals 7
    .parameter "hv"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x3f19999a

    .line 173
    iget-object v0, p1, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 175
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 176
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 178
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 179
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 181
    div-float v1, v2, v1

    mul-float/2addr v1, v4

    .line 182
    div-float v0, v3, v0

    mul-float/2addr v0, v4

    .line 184
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 185
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropImageView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    .line 186
    const/high16 v1, 0x3f80

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 188
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropImageView;->getScale()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 189
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aput v2, v1, v5

    iget-object v2, p1, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    aput v2, v1, v6

    .line 193
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 194
    aget v2, v1, v5

    aget v1, v1, v6

    const/high16 v3, 0x4396

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/instagram/android/support/camera/CropImageView;->zoomTo(FFFF)V

    .line 197
    :cond_0
    invoke-direct {p0, p1}, Lcom/instagram/android/support/camera/CropImageView;->ensureVisible(Lcom/instagram/android/support/camera/HighlightView;)V

    .line 198
    return-void
.end method

.method private ensureVisible(Lcom/instagram/android/support/camera/HighlightView;)V
    .locals 6
    .parameter "hv"

    .prologue
    const/4 v5, 0x0

    .line 154
    iget-object v1, p1, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 156
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropImageView;->getLeft()I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 157
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropImageView;->getRight()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 159
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropImageView;->getTop()I

    move-result v0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 160
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropImageView;->getBottom()I

    move-result v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 162
    if-eqz v2, :cond_2

    .line 163
    :goto_0
    if-eqz v0, :cond_3

    .line 165
    :goto_1
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    int-to-float v1, v2

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/support/camera/CropImageView;->panBy(FF)V

    .line 168
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 162
    goto :goto_0

    :cond_3
    move v0, v1

    .line 163
    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 203
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/HighlightView;

    invoke-virtual {v0, p1}, Lcom/instagram/android/support/camera/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 203
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 29
    invoke-super/range {p0 .. p5}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 30
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/HighlightView;

    .line 32
    iget-object v2, v0, Lcom/instagram/android/support/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 33
    invoke-virtual {v0}, Lcom/instagram/android/support/camera/HighlightView;->invalidate()V

    .line 34
    iget-boolean v2, v0, Lcom/instagram/android/support/camera/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_0

    .line 35
    invoke-direct {p0, v0}, Lcom/instagram/android/support/camera/CropImageView;->centerBasedOnHighlightView(Lcom/instagram/android/support/camera/HighlightView;)V

    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 84
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropImageView;->mCropFragment:Lcom/instagram/android/support/camera/CropFragment;

    iget-boolean v1, v1, Lcom/instagram/android/support/camera/CropFragment;->mSaving:Z

    if-eqz v1, :cond_0

    .line 149
    :goto_0
    return v0

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 134
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_2
    :goto_2
    move v0, v2

    .line 149
    goto :goto_0

    :pswitch_0
    move v1, v0

    .line 90
    :goto_3
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/HighlightView;

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/instagram/android/support/camera/HighlightView;->getHit(FF)I

    move-result v3

    .line 93
    if-eq v3, v2, :cond_4

    .line 94
    iput v3, p0, Lcom/instagram/android/support/camera/CropImageView;->mMotionEdge:I

    .line 95
    iput-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mMotionHighlightView:Lcom/instagram/android/support/camera/HighlightView;

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mLastX:F

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mLastY:F

    .line 98
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropImageView;->mMotionHighlightView:Lcom/instagram/android/support/camera/HighlightView;

    const/16 v0, 0x20

    if-ne v3, v0, :cond_3

    sget-object v0, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;->Move:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    :goto_4
    invoke-virtual {v1, v0}, Lcom/instagram/android/support/camera/HighlightView;->setMode(Lcom/instagram/android/support/camera/HighlightView$ModifyMode;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;->Grow:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    goto :goto_4

    .line 90
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mMotionHighlightView:Lcom/instagram/android/support/camera/HighlightView;

    if-eqz v0, :cond_5

    .line 108
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mMotionHighlightView:Lcom/instagram/android/support/camera/HighlightView;

    invoke-direct {p0, v0}, Lcom/instagram/android/support/camera/CropImageView;->centerBasedOnHighlightView(Lcom/instagram/android/support/camera/HighlightView;)V

    .line 109
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mMotionHighlightView:Lcom/instagram/android/support/camera/HighlightView;

    sget-object v1, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;->None:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    invoke-virtual {v0, v1}, Lcom/instagram/android/support/camera/HighlightView;->setMode(Lcom/instagram/android/support/camera/HighlightView$ModifyMode;)V

    .line 112
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mMotionHighlightView:Lcom/instagram/android/support/camera/HighlightView;

    goto :goto_1

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mMotionHighlightView:Lcom/instagram/android/support/camera/HighlightView;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mMotionHighlightView:Lcom/instagram/android/support/camera/HighlightView;

    iget v1, p0, Lcom/instagram/android/support/camera/CropImageView;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/instagram/android/support/camera/CropImageView;->mLastX:F

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/instagram/android/support/camera/CropImageView;->mLastY:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v3, v4}, Lcom/instagram/android/support/camera/HighlightView;->handleMotion(IFF)V

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mLastX:F

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mLastY:F

    .line 128
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mMotionHighlightView:Lcom/instagram/android/support/camera/HighlightView;

    invoke-direct {p0, v0}, Lcom/instagram/android/support/camera/CropImageView;->ensureVisible(Lcom/instagram/android/support/camera/HighlightView;)V

    goto/16 :goto_1

    .line 136
    :pswitch_3
    invoke-virtual {p0, v2, v2}, Lcom/instagram/android/support/camera/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 143
    :pswitch_4
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 144
    invoke-virtual {p0, v2, v2}, Lcom/instagram/android/support/camera/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 134
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->postTranslate(FF)V

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/HighlightView;

    .line 77
    iget-object v2, v0, Lcom/instagram/android/support/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 78
    invoke-virtual {v0}, Lcom/instagram/android/support/camera/HighlightView;->invalidate()V

    .line 75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public removeHighlightViews()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    return-void
.end method

.method public setCropFragment(Lcom/instagram/android/support/camera/CropFragment;)V
    .locals 0
    .parameter "cropFragment"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/instagram/android/support/camera/CropImageView;->mCropFragment:Lcom/instagram/android/support/camera/CropFragment;

    .line 24
    return-void
.end method

.method public setHighlightView(Lcom/instagram/android/support/camera/HighlightView;)V
    .locals 1
    .parameter "hv"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropImageView;->invalidate()V

    .line 216
    return-void
.end method

.method protected zoomIn()V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->zoomIn()V

    .line 57
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/HighlightView;

    .line 58
    iget-object v2, v0, Lcom/instagram/android/support/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 59
    invoke-virtual {v0}, Lcom/instagram/android/support/camera/HighlightView;->invalidate()V

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method protected zoomOut()V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->zoomOut()V

    .line 66
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/HighlightView;

    .line 67
    iget-object v2, v0, Lcom/instagram/android/support/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 68
    invoke-virtual {v0}, Lcom/instagram/android/support/camera/HighlightView;->invalidate()V

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->zoomTo(FFF)V

    .line 48
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/HighlightView;

    .line 49
    iget-object v2, v0, Lcom/instagram/android/support/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 50
    invoke-virtual {v0}, Lcom/instagram/android/support/camera/HighlightView;->invalidate()V

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method
