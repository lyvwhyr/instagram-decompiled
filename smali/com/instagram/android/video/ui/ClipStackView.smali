.class public Lcom/instagram/android/video/ui/ClipStackView;
.super Landroid/widget/LinearLayout;
.source "ClipStackView.java"

# interfaces
.implements Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private mClipStack:Lcom/instagram/android/video/model/ClipStack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method private initStackView()V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/video/ui/ClipStackView;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v0}, Lcom/instagram/android/video/model/ClipStack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/model/Clip;

    .line 54
    new-instance v2, Lcom/instagram/android/video/ui/ClipView;

    invoke-virtual {p0}, Lcom/instagram/android/video/ui/ClipStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/instagram/android/video/ui/ClipView;-><init>(Landroid/content/Context;Lcom/instagram/android/video/model/Clip;)V

    invoke-virtual {p0, v2}, Lcom/instagram/android/video/ui/ClipStackView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public destroyStackView()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/ClipStackView;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 63
    invoke-virtual {p0, v2}, Lcom/instagram/android/video/ui/ClipStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ui/ClipView;

    .line 64
    invoke-virtual {v0}, Lcom/instagram/android/video/ui/ClipView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/video/model/Clip;

    .line 65
    invoke-virtual {v1, v0}, Lcom/instagram/android/video/model/Clip;->removeListener(Lcom/instagram/android/video/model/Clip$ClipListener;)V

    .line 62
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public onClipAdded(Lcom/instagram/android/video/model/Clip;)V
    .locals 2
    .parameter "clip"

    .prologue
    .line 72
    new-instance v0, Lcom/instagram/android/video/ui/ClipView;

    invoke-virtual {p0}, Lcom/instagram/android/video/ui/ClipStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instagram/android/video/ui/ClipView;-><init>(Landroid/content/Context;Lcom/instagram/android/video/model/Clip;)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/ClipStackView;->addView(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method public onClipChanged(Lcom/instagram/android/video/model/Clip;Lcom/instagram/android/video/model/Clip$ClipState;)V
    .locals 0
    .parameter "clip"
    .parameter "newState"

    .prologue
    .line 85
    return-void
.end method

.method public onClipDurationChanged(Lcom/instagram/android/video/model/Clip;)V
    .locals 0
    .parameter "clip"

    .prologue
    .line 90
    return-void
.end method

.method public onClipRemoved(Lcom/instagram/android/video/model/Clip;)V
    .locals 1
    .parameter "clip"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/instagram/android/video/ui/ClipStackView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ui/ClipView;

    .line 78
    invoke-virtual {p1, v0}, Lcom/instagram/android/video/model/Clip;->removeListener(Lcom/instagram/android/video/model/Clip$ClipListener;)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/ClipStackView;->removeView(Landroid/view/View;)V

    .line 80
    return-void
.end method

.method public onMaxVideoDurationReached()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v2, -0x8000

    .line 35
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 36
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/ClipStackView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 38
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/ClipStackView;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 41
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/ClipStackView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 42
    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/ClipStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 43
    invoke-virtual {v3, v1, v2}, Landroid/view/View;->measure(II)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public setClipStack(Lcom/instagram/android/video/model/ClipStack;)V
    .locals 0
    .parameter "clipStack"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/instagram/android/video/ui/ClipStackView;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    .line 49
    invoke-direct {p0}, Lcom/instagram/android/video/ui/ClipStackView;->initStackView()V

    .line 50
    return-void
.end method
