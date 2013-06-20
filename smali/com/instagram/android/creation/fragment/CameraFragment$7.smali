.class Lcom/instagram/android/creation/fragment/CameraFragment$7;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashButtonOnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/CameraFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$7;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;)V
    .locals 3
    .parameter "v"
    .parameter "mode"

    .prologue
    .line 1233
    sget-object v0, Lcom/instagram/android/creation/fragment/CameraFragment$10;->$SwitchMap$com$instagram$android$creation$widget$ActionBarCameraFlashButton$FlashMode:[I

    invoke-virtual {p2}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1244
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$7;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    sget v1, Lcom/facebook/k;->pref_camera_flash_mode_off:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1245
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$7;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1700(Lcom/instagram/android/creation/fragment/CameraFragment;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1249
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$7;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;
    invoke-static {v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1800(Lcom/instagram/android/creation/fragment/CameraFragment;)Lcom/instagram/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1250
    const-string v2, "pref_camera_flashmode_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1251
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1253
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$7;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    const/4 v1, 0x4

    #calls: Lcom/instagram/android/creation/fragment/CameraFragment;->setCameraParameters(I)V
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1900(Lcom/instagram/android/creation/fragment/CameraFragment;I)V

    .line 1254
    return-void

    .line 1235
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$7;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    sget v1, Lcom/facebook/k;->pref_camera_flash_mode_on:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1236
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$7;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1700(Lcom/instagram/android/creation/fragment/CameraFragment;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1239
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$7;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    sget v1, Lcom/facebook/k;->pref_camera_flash_mode_auto:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1240
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$7;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1700(Lcom/instagram/android/creation/fragment/CameraFragment;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
