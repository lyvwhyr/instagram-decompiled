.class public Lcom/instagram/android/video/ui/CamcorderPreviewLayout;
.super Landroid/widget/RelativeLayout;
.source "CamcorderPreviewLayout.java"


# instance fields
.field private mAspectRatio:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/high16 v3, 0x4000

    .line 39
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/CamcorderPreviewLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/ViewUtil;->getScreenHeightPixels(Landroid/content/Context;)I

    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/CamcorderPreviewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/util/ViewUtil;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result v1

    .line 43
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v2, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 46
    invoke-virtual {p0, v1, v1}, Lcom/instagram/android/video/ui/CamcorderPreviewLayout;->setMeasuredDimension(II)V

    .line 47
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 29
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 31
    :cond_0
    iget-wide v0, p0, Lcom/instagram/android/video/ui/CamcorderPreviewLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_1

    .line 32
    const-wide/high16 v0, 0x3ff0

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/instagram/android/video/ui/CamcorderPreviewLayout;->mAspectRatio:D

    .line 33
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/CamcorderPreviewLayout;->requestLayout()V

    .line 35
    :cond_1
    return-void
.end method
