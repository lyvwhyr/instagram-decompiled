.class Lcom/instagram/android/fragment/CameraSettingsFragment$1;
.super Ljava/lang/Object;
.source "CameraSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CameraSettingsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CameraSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/instagram/android/fragment/CameraSettingsFragment$1;->this$0:Lcom/instagram/android/fragment/CameraSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 31
    if-eqz p2, :cond_0

    .line 32
    iget-object v0, p0, Lcom/instagram/android/fragment/CameraSettingsFragment$1;->this$0:Lcom/instagram/android/fragment/CameraSettingsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/CameraSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/Preferences;->setHasAdvancedCameraEnabled(Z)Z

    .line 33
    iget-object v0, p0, Lcom/instagram/android/fragment/CameraSettingsFragment$1;->this$0:Lcom/instagram/android/fragment/CameraSettingsFragment;

    sget v1, Lcom/facebook/k;->instagram_camera_warning:I

    sget v2, Lcom/facebook/g;->row_advanced_camera_checkbox:I

    #calls: Lcom/instagram/android/fragment/CameraSettingsFragment;->showWarningDialog(II)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/fragment/CameraSettingsFragment;->access$000(Lcom/instagram/android/fragment/CameraSettingsFragment;II)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/CameraSettingsFragment$1;->this$0:Lcom/instagram/android/fragment/CameraSettingsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/CameraSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/Preferences;->setHasAdvancedCameraEnabled(Z)Z

    goto :goto_0
.end method
