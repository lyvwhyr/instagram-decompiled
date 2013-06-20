.class Lcom/instagram/android/video/fragment/CamcorderFragment$4$2;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$4;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/CamcorderFragment$4;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$4$2;->this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 433
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 434
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$4$2;->this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$4;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/CamcorderFragment$4;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/video/util/VideoFileUtil;->cleanupPreviousRecordingsAsync(Landroid/content/Context;)V

    .line 435
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$4$2;->this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$4;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/CamcorderFragment$4;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 436
    return-void
.end method
