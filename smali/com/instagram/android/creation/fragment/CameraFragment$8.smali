.class Lcom/instagram/android/creation/fragment/CameraFragment$8;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/CameraFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$8;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$8;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1800(Lcom/instagram/android/creation/fragment/CameraFragment;)Lcom/instagram/camera/ComboPreferences;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$8;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraId:I
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1200(Lcom/instagram/android/creation/fragment/CameraFragment;)I

    move-result v0

    iget-object v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment$8;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mFrontCameraId:I
    invoke-static {v2}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2000(Lcom/instagram/android/creation/fragment/CameraFragment;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$8;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mBackCameraId:I
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2100(Lcom/instagram/android/creation/fragment/CameraFragment;)I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/instagram/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 1264
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$8;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->onSharedPreferenceChanged()V

    .line 1265
    return-void

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$8;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mFrontCameraId:I
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2000(Lcom/instagram/android/creation/fragment/CameraFragment;)I

    move-result v0

    goto :goto_0
.end method
