.class Lcom/instagram/android/creation/fragment/CameraFragment$MainHandler;
.super Landroid/os/Handler;
.source "CameraFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/CameraFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MainHandler;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;Lcom/instagram/android/creation/fragment/CameraFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/CameraFragment$MainHandler;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 239
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MainHandler;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #calls: Lcom/instagram/android/creation/fragment/CameraFragment;->initializeFirstTime()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$300(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    goto :goto_0

    .line 219
    :pswitch_2
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MainHandler;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    const/4 v1, 0x0

    #calls: Lcom/instagram/android/creation/fragment/CameraFragment;->setCameraParametersWhenIdle(I)V
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$400(Lcom/instagram/android/creation/fragment/CameraFragment;I)V

    goto :goto_0

    .line 229
    :pswitch_3
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MainHandler;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MainHandler;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mDisplayRotation:I
    invoke-static {v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$500(Lcom/instagram/android/creation/fragment/CameraFragment;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MainHandler;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #calls: Lcom/instagram/android/creation/fragment/CameraFragment;->setDisplayOrientation()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$600(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    .line 232
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MainHandler;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mOnResumeTime:J
    invoke-static {v2}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$700(Lcom/instagram/android/creation/fragment/CameraFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$MainHandler;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$800(Lcom/instagram/android/creation/fragment/CameraFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
