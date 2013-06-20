.class Lcom/instagram/android/creation/fragment/CameraFragment$4;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

.field final synthetic val$gridlinesView:Landroid/view/View;

.field final synthetic val$userPreferences:Lcom/instagram/android/UserPreferences;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;Landroid/view/View;Lcom/instagram/android/UserPreferences;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$4;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    iput-object p2, p0, Lcom/instagram/android/creation/fragment/CameraFragment$4;->val$gridlinesView:Landroid/view/View;

    iput-object p3, p0, Lcom/instagram/android/creation/fragment/CameraFragment$4;->val$userPreferences:Lcom/instagram/android/UserPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$4;->val$gridlinesView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$4;->val$gridlinesView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$4;->val$userPreferences:Lcom/instagram/android/UserPreferences;

    invoke-virtual {v0, v2}, Lcom/instagram/android/UserPreferences;->setHasGridlinesEnabled(Z)V

    .line 437
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$4;->val$gridlinesView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$4;->val$userPreferences:Lcom/instagram/android/UserPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/UserPreferences;->setHasGridlinesEnabled(Z)V

    goto :goto_0
.end method
