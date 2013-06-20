.class Lcom/instagram/android/creation/fragment/FilterFragment$14;
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
    .line 443
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$14;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 446
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$14;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$400(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/gl/FilterGLSurfaceView;->setRenderMode(I)V

    .line 448
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$14;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mController:Lcom/instagram/android/gl/FilterController;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$900(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/gl/FilterController;->setTiltShiftEnabled(Z)V

    .line 449
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$14;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #setter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftEnabled:Z
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$202(Lcom/instagram/android/creation/fragment/FilterFragment;Z)Z

    .line 450
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$14;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$000(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->dismiss()V

    .line 451
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$14;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$002(Lcom/instagram/android/creation/fragment/FilterFragment;Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;)Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    .line 452
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$14;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$600(Lcom/instagram/android/creation/fragment/FilterFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xca0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$14;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltshiftButton:Lcom/instagram/android/creation/widget/TiltShiftButton;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$700(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/creation/widget/TiltShiftButton;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$14;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    iget-object v2, p0, Lcom/instagram/android/creation/fragment/FilterFragment$14;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftEnabled:Z
    invoke-static {v2}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$200(Lcom/instagram/android/creation/fragment/FilterFragment;)Z

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/creation/fragment/FilterFragment$14;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftMode:I
    invoke-static {v3}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$1600(Lcom/instagram/android/creation/fragment/FilterFragment;)I

    move-result v3

    #calls: Lcom/instagram/android/creation/fragment/FilterFragment;->getTiltShiftButtonState(ZI)I
    invoke-static {v1, v2, v3}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$1700(Lcom/instagram/android/creation/fragment/FilterFragment;ZI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/TiltShiftButton;->setState(I)V

    .line 454
    return-void
.end method
