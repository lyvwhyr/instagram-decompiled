.class Lcom/instagram/android/video/fragment/CamcorderFragment$3;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/CamcorderFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$3;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    iput-object p2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 395
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$3;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ClipStackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$3;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/ac;

    move-result-object v0

    .line 401
    new-instance v1, Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-direct {v1}, Lcom/instagram/android/creation/fragment/CameraFragment;-><init>()V

    .line 402
    sget v2, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/ac;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;

    .line 403
    invoke-virtual {v0}, Landroid/support/v4/app/ac;->a()I

    .line 411
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$3;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ClipStackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->softDeleteClip()V

    .line 406
    new-instance v0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$3;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$3;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;
    invoke-static {v2}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ClipStackManager;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$3;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mRemoveButton:Lcom/instagram/android/video/ui/VideoDeleteButton;
    invoke-static {v3}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$800(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ui/VideoDeleteButton;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;-><init>(Landroid/content/Context;Lcom/instagram/android/video/ClipStackManager;Landroid/view/View;)V

    .line 409
    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$3;->val$view:Landroid/view/View;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
