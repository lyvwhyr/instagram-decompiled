.class Lcom/instagram/android/support/camera/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# static fields
.field public static final GROW_BOTTOM_EDGE:I = 0x10

.field public static final GROW_LEFT_EDGE:I = 0x2

.field public static final GROW_NONE:I = 0x1

.field public static final GROW_RIGHT_EDGE:I = 0x4

.field public static final GROW_TOP_EDGE:I = 0x8

.field public static final MOVE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "HighlightView"


# instance fields
.field private mCircle:Z

.field mContext:Landroid/view/View;

.field mCropRect:Landroid/graphics/RectF;

.field mDrawRect:Landroid/graphics/Rect;

.field private final mFocusPaint:Landroid/graphics/Paint;

.field mHidden:Z

.field private mImageRect:Landroid/graphics/RectF;

.field private mInitialAspectRatio:F

.field mIsFocused:Z

.field private mMaintainAspectRatio:Z

.field mMatrix:Landroid/graphics/Matrix;

.field private mMinimumDimension:I

.field private mMode:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

.field private final mNoFocusPaint:Landroid/graphics/Paint;

.field private final mOutlinePaint:Landroid/graphics/Paint;

.field private mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    sget-object v0, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;->None:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mMode:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    .line 436
    iput-boolean v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mMaintainAspectRatio:Z

    .line 438
    iput-boolean v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mCircle:Z

    .line 444
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    .line 445
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    .line 446
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 53
    iput-object p1, p0, Lcom/instagram/android/support/camera/HighlightView;->mContext:Landroid/view/View;

    .line 54
    return-void
.end method

.method private computeLayout()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 386
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 388
    iget-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 389
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    sget v1, Lcom/facebook/f;->camera_crop_handle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    .line 60
    sget v1, Lcom/facebook/f;->camera_crop_handle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    .line 62
    sget v1, Lcom/facebook/f;->indicator_autocrop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    .line 64
    return-void
.end method

.method private isHardwareAcceleratedGuarded(Landroid/graphics/Canvas;)Z
    .locals 2
    .parameter "canvas"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 450
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const v7, -0xdc3204

    const/high16 v6, 0x4000

    .line 83
    iget-boolean v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mHidden:Z

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 88
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 89
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/HighlightView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const v1, -0x10fb2a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 93
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 95
    iget-boolean v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mCircle:Z

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 97
    iget-object v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 98
    iget-object v4, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    div-float v5, v0, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    div-float/2addr v3, v6

    add-float/2addr v3, v5

    div-float/2addr v0, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v3, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 102
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    :goto_1
    invoke-direct {p0, p1}, Lcom/instagram/android/support/camera/HighlightView;->isHardwareAcceleratedGuarded(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 109
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/HighlightView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 119
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mMode:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    sget-object v1, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;->Move:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    if-eq v0, v1, :cond_0

    .line 120
    iget-boolean v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mCircle:Z

    if-eqz v0, :cond_6

    .line 121
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 124
    const-wide v2, 0x3fe921fb54442d18L

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 126
    iget-object v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v3, v0

    .line 128
    iget-object v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    .line 130
    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 104
    :cond_4
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 105
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    goto/16 :goto_2

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    .line 136
    iget-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    .line 137
    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x4

    .line 138
    iget-object v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x3

    .line 140
    iget-object v4, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 142
    iget-object v5, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 144
    iget-object v6, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 146
    iget-object v7, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    .line 149
    iget-object v8, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 151
    iget-object v9, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 154
    iget-object v10, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    sub-int v11, v0, v4

    sub-int v12, v9, v5

    add-int/2addr v0, v4

    add-int v13, v9, v5

    invoke-virtual {v10, v11, v12, v0, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 158
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    sub-int v10, v1, v4

    sub-int v11, v9, v5

    add-int/2addr v1, v4

    add-int v4, v9, v5

    invoke-virtual {v0, v10, v11, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    sub-int v1, v8, v7

    sub-int v4, v2, v6

    add-int v5, v8, v7

    add-int/2addr v2, v6

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 170
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 172
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    sub-int v1, v8, v7

    sub-int v2, v3, v6

    add-int v4, v8, v7

    add-int/2addr v3, v6

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 176
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 380
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHit(FF)I
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v0, 0x20

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/high16 v7, 0x41a0

    .line 191
    invoke-direct {p0}, Lcom/instagram/android/support/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v5

    .line 195
    iget-boolean v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mCircle:Z

    if-eqz v2, :cond_5

    .line 196
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    .line 197
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    .line 198
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 200
    iget-object v5, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 201
    sub-int v6, v4, v5

    .line 202
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    .line 203
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 204
    cmpg-float v0, v3, v8

    if-gez v0, :cond_1

    .line 205
    const/16 v0, 0x8

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    const/16 v0, 0x10

    goto :goto_0

    .line 210
    :cond_2
    cmpg-float v0, v2, v8

    if-gez v0, :cond_3

    .line 211
    const/4 v0, 0x2

    goto :goto_0

    .line 213
    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    .line 216
    :cond_4
    if-lt v4, v5, :cond_0

    move v0, v1

    .line 219
    goto :goto_0

    .line 224
    :cond_5
    iget v2, v5, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v7

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_a

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    cmpg-float v2, p2, v2

    if-gez v2, :cond_a

    move v2, v1

    .line 226
    :goto_1
    iget v4, v5, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, v7

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_6

    iget v4, v5, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    cmpg-float v4, p1, v4

    if-gez v4, :cond_6

    move v3, v1

    .line 230
    :cond_6
    iget v4, v5, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_c

    if-eqz v2, :cond_c

    .line 231
    const/4 v4, 0x3

    .line 233
    :goto_2
    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    if-eqz v2, :cond_7

    .line 234
    or-int/lit8 v4, v4, 0x4

    .line 236
    :cond_7
    iget v2, v5, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_8

    if-eqz v3, :cond_8

    .line 237
    or-int/lit8 v4, v4, 0x8

    .line 239
    :cond_8
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_b

    if-eqz v3, :cond_b

    .line 240
    or-int/lit8 v4, v4, 0x10

    move v2, v4

    .line 244
    :goto_3
    if-ne v2, v1, :cond_9

    float-to-int v1, p1

    float-to-int v3, p2

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_9
    move v0, v2

    goto :goto_0

    :cond_a
    move v2, v3

    .line 224
    goto :goto_1

    :cond_b
    move v2, v4

    goto :goto_3

    :cond_c
    move v4, v1

    goto :goto_2
.end method

.method growBy(FF)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/high16 v0, 0x41c8

    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 304
    iget-boolean v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v1, :cond_0

    .line 305
    cmpl-float v1, p1, v4

    if-eqz v1, :cond_c

    .line 306
    iget v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v1

    .line 313
    :cond_0
    :goto_0
    move p1, p2

    .line 315
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 320
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v3, v5, p1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    div-float p1, v2, v5

    .line 323
    iget-boolean v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v2, :cond_1

    .line 324
    iget v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v2

    .line 327
    :cond_1
    cmpl-float v2, p2, v4

    if-lez v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v3, v5, p2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 328
    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    div-float p2, v2, v5

    .line 330
    iget-boolean v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v2, :cond_2

    .line 331
    iget v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v2

    .line 335
    :cond_2
    cmpg-float v2, p1, v4

    if-ltz v2, :cond_3

    cmpg-float v2, p2, v4

    if-gez v2, :cond_5

    .line 336
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v3, v5, p1

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mMinimumDimension:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v3, v5, p2

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mMinimumDimension:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 337
    :cond_4
    iget v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mMinimumDimension:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    div-float p1, v2, v5

    .line 338
    iget v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mMinimumDimension:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    div-float p2, v2, v5

    .line 340
    neg-float v2, p1

    neg-float v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 344
    :cond_5
    neg-float v2, p1

    neg-float v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 348
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_6

    .line 349
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float v2, v0, v2

    neg-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 351
    :cond_6
    iget-boolean v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mInitialAspectRatio:F

    div-float/2addr v0, v2

    .line 354
    :cond_7
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_8

    .line 355
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v0, v2

    neg-float v0, v0

    div-float/2addr v0, v5

    invoke-virtual {v1, v4, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 359
    :cond_8
    iget v0, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_d

    .line 360
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 364
    :cond_9
    :goto_1
    iget v0, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_e

    .line 365
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    invoke-virtual {v1, v4, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 370
    :cond_a
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mMinimumDimension:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_b

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mMinimumDimension:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_b

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_b

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_b

    .line 372
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 373
    invoke-direct {p0}, Lcom/instagram/android/support/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 375
    :cond_b
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 376
    return-void

    .line 307
    :cond_c
    cmpl-float v1, p2, v4

    if-eqz v1, :cond_0

    .line 308
    iget v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v1

    goto/16 :goto_0

    .line 361
    :cond_d
    iget v0, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    .line 362
    iget v0, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    neg-float v0, v0

    invoke-virtual {v1, v0, v4}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    .line 366
    :cond_e
    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_a

    .line 367
    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    neg-float v0, v0

    invoke-virtual {v1, v4, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2
.end method

.method handleMotion(IFF)V
    .locals 5
    .parameter "edge"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 254
    invoke-direct {p0}, Lcom/instagram/android/support/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v2

    .line 255
    if-ne p1, v1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 257
    :cond_0
    const/16 v3, 0x20

    if-ne p1, v3, :cond_1

    .line 259
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/support/camera/HighlightView;->moveBy(FF)V

    goto :goto_0

    .line 262
    :cond_1
    and-int/lit8 v3, p1, 0x6

    if-nez v3, :cond_2

    .line 263
    const/4 p2, 0x0

    .line 266
    :cond_2
    and-int/lit8 v3, p1, 0x18

    if-nez v3, :cond_3

    .line 267
    const/4 p3, 0x0

    .line 271
    :cond_3
    iget-object v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    .line 272
    iget-object v4, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v4, v2

    mul-float v4, p3, v2

    .line 274
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_1
    int-to-float v2, v2

    mul-float/2addr v2, v3

    .line 275
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_5

    :goto_2
    int-to-float v0, v0

    mul-float/2addr v0, v4

    .line 277
    invoke-virtual {p0, v2, v0}, Lcom/instagram/android/support/camera/HighlightView;->growBy(FF)V

    goto :goto_0

    :cond_4
    move v2, v1

    .line 274
    goto :goto_1

    :cond_5
    move v0, v1

    .line 275
    goto :goto_2
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mIsFocused:Z

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/instagram/android/support/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 395
    return-void
.end method

.method moveBy(FF)V
    .locals 7
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/16 v6, -0xa

    const/4 v5, 0x0

    .line 283
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 285
    iget-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 288
    iget-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 292
    iget-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 296
    invoke-direct {p0}, Lcom/instagram/android/support/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 297
    iget-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 298
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 299
    iget-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 300
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .parameter "f"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/instagram/android/support/camera/HighlightView;->mIsFocused:Z

    .line 76
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/instagram/android/support/camera/HighlightView;->mHidden:Z

    .line 80
    return-void
.end method

.method public setMode(Lcom/instagram/android/support/camera/HighlightView$ModifyMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mMode:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_0

    .line 184
    iput-object p1, p0, Lcom/instagram/android/support/camera/HighlightView;->mMode:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    .line 185
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 187
    :cond_0
    return-void
.end method

.method public setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZF)V
    .locals 4
    .parameter "m"
    .parameter "imageRect"
    .parameter "cropRect"
    .parameter "maintainAspectRatio"
    .parameter "minimumCropRatio"

    .prologue
    const/16 v3, 0x7d

    const/16 v2, 0x32

    .line 399
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    .line 401
    iput-object p3, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    .line 402
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    .line 403
    iput-boolean p4, p0, Lcom/instagram/android/support/camera/HighlightView;->mMaintainAspectRatio:Z

    .line 405
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mInitialAspectRatio:F

    .line 407
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p5

    float-to-int v0, v0

    iput v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mMinimumDimension:I

    .line 413
    :goto_0
    invoke-direct {p0}, Lcom/instagram/android/support/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 415
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 416
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 417
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 418
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 419
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 421
    sget-object v0, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;->None:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mMode:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    .line 422
    invoke-direct {p0}, Lcom/instagram/android/support/camera/HighlightView;->init()V

    .line 423
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p5

    float-to-int v0, v0

    iput v0, p0, Lcom/instagram/android/support/camera/HighlightView;->mMinimumDimension:I

    goto :goto_0
.end method
