.class Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "CameraFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/CameraFragment;


# direct methods
.method public constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    .line 1466
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1467
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 1476
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1489
    :cond_0
    :goto_0
    return-void

    .line 1480
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientation:I
    invoke-static {v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2600(Lcom/instagram/android/creation/fragment/CameraFragment;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/instagram/camera/CameraUtil;->roundOrientation(II)I

    move-result v1

    #setter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientation:I
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2602(Lcom/instagram/android/creation/fragment/CameraFragment;I)I

    .line 1484
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientation:I
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2600(Lcom/instagram/android/creation/fragment/CameraFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-virtual {v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1485
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientationCompensation:I
    invoke-static {v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2700(Lcom/instagram/android/creation/fragment/CameraFragment;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1486
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #setter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientationCompensation:I
    invoke-static {v1, v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2702(Lcom/instagram/android/creation/fragment/CameraFragment;I)I

    .line 1487
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientationCompensation:I
    invoke-static {v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2700(Lcom/instagram/android/creation/fragment/CameraFragment;)I

    move-result v1

    #calls: Lcom/instagram/android/creation/fragment/CameraFragment;->setOrientationIndicator(I)V
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2800(Lcom/instagram/android/creation/fragment/CameraFragment;I)V

    goto :goto_0
.end method
