.class Lcom/instagram/android/fragment/CameraSettingsFragment$3;
.super Ljava/lang/Object;
.source "CameraSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CameraSettingsFragment;

.field final synthetic val$checkboxId:I


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CameraSettingsFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/instagram/android/fragment/CameraSettingsFragment$3;->this$0:Lcom/instagram/android/fragment/CameraSettingsFragment;

    iput p2, p0, Lcom/instagram/android/fragment/CameraSettingsFragment$3;->val$checkboxId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/instagram/android/fragment/CameraSettingsFragment$3;->this$0:Lcom/instagram/android/fragment/CameraSettingsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/CameraSettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/CameraSettingsFragment$3;->val$checkboxId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 71
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 72
    return-void
.end method
