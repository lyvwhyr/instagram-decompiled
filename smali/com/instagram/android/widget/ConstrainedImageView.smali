.class public Lcom/instagram/android/widget/ConstrainedImageView;
.super Lcom/instagram/android/mediacache/IgImageView;
.source "ConstrainedImageView.java"


# static fields
.field public static final FRAME_DECORATION_COLOR:I = 0x40000000

.field public static final FRAME_DECORATION_COLOR_NEW_INNER:I = 0x26ffffff

.field public static final FRAME_DECORATION_COLOR_NEW_OUTER:I = 0x4c000000


# instance fields
.field private mAspect:F

.field private mDrawFrameDecoration:Z

.field private mDrawFrameDecorationNewStyle:Z

.field private mOnMeasureListener:Lcom/instagram/android/widget/OnMeasureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/IgImageView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-boolean v0, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mDrawFrameDecoration:Z

    .line 27
    iput-boolean v0, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mDrawFrameDecorationNewStyle:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/mediacache/IgImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-boolean v0, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mDrawFrameDecoration:Z

    .line 27
    iput-boolean v0, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mDrawFrameDecorationNewStyle:Z

    .line 36
    invoke-direct {p0, p2}, Lcom/instagram/android/widget/ConstrainedImageView;->init(Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/mediacache/IgImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-boolean v0, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mDrawFrameDecoration:Z

    .line 27
    iput-boolean v0, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mDrawFrameDecorationNewStyle:Z

    .line 41
    invoke-direct {p0, p2}, Lcom/instagram/android/widget/ConstrainedImageView;->init(Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method private addDecoration(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 86
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/instagram/android/widget/ConstrainedImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/android/widget/ConstrainedImageView;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 89
    invoke-virtual {p0}, Lcom/instagram/android/widget/ConstrainedImageView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/android/widget/ConstrainedImageView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 91
    iget-boolean v2, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mDrawFrameDecorationNewStyle:Z

    if-eqz v2, :cond_1

    .line 94
    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    const/high16 v2, 0x4c00

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    invoke-direct {p0, v1}, Lcom/instagram/android/widget/ConstrainedImageView;->createLines(Landroid/graphics/Rect;)[F

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 97
    const v2, 0x26ffffff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 99
    invoke-direct {p0, v1}, Lcom/instagram/android/widget/ConstrainedImageView;->createLines(Landroid/graphics/Rect;)[F

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-boolean v2, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mDrawFrameDecoration:Z

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/instagram/android/widget/ConstrainedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/e;->frameinset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 102
    int-to-float v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    const/high16 v3, 0x4000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    .line 105
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 109
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private createLines(Landroid/graphics/Rect;)[F
    .locals 5
    .parameter "rectIn"

    .prologue
    .line 131
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 134
    const/16 v1, 0x10

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x8

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x9

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xa

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xb

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xc

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xd

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xe

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xf

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    aput v0, v1, v2

    return-object v1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/instagram/android/widget/ConstrainedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/m;->ConstrainedImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    sget v1, Lcom/facebook/m;->ConstrainedImageView_decorate:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mDrawFrameDecoration:Z

    .line 50
    sget v1, Lcom/facebook/m;->ConstrainedImageView_decorateNewStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mDrawFrameDecorationNewStyle:Z

    .line 52
    sget v1, Lcom/facebook/m;->ConstrainedImageView_aspect:I

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mAspect:F

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/instagram/android/mediacache/IgImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 79
    iget-boolean v0, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mDrawFrameDecoration:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mDrawFrameDecorationNewStyle:Z

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/ConstrainedImageView;->addDecoration(Landroid/graphics/Canvas;)V

    .line 82
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/instagram/android/mediacache/IgImageView;->onMeasure(II)V

    .line 61
    invoke-virtual {p0}, Lcom/instagram/android/widget/ConstrainedImageView;->getMeasuredWidth()I

    move-result v0

    .line 62
    invoke-virtual {p0}, Lcom/instagram/android/widget/ConstrainedImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mAspect:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/widget/ConstrainedImageView;->setMeasuredDimension(II)V

    .line 66
    iget-object v2, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mOnMeasureListener:Lcom/instagram/android/widget/OnMeasureListener;

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mOnMeasureListener:Lcom/instagram/android/widget/OnMeasureListener;

    invoke-interface {v2, v0, v1}, Lcom/instagram/android/widget/OnMeasureListener;->measured(II)V

    .line 69
    :cond_0
    return-void
.end method

.method public setDrawFrameDecoration(Z)V
    .locals 0
    .parameter "drawFrameDecoration"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mDrawFrameDecoration:Z

    .line 115
    invoke-virtual {p0}, Lcom/instagram/android/widget/ConstrainedImageView;->invalidate()V

    .line 116
    return-void
.end method

.method public setDrawFrameDecorationNewStyle(Z)V
    .locals 0
    .parameter "drawFrameDecoration"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mDrawFrameDecorationNewStyle:Z

    .line 120
    invoke-virtual {p0}, Lcom/instagram/android/widget/ConstrainedImageView;->invalidate()V

    .line 121
    return-void
.end method

.method public setImageBitmapAsLoaded(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mLoaded:Z

    .line 125
    invoke-super {p0, p1}, Lcom/instagram/android/mediacache/IgImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    return-void
.end method

.method public setOnMeasureListener(Lcom/instagram/android/widget/OnMeasureListener;)V
    .locals 0
    .parameter "onMeasureListener"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/instagram/android/widget/ConstrainedImageView;->mOnMeasureListener:Lcom/instagram/android/widget/OnMeasureListener;

    .line 73
    return-void
.end method
