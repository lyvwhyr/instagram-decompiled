.class public Lcom/instagram/android/people/widget/PhotoScrollView;
.super Landroid/widget/ScrollView;
.source "PhotoScrollView.java"


# instance fields
.field private mOnMeasureListener:Lcom/instagram/android/widget/OnMeasureListener;

.field private mScrollTarget:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-direct {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->init()V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/people/widget/PhotoScrollView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->mScrollTarget:F

    return v0
.end method

.method static synthetic access$100(Lcom/instagram/android/people/widget/PhotoScrollView;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/PhotoScrollView;->scrollCentered(F)V

    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PhotoScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PhotoScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 36
    return-void
.end method

.method private scrollCentered(F)V
    .locals 3
    .parameter "ratio"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getChildCount()I

    move-result v0

    .line 79
    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getHeight()I

    move-result v1

    .line 84
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    .line 86
    const/4 v2, 0x0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcom/instagram/android/people/widget/PhotoScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 72
    iget-object v0, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->mOnMeasureListener:Lcom/instagram/android/widget/OnMeasureListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->mOnMeasureListener:Lcom/instagram/android/widget/OnMeasureListener;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/android/widget/OnMeasureListener;->measured(II)V

    .line 75
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 56
    new-instance v0, Lcom/instagram/android/people/widget/PhotoScrollView$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/people/widget/PhotoScrollView$1;-><init>(Lcom/instagram/android/people/widget/PhotoScrollView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/instagram/android/people/widget/PhotoScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public setOnMeasureListener(Lcom/instagram/android/widget/OnMeasureListener;)V
    .locals 0
    .parameter "onMeasureListener"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->mOnMeasureListener:Lcom/instagram/android/widget/OnMeasureListener;

    .line 66
    return-void
.end method

.method public setScrollTarget(F)V
    .locals 1
    .parameter "target"

    .prologue
    .line 39
    iput p1, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->mScrollTarget:F

    .line 40
    iget v0, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->mScrollTarget:F

    invoke-direct {p0, v0}, Lcom/instagram/android/people/widget/PhotoScrollView;->scrollCentered(F)V

    .line 41
    return-void
.end method
