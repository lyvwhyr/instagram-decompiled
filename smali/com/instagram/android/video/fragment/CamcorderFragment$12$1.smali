.class Lcom/instagram/android/video/fragment/CamcorderFragment$12$1;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$12;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/CamcorderFragment$12;)V
    .locals 0
    .parameter

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12$1;->this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 5
    .parameter "success"
    .parameter "camera"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 1348
    if-eqz p1, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12$1;->this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$12;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #setter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mHasPerformedFocus:Z
    invoke-static {v0, v3}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2302(Lcom/instagram/android/video/fragment/CamcorderFragment;Z)Z

    .line 1350
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12$1;->this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$12;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->val$focusIndicatorView:Lcom/instagram/camera/ui/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->showSuccess()V

    .line 1354
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12$1;->this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$12;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$200(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1355
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12$1;->this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$12;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$200(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1358
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12$1;->this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$12;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #calls: Lcom/instagram/android/video/fragment/CamcorderFragment;->lockExposureIfCustomFocus(Z)V
    invoke-static {v0, v3}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2200(Lcom/instagram/android/video/fragment/CamcorderFragment;Z)V

    .line 1359
    return-void

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12$1;->this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$12;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->val$focusIndicatorView:Lcom/instagram/camera/ui/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->showFail()V

    goto :goto_0
.end method
