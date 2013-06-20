.class abstract Lcom/instagram/android/support/camera/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# static fields
.field static final SCALE_RATE:F = 1.25f

.field private static final TAG:Ljava/lang/String; = "ImageViewTouchBase"


# instance fields
.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected final mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mHandler:Landroid/os/Handler;

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field private mOnLayoutRunnable:Ljava/lang/Runnable;

.field private mRecycler:Lcom/instagram/android/support/camera/ImageViewTouchBase$Recycler;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field mThisHeight:I

.field mThisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 234
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mMatrixValues:[F

    .line 60
    new-instance v0, Lcom/instagram/android/support/camera/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/instagram/android/support/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

    .line 62
    iput v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mThisHeight:I

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 147
    iput-object v2, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 235
    invoke-direct {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->init()V

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 239
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mMatrixValues:[F

    .line 60
    new-instance v0, Lcom/instagram/android/support/camera/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/instagram/android/support/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

    .line 62
    iput v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mThisHeight:I

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 147
    iput-object v2, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 240
    invoke-direct {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->init()V

    .line 241
    return-void
.end method

.method private getProperBaseMatrix(Lcom/instagram/android/support/camera/RotateBitmap;Landroid/graphics/Matrix;)V
    .locals 8
    .parameter "bitmap"
    .parameter "matrix"

    .prologue
    const/high16 v7, 0x4040

    const/high16 v6, 0x4000

    .line 263
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 264
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 266
    invoke-virtual {p1}, Lcom/instagram/android/support/camera/RotateBitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 267
    invoke-virtual {p1}, Lcom/instagram/android/support/camera/RotateBitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 268
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 272
    div-float v4, v0, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 273
    div-float v5, v1, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 274
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 276
    invoke-virtual {p1}, Lcom/instagram/android/support/camera/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 277
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 279
    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 282
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 244
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 245
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter "bitmap"
    .parameter "rotation"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

    invoke-virtual {v1, p1}, Lcom/instagram/android/support/camera/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    iget-object v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

    invoke-virtual {v1, p2}, Lcom/instagram/android/support/camera/RotateBitmap;->setRotation(I)V

    .line 138
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    iget-object v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mRecycler:Lcom/instagram/android/support/camera/ImageViewTouchBase$Recycler;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mRecycler:Lcom/instagram/android/support/camera/ImageViewTouchBase$Recycler;

    invoke-interface {v1, v0}, Lcom/instagram/android/support/camera/ImageViewTouchBase$Recycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 141
    :cond_1
    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 7
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    const/high16 v6, 0x4000

    const/4 v0, 0x0

    .line 190
    iget-object v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

    invoke-virtual {v1}, Lcom/instagram/android/support/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 196
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

    invoke-virtual {v3}, Lcom/instagram/android/support/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

    invoke-virtual {v4}, Lcom/instagram/android/support/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 200
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 202
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 203
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 207
    if-eqz p2, :cond_6

    .line 208
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getHeight()I

    move-result v4

    .line 209
    int-to-float v5, v4

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    .line 210
    int-to-float v4, v4

    sub-float v1, v4, v1

    div-float/2addr v1, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    .line 218
    :goto_1
    if-eqz p1, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getWidth()I

    move-result v4

    .line 220
    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    .line 221
    int-to-float v0, v4

    sub-float/2addr v0, v3

    div-float/2addr v0, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    .line 229
    :cond_1
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->postTranslate(FF)V

    .line 230
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 211
    :cond_2
    iget v1, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    .line 212
    iget v1, v2, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    goto :goto_1

    .line 213
    :cond_3
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    .line 214
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    goto :goto_1

    .line 222
    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_5

    .line 223
    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_2

    .line 224
    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 225
    int-to-float v0, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 145
    return-void
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 289
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 290
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 249
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected maxZoom()F
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 301
    const/high16 v0, 0x3f80

    .line 307
    :goto_0
    return v0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/RotateBitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mThisWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 305
    iget-object v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

    invoke-virtual {v1}, Lcom/instagram/android/support/camera/RotateBitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mThisHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 306
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    .line 307
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 98
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v1, 0x3f80

    .line 108
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 113
    invoke-virtual {p0, v1}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->zoomTo(F)V

    .line 114
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 82
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 83
    sub-int v0, p4, p2

    iput v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mThisWidth:I

    .line 84
    sub-int v0, p5, p3

    iput v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mThisHeight:I

    .line 85
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 86
    if-eqz v0, :cond_0

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 88
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

    iget-object v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getProperBaseMatrix(Lcom/instagram/android/support/camera/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 92
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 94
    :cond_1
    return-void
.end method

.method protected panBy(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 407
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->postTranslate(FF)V

    .line 408
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 409
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 404
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 125
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bitmap"
    .parameter "resetSupp"

    .prologue
    .line 153
    new-instance v0, Lcom/instagram/android/support/camera/RotateBitmap;

    invoke-direct {v0, p1}, Lcom/instagram/android/support/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/instagram/android/support/camera/RotateBitmap;Z)V

    .line 154
    return-void
.end method

.method public setImageRotateBitmapResetBase(Lcom/instagram/android/support/camera/RotateBitmap;Z)V
    .locals 2
    .parameter "bitmap"
    .parameter "resetSupp"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 160
    if-gtz v0, :cond_0

    .line 161
    new-instance v0, Lcom/instagram/android/support/camera/ImageViewTouchBase$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/instagram/android/support/camera/ImageViewTouchBase$1;-><init>(Lcom/instagram/android/support/camera/ImageViewTouchBase;Lcom/instagram/android/support/camera/RotateBitmap;Z)V

    iput-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 182
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/android/support/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getProperBaseMatrix(Lcom/instagram/android/support/camera/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 171
    invoke-virtual {p1}, Lcom/instagram/android/support/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/support/camera/RotateBitmap;->getRotation()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 177
    :goto_1
    if-eqz p2, :cond_1

    .line 178
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 181
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->maxZoom()F

    move-result v0

    iput v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mMaxZoom:F

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setRecycler(Lcom/instagram/android/support/camera/ImageViewTouchBase$Recycler;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mRecycler:Lcom/instagram/android/support/camera/ImageViewTouchBase$Recycler;

    .line 75
    return-void
.end method

.method protected zoomIn()V
    .locals 1

    .prologue
    .line 359
    const/high16 v0, 0x3fa0

    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->zoomIn(F)V

    .line 360
    return-void
.end method

.method protected zoomIn(F)V
    .locals 3
    .parameter "rate"

    .prologue
    const/high16 v2, 0x4000

    .line 367
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getScale()F

    move-result v0

    iget v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 375
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 377
    iget-object v2, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 378
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected zoomOut()V
    .locals 1

    .prologue
    .line 363
    const/high16 v0, 0x3fa0

    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->zoomOut(F)V

    .line 364
    return-void
.end method

.method protected zoomOut(F)V
    .locals 7
    .parameter "rate"

    .prologue
    const/4 v6, 0x1

    const/high16 v2, 0x4000

    const/high16 v5, 0x3f80

    .line 382
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/instagram/android/support/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 387
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 390
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 391
    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 393
    invoke-virtual {p0, v2}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    .line 394
    iget-object v2, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 398
    :goto_1
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 399
    invoke-virtual {p0, v6, v6}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->center(ZZ)V

    goto :goto_0

    .line 396
    :cond_1
    iget-object v2, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method protected zoomTo(F)V
    .locals 3
    .parameter "scale"

    .prologue
    const/high16 v2, 0x4000

    .line 344
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 345
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 347
    invoke-virtual {p0, p1, v0, v1}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->zoomTo(FFF)V

    .line 348
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 3
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v2, 0x1

    .line 311
    iget v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 312
    iget p1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mMaxZoom:F

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getScale()F

    move-result v0

    .line 316
    div-float v0, p1, v0

    .line 318
    iget-object v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 319
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 320
    invoke-virtual {p0, v2, v2}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->center(ZZ)V

    .line 321
    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 10
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "durationMs"

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 326
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 329
    iget-object v9, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/instagram/android/support/camera/ImageViewTouchBase$2;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/instagram/android/support/camera/ImageViewTouchBase$2;-><init>(Lcom/instagram/android/support/camera/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    return-void
.end method

.method protected zoomToPoint(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "pointX"
    .parameter "pointY"

    .prologue
    const/high16 v2, 0x4000

    .line 351
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 352
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 354
    sub-float v2, v0, p2

    sub-float v3, v1, p3

    invoke-virtual {p0, v2, v3}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->panBy(FF)V

    .line 355
    invoke-virtual {p0, p1, v0, v1}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->zoomTo(FFF)V

    .line 356
    return-void
.end method
