.class Lcom/instagram/android/video/fragment/CamcorderFragment$8;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/CamcorderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$8;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 682
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$8;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1200(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->RECORDING:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    if-ne v0, v1, :cond_0

    .line 692
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$8;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->startRecording()V

    .line 688
    const-string v0, "CamcorderFragment"

    const-string v1, "markStartOfRecording"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$8;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$200(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 690
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$8;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    sget-object v1, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->RECORDING:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    #calls: Lcom/instagram/android/video/fragment/CamcorderFragment;->setClipRecorderState(Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;)V
    invoke-static {v0, v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1100(Lcom/instagram/android/video/fragment/CamcorderFragment;Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;)V

    .line 691
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$8;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ClipStackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->addNewClip()Lcom/instagram/android/video/model/Clip;

    goto :goto_0
.end method
