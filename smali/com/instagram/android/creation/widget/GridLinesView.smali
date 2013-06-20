.class public Lcom/instagram/android/creation/widget/GridLinesView;
.super Landroid/view/View;
.source "GridLinesView.java"


# static fields
.field private static final COLOR_BLACK:I = 0x27000000

.field private static final COLOR_WHITE:I = -0x7f000001


# instance fields
.field private dim13:F

.field private dim23:F

.field private dim33:F

.field private final mBlackPaint:Landroid/graphics/Paint;

.field private final mStrokeWidth:I

.field private final mWhitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/creation/widget/GridLinesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/android/creation/widget/GridLinesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mWhitePaint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mBlackPaint:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/GridLinesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mStrokeWidth:I

    .line 52
    iget-object v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mWhitePaint:Landroid/graphics/Paint;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mWhitePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mBlackPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x2700

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mBlackPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private drawHorizontalSectionedLine(Landroid/graphics/Canvas;FILandroid/graphics/Paint;)V
    .locals 7
    .parameter "canvas"
    .parameter "y"
    .parameter "endOffset"
    .parameter "paint"

    .prologue
    const/high16 v6, 0x3f80

    .line 102
    const/4 v1, 0x0

    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim13:F

    int-to-float v2, p3

    sub-float v3, v0, v2

    move-object v0, p1

    move v2, p2

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 103
    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim13:F

    add-float v1, v0, v6

    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim23:F

    int-to-float v2, p3

    sub-float v3, v0, v2

    move-object v0, p1

    move v2, p2

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 104
    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim23:F

    add-float v1, v0, v6

    iget v3, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim33:F

    move-object v0, p1

    move v2, p2

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 105
    return-void
.end method

.method private drawVerticalSectionedLine(Landroid/graphics/Canvas;FIILandroid/graphics/Paint;)V
    .locals 7
    .parameter "canvas"
    .parameter "x"
    .parameter "startOffset"
    .parameter "endOffset"
    .parameter "paint"

    .prologue
    const/high16 v6, 0x3f80

    .line 109
    const/4 v2, 0x0

    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim13:F

    int-to-float v1, p4

    sub-float v4, v0, v1

    move-object v0, p1

    move v1, p2

    move v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 110
    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim13:F

    add-float/2addr v0, v6

    int-to-float v1, p3

    add-float v2, v0, v1

    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim23:F

    int-to-float v1, p4

    sub-float v4, v0, v1

    move-object v0, p1

    move v1, p2

    move v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 111
    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim23:F

    add-float/2addr v0, v6

    int-to-float v1, p3

    add-float v2, v0, v1

    iget v4, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim33:F

    move-object v0, p1

    move v1, p2

    move v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 81
    iget v2, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim13:F

    iget v3, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim33:F

    iget v4, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim13:F

    iget-object v5, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mWhitePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 82
    iget v2, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim23:F

    iget v3, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim33:F

    iget v4, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim23:F

    iget-object v5, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mWhitePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 85
    iget v2, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim13:F

    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mStrokeWidth:I

    add-int/lit8 v4, v0, -0x1

    iget-object v5, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mWhitePaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/creation/widget/GridLinesView;->drawVerticalSectionedLine(Landroid/graphics/Canvas;FIILandroid/graphics/Paint;)V

    .line 86
    iget v2, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim23:F

    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mStrokeWidth:I

    add-int/lit8 v4, v0, -0x1

    iget-object v5, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mWhitePaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/creation/widget/GridLinesView;->drawVerticalSectionedLine(Landroid/graphics/Canvas;FIILandroid/graphics/Paint;)V

    .line 89
    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim13:F

    iget v1, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mStrokeWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mStrokeWidth:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mBlackPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/instagram/android/creation/widget/GridLinesView;->drawHorizontalSectionedLine(Landroid/graphics/Canvas;FILandroid/graphics/Paint;)V

    .line 90
    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim13:F

    add-float/2addr v0, v6

    iget v1, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mStrokeWidth:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mBlackPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/instagram/android/creation/widget/GridLinesView;->drawHorizontalSectionedLine(Landroid/graphics/Canvas;FILandroid/graphics/Paint;)V

    .line 91
    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim23:F

    iget v1, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mStrokeWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mStrokeWidth:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mBlackPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/instagram/android/creation/widget/GridLinesView;->drawHorizontalSectionedLine(Landroid/graphics/Canvas;FILandroid/graphics/Paint;)V

    .line 92
    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim23:F

    add-float/2addr v0, v6

    iget v1, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mStrokeWidth:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mBlackPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/instagram/android/creation/widget/GridLinesView;->drawHorizontalSectionedLine(Landroid/graphics/Canvas;FILandroid/graphics/Paint;)V

    .line 95
    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim13:F

    iget v1, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mStrokeWidth:I

    int-to-float v1, v1

    sub-float v2, v0, v1

    iget v4, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mStrokeWidth:I

    iget-object v5, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mBlackPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/creation/widget/GridLinesView;->drawVerticalSectionedLine(Landroid/graphics/Canvas;FIILandroid/graphics/Paint;)V

    .line 96
    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim13:F

    add-float v2, v0, v6

    iget v4, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mStrokeWidth:I

    iget-object v5, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mBlackPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/creation/widget/GridLinesView;->drawVerticalSectionedLine(Landroid/graphics/Canvas;FIILandroid/graphics/Paint;)V

    .line 97
    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim23:F

    iget v1, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mStrokeWidth:I

    int-to-float v1, v1

    sub-float v2, v0, v1

    iget v4, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mStrokeWidth:I

    iget-object v5, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mBlackPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/creation/widget/GridLinesView;->drawVerticalSectionedLine(Landroid/graphics/Canvas;FIILandroid/graphics/Paint;)V

    .line 98
    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim23:F

    add-float v2, v0, v6

    iget v4, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mStrokeWidth:I

    iget-object v5, p0, Lcom/instagram/android/creation/widget/GridLinesView;->mBlackPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/creation/widget/GridLinesView;->drawVerticalSectionedLine(Landroid/graphics/Canvas;FIILandroid/graphics/Paint;)V

    .line 99
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 64
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/GridLinesView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/GridLinesView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/creation/widget/GridLinesView;->setMeasuredDimension(II)V

    .line 65
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v2, 0x4040

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 71
    int-to-float v0, p1

    iput v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim33:F

    .line 72
    iget v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim33:F

    div-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim13:F

    .line 73
    const/high16 v0, 0x4000

    iget v1, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim33:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/instagram/android/creation/widget/GridLinesView;->dim23:F

    .line 74
    return-void
.end method
