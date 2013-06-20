.class Lcom/instagram/camera/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/camera/FocusManager;


# direct methods
.method private constructor <init>(Lcom/instagram/camera/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/instagram/camera/FocusManager$MainHandler;->this$0:Lcom/instagram/camera/FocusManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/camera/FocusManager;Lcom/instagram/camera/FocusManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/instagram/camera/FocusManager$MainHandler;-><init>(Lcom/instagram/camera/FocusManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/camera/FocusManager$MainHandler;->this$0:Lcom/instagram/camera/FocusManager;

    #calls: Lcom/instagram/camera/FocusManager;->cancelAutoFocus()V
    invoke-static {v0}, Lcom/instagram/camera/FocusManager;->access$000(Lcom/instagram/camera/FocusManager;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
