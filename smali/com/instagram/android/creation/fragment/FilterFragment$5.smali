.class Lcom/instagram/android/creation/fragment/FilterFragment$5;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/FilterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$5;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/16 v7, 0xca0

    const/4 v6, 0x0

    .line 245
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$5;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$000(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$5;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$000(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$5;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$000(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->dismiss()V

    .line 247
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$5;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$002(Lcom/instagram/android/creation/fragment/FilterFragment;Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;)Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    .line 248
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$5;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$600(Lcom/instagram/android/creation/fragment/FilterFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    :goto_0
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 251
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$5;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltshiftButton:Lcom/instagram/android/creation/widget/TiltShiftButton;
    invoke-static {v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$700(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/creation/widget/TiltShiftButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/creation/widget/TiltShiftButton;->getLocationInWindow([I)V

    .line 252
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$5;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-virtual {v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->getTiltShiftPopupWindow()Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/creation/fragment/FilterFragment$5;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-virtual {v2}, Lcom/instagram/android/creation/fragment/FilterFragment;->getView()Landroid/view/View;

    move-result-object v2

    aget v3, v0, v6

    iget-object v4, p0, Lcom/instagram/android/creation/fragment/FilterFragment$5;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-virtual {v4}, Lcom/instagram/android/creation/fragment/FilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/e;->overlay_left_offset:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    aget v0, v0, v4

    iget-object v4, p0, Lcom/instagram/android/creation/fragment/FilterFragment$5;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltshiftButton:Lcom/instagram/android/creation/widget/TiltShiftButton;
    invoke-static {v4}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$700(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/creation/widget/TiltShiftButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/creation/widget/TiltShiftButton;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/instagram/android/creation/fragment/FilterFragment$5;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-virtual {v4}, Lcom/instagram/android/creation/fragment/FilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/e;->overlay_top_offset:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v1, v2, v6, v3, v0}, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 256
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$5;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$600(Lcom/instagram/android/creation/fragment/FilterFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
