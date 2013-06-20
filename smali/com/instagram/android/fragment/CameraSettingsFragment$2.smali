.class Lcom/instagram/android/fragment/CameraSettingsFragment$2;
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
    .line 42
    iput-object p1, p0, Lcom/instagram/android/fragment/CameraSettingsFragment$2;->this$0:Lcom/instagram/android/fragment/CameraSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 45
    if-eqz p2, :cond_0

    .line 46
    iget-object v0, p0, Lcom/instagram/android/fragment/CameraSettingsFragment$2;->this$0:Lcom/instagram/android/fragment/CameraSettingsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/CameraSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/Preferences;->setHasAdvancedResizeEnabled(Z)Z

    .line 47
    iget-object v0, p0, Lcom/instagram/android/fragment/CameraSettingsFragment$2;->this$0:Lcom/instagram/android/fragment/CameraSettingsFragment;

    sget v1, Lcom/facebook/k;->advanced_resize_warning:I

    sget v2, Lcom/facebook/g;->row_advanced_resize_checkbox:I

    #calls: Lcom/instagram/android/fragment/CameraSettingsFragment;->showWarningDialog(II)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/fragment/CameraSettingsFragment;->access$000(Lcom/instagram/android/fragment/CameraSettingsFragment;II)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/CameraSettingsFragment$2;->this$0:Lcom/instagram/android/fragment/CameraSettingsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/CameraSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/Preferences;->setHasAdvancedResizeEnabled(Z)Z

    goto :goto_0
.end method
