.class Lcom/instagram/android/video/fragment/CamcorderFragment$5;
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
    .line 456
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$5;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$5;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ClipStackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->getTotalClipLength()I

    move-result v0

    const/16 v1, 0xbb8

    if-ge v0, v1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$5;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->showMinVideoLengthPopup()V

    .line 465
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$5;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #calls: Lcom/instagram/android/video/fragment/CamcorderFragment;->stopVideoRecording()Z
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$900(Lcom/instagram/android/video/fragment/CamcorderFragment;)Z

    .line 463
    new-instance v0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$5;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment;Lcom/instagram/android/video/fragment/CamcorderFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
