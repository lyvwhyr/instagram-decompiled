.class public Lcom/instagram/android/fragment/CameraSettingsFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "CameraSettingsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/CameraSettingsFragment;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/fragment/CameraSettingsFragment;->showWarningDialog(II)V

    return-void
.end method

.method private showWarningDialog(II)V
    .locals 3
    .parameter "message"
    .parameter "checkboxId"

    .prologue
    .line 58
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CameraSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->ok:I

    new-instance v2, Lcom/instagram/android/fragment/CameraSettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/CameraSettingsFragment$4;-><init>(Lcom/instagram/android/fragment/CameraSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cancel:I

    new-instance v2, Lcom/instagram/android/fragment/CameraSettingsFragment$3;

    invoke-direct {v2, p0, p2}, Lcom/instagram/android/fragment/CameraSettingsFragment$3;-><init>(Lcom/instagram/android/fragment/CameraSettingsFragment;I)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 74
    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/instagram/android/fragment/CameraSettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/CameraSettingsFragment$5;-><init>(Lcom/instagram/android/fragment/CameraSettingsFragment;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 24
    sget v0, Lcom/facebook/h;->fragment_camera_settings:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 26
    sget v0, Lcom/facebook/g;->row_advanced_camera_checkbox:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 27
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CameraSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/Preferences;->getHasAdvancedCameraEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 28
    new-instance v2, Lcom/instagram/android/fragment/CameraSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/CameraSettingsFragment$1;-><init>(Lcom/instagram/android/fragment/CameraSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 40
    sget v0, Lcom/facebook/g;->row_advanced_resize_checkbox:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 41
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CameraSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/Preferences;->getHasAdvancedResizeEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 42
    new-instance v2, Lcom/instagram/android/fragment/CameraSettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/CameraSettingsFragment$2;-><init>(Lcom/instagram/android/fragment/CameraSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    return-object v1
.end method
