.class final Lcom/instagram/android/creation/fragment/CameraFragment$AutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/CameraFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$AutoFocusCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;Lcom/instagram/android/creation/fragment/CameraFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1435
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/CameraFragment$AutoFocusCallback;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$AutoFocusCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mPausing:Z
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2200(Lcom/instagram/android/creation/fragment/CameraFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1443
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$AutoFocusCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$900(Lcom/instagram/android/creation/fragment/CameraFragment;)Lcom/instagram/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/camera/FocusManager;->onAutoFocus(Z)V

    .line 1446
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$AutoFocusCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$900(Lcom/instagram/android/creation/fragment/CameraFragment;)Lcom/instagram/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/FocusManager;->isFocusCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
