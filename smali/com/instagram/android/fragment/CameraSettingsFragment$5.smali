.class Lcom/instagram/android/fragment/CameraSettingsFragment$5;
.super Ljava/lang/Object;
.source "CameraSettingsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CameraSettingsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CameraSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/instagram/android/fragment/CameraSettingsFragment$5;->this$0:Lcom/instagram/android/fragment/CameraSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/android/fragment/CameraSettingsFragment$5;->this$0:Lcom/instagram/android/fragment/CameraSettingsFragment;

    sget v1, Lcom/facebook/k;->advanced_features:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/CameraSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method
