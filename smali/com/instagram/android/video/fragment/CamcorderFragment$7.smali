.class Lcom/instagram/android/video/fragment/CamcorderFragment$7;
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
    .line 552
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$7;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$7;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #calls: Lcom/instagram/android/video/fragment/CamcorderFragment;->stopVideoRecording()Z
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$900(Lcom/instagram/android/video/fragment/CamcorderFragment;)Z

    .line 556
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$7;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ClipStackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->checkLastClip()V

    .line 557
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$7;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    sget-object v1, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPED:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    #calls: Lcom/instagram/android/video/fragment/CamcorderFragment;->setClipRecorderState(Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;)V
    invoke-static {v0, v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1100(Lcom/instagram/android/video/fragment/CamcorderFragment;Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;)V

    .line 558
    return-void
.end method
