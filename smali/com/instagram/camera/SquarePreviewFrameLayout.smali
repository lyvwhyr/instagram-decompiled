.class public Lcom/instagram/camera/SquarePreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "SquarePreviewFrameLayout.java"


# instance fields
.field private mAspectRatio:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 27
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 28
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 31
    invoke-virtual {p0}, Lcom/instagram/camera/SquarePreviewFrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/camera/SquarePreviewFrameLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    .line 32
    invoke-virtual {p0}, Lcom/instagram/camera/SquarePreviewFrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/camera/SquarePreviewFrameLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v1

    .line 35
    sub-int v1, v0, v3

    .line 36
    sub-int v0, v2, v4

    .line 37
    int-to-double v5, v1

    int-to-double v7, v0

    iget-wide v9, p0, Lcom/instagram/camera/SquarePreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v7, v9

    cmpl-double v2, v5, v7

    if-lez v2, :cond_0

    .line 38
    int-to-double v1, v0

    iget-wide v5, p0, Lcom/instagram/camera/SquarePreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v1, v5

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v1, v5

    double-to-int v1, v1

    .line 42
    :goto_0
    add-int/2addr v1, v3

    .line 43
    add-int/2addr v0, v4

    .line 46
    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 49
    invoke-virtual {p0}, Lcom/instagram/camera/SquarePreviewFrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/camera/SquarePreviewFrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/camera/SquarePreviewFrameLayout;->setMeasuredDimension(II)V

    .line 50
    return-void

    .line 40
    :cond_0
    int-to-double v5, v1

    iget-wide v7, p0, Lcom/instagram/camera/SquarePreviewFrameLayout;->mAspectRatio:D

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v0, v5

    goto :goto_0
.end method

.method public setAspectRatio(D)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 18
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 19
    :cond_0
    iget-wide v0, p0, Lcom/instagram/camera/SquarePreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_1

    .line 20
    iput-wide p1, p0, Lcom/instagram/camera/SquarePreviewFrameLayout;->mAspectRatio:D

    .line 21
    invoke-virtual {p0}, Lcom/instagram/camera/SquarePreviewFrameLayout;->requestLayout()V

    .line 23
    :cond_1
    return-void
.end method
