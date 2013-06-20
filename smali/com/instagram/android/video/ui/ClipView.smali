.class public Lcom/instagram/android/video/ui/ClipView;
.super Landroid/widget/LinearLayout;
.source "ClipView.java"

# interfaces
.implements Lcom/instagram/android/video/model/Clip$ClipListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipView"


# instance fields
.field private final mActiveClipView:Landroid/view/View;

.field private final mClip:Lcom/instagram/android/video/model/Clip;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/video/model/Clip;)V
    .locals 2
    .parameter "context"
    .parameter "clip"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0, p2}, Lcom/instagram/android/video/ui/ClipView;->setTag(Ljava/lang/Object;)V

    .line 25
    iput-object p2, p0, Lcom/instagram/android/video/ui/ClipView;->mClip:Lcom/instagram/android/video/model/Clip;

    .line 26
    iget-object v0, p0, Lcom/instagram/android/video/ui/ClipView;->mClip:Lcom/instagram/android/video/model/Clip;

    invoke-virtual {v0, p0}, Lcom/instagram/android/video/model/Clip;->addListener(Lcom/instagram/android/video/model/Clip$ClipListener;)V

    .line 28
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/video/ui/ClipView;->mActiveClipView:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/instagram/android/video/ui/ClipView;->mActiveClipView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/ClipView;->addView(Landroid/view/View;)V

    .line 30
    invoke-virtual {p2}, Lcom/instagram/android/video/model/Clip;->getState()Lcom/instagram/android/video/model/Clip$ClipState;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/ui/ClipView;->mActiveClipView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/video/ui/ClipView;->initState(Lcom/instagram/android/video/model/Clip$ClipState;Landroid/view/View;)V

    .line 31
    return-void
.end method

.method private initState(Lcom/instagram/android/video/model/Clip$ClipState;Landroid/view/View;)V
    .locals 1
    .parameter "newState"
    .parameter "activeClipView"

    .prologue
    .line 60
    sget-object v0, Lcom/instagram/android/video/model/Clip$ClipState;->RECORDING:Lcom/instagram/android/video/model/Clip$ClipState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/instagram/android/video/model/Clip$ClipState;->RECORDED:Lcom/instagram/android/video/model/Clip$ClipState;

    if-ne p1, v0, :cond_2

    .line 61
    :cond_0
    sget v0, Lcom/facebook/f;->camera_video_progress_blue:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    sget-object v0, Lcom/instagram/android/video/model/Clip$ClipState;->SOFT_DELETED:Lcom/instagram/android/video/model/Clip$ClipState;

    if-ne p1, v0, :cond_1

    .line 63
    sget v0, Lcom/facebook/f;->camera_video_progress_red:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClipDurationChanged(Lcom/instagram/android/video/model/Clip;I)V
    .locals 0
    .parameter "clip"
    .parameter "length"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/ClipView;->requestLayout()V

    .line 52
    return-void
.end method

.method public onClipStateChange(Lcom/instagram/android/video/model/Clip;Lcom/instagram/android/video/model/Clip$ClipState;)V
    .locals 1
    .parameter "clip"
    .parameter "newState"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instagram/android/video/ui/ClipView;->mActiveClipView:Landroid/view/View;

    invoke-direct {p0, p2, v0}, Lcom/instagram/android/video/ui/ClipView;->initState(Lcom/instagram/android/video/model/Clip$ClipState;Landroid/view/View;)V

    .line 57
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 36
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 37
    int-to-float v0, v0

    iget-object v2, p0, Lcom/instagram/android/video/ui/ClipView;->mClip:Lcom/instagram/android/video/model/Clip;

    invoke-virtual {v2}, Lcom/instagram/android/video/model/Clip;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x466a6000

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 41
    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 44
    iget-object v3, p0, Lcom/instagram/android/video/ui/ClipView;->mActiveClipView:Landroid/view/View;

    invoke-virtual {v3, v2, p2}, Landroid/view/View;->measure(II)V

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/video/ui/ClipView;->setMeasuredDimension(II)V

    .line 47
    return-void
.end method
