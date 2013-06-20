.class Lcom/instagram/android/fragment/EditSharingSettingsFragment$7;
.super Ljava/lang/Object;
.source "EditSharingSettingsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/EditSharingSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$7;->this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 367
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$7;->this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    sget v1, Lcom/facebook/k;->edit_sharing_settings:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method
