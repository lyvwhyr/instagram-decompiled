.class Lcom/instagram/android/video/fragment/CamcorderFragment$1;
.super Landroid/os/Handler;
.source "CamcorderFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/CamcorderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$1;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$1;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$1;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$000(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/camera/ui/RotateLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$1;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$000(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/camera/ui/RotateLayout;

    move-result-object v0

    sget v1, Lcom/facebook/g;->focus_indicator:I

    invoke-virtual {v0, v1}, Lcom/instagram/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ui/FocusIndicatorView;

    .line 160
    invoke-virtual {v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->clear()V

    goto :goto_0

    .line 165
    :pswitch_3
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$1;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ClipStackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->updateClip()V

    .line 166
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$1;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ClipStackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$1;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$200(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 177
    :pswitch_4
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$1;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/video/util/VideoUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$1;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mCameraDisplayOrientation:I
    invoke-static {v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$300(Lcom/instagram/android/video/fragment/CamcorderFragment;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$1;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorderRecording:Z
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$400(Lcom/instagram/android/video/fragment/CamcorderFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$1;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #calls: Lcom/instagram/android/video/fragment/CamcorderFragment;->startPreview()V
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$500(Lcom/instagram/android/video/fragment/CamcorderFragment;)V

    .line 181
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$1;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mOnResumeTime:J
    invoke-static {v2}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$600(Lcom/instagram/android/video/fragment/CamcorderFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$1;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$200(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 189
    :pswitch_5
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$1;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->switchCamera()V

    goto/16 :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
