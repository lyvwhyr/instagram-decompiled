.class Lcom/instagram/android/creation/fragment/CameraFragment$5;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/CameraFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$5;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$5;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$5;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-virtual {v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment$5;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraId:I
    invoke-static {v2}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1200(Lcom/instagram/android/creation/fragment/CameraFragment;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/instagram/camera/CameraUtil;->openCamera(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v1

    #setter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1102(Lcom/instagram/android/creation/fragment/CameraFragment;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    :try_end_0
    .catch Lcom/instagram/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/instagram/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 458
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$5;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #setter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mOpenCameraFail:Z
    invoke-static {v0, v3}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1302(Lcom/instagram/android/creation/fragment/CameraFragment;Z)Z

    goto :goto_0

    .line 455
    :catch_1
    move-exception v0

    .line 456
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$5;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #setter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDisabled:Z
    invoke-static {v0, v3}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1402(Lcom/instagram/android/creation/fragment/CameraFragment;Z)Z

    goto :goto_0
.end method
