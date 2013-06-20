.class public Lcom/instagram/android/video/ui/PreviewSurfaceView;
.super Landroid/view/SurfaceView;
.source "PreviewSurfaceView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/PreviewSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 40
    return-void
.end method

.method private setLayoutSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/PreviewSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 52
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, p1, :cond_1

    .line 53
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 54
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/PreviewSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    :cond_1
    return-void
.end method


# virtual methods
.method public expand()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/video/ui/PreviewSurfaceView;->setLayoutSize(I)V

    .line 48
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/video/ui/PreviewSurfaceView;->setLayoutSize(I)V

    .line 44
    return-void
.end method
