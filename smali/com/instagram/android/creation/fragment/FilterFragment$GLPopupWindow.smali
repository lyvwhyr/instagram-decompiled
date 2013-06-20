.class Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;
.super Landroid/widget/PopupWindow;
.source "FilterFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/FilterFragment;


# direct methods
.method public constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment;Landroid/view/View;II)V
    .locals 0
    .parameter
    .parameter "overlay"
    .parameter "wrapContent"
    .parameter "wrapContent1"

    .prologue
    .line 739
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    .line 740
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 741
    return-void
.end method

.method static synthetic access$2201(Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 737
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic access$2401(Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;Landroid/view/View;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 737
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 745
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 746
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #calls: Lcom/instagram/android/creation/fragment/FilterFragment;->removeMaskHighlight()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$1000(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    .line 751
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$400(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->getRenderMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 752
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$400(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/gl/FilterGLSurfaceView;->setRenderMode(I)V

    .line 753
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$600(Lcom/instagram/android/creation/fragment/FilterFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$1;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 761
    :cond_2
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 762
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftEnabled:Z
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$200(Lcom/instagram/android/creation/fragment/FilterFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #calls: Lcom/instagram/android/creation/fragment/FilterFragment;->setContinousRenderDelayed()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$2300(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 7
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #calls: Lcom/instagram/android/creation/fragment/FilterFragment;->removeMaskHighlight()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$1000(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    .line 771
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$400(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->getRenderMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 772
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$400(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/gl/FilterGLSurfaceView;->setRenderMode(I)V

    .line 773
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$600(Lcom/instagram/android/creation/fragment/FilterFragment;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$2;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;Landroid/view/View;III)V

    const-wide/16 v1, 0x64

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 784
    :goto_0
    return-void

    .line 781
    :cond_0
    const-string v0, "FilterFragment"

    const-string v1, "showing without subclass"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
