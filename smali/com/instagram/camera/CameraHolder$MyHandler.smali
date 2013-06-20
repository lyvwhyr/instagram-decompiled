.class Lcom/instagram/camera/CameraHolder$MyHandler;
.super Landroid/os/Handler;
.source "CameraHolder.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/camera/CameraHolder;


# direct methods
.method constructor <init>(Lcom/instagram/camera/CameraHolder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/instagram/camera/CameraHolder$MyHandler;->this$0:Lcom/instagram/camera/CameraHolder;

    .line 81
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v1, p0, Lcom/instagram/camera/CameraHolder$MyHandler;->this$0:Lcom/instagram/camera/CameraHolder;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/instagram/camera/CameraHolder$MyHandler;->this$0:Lcom/instagram/camera/CameraHolder;

    #getter for: Lcom/instagram/camera/CameraHolder;->mUsers:I
    invoke-static {v0}, Lcom/instagram/camera/CameraHolder;->access$000(Lcom/instagram/camera/CameraHolder;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/camera/CameraHolder$MyHandler;->this$0:Lcom/instagram/camera/CameraHolder;

    #calls: Lcom/instagram/camera/CameraHolder;->releaseCamera()V
    invoke-static {v0}, Lcom/instagram/camera/CameraHolder;->access$100(Lcom/instagram/camera/CameraHolder;)V

    .line 95
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
