.class Lcom/instagram/android/video/fragment/CamcorderFragment$4;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/CamcorderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$4;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$4;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ClipStackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->getClipStack()Lcom/instagram/android/video/model/ClipStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/model/ClipStack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 427
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$4;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 428
    sget v1, Lcom/facebook/k;->discard_video:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->discard_video_close:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->yes:I

    new-instance v2, Lcom/instagram/android/video/fragment/CamcorderFragment$4$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/video/fragment/CamcorderFragment$4$2;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->no:I

    new-instance v2, Lcom/instagram/android/video/fragment/CamcorderFragment$4$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/video/fragment/CamcorderFragment$4$1;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 448
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$4;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method
