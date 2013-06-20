.class Lcom/instagram/android/mediacache/IgVideoCache$InternalHandler;
.super Landroid/os/Handler;
.source "IgVideoCache.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/mediacache/IgVideoCache$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgVideoCache$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 372
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;

    .line 374
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 383
    :goto_0
    return-void

    .line 376
    :pswitch_0
    invoke-interface {v0}, Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;->onComplete()V

    goto :goto_0

    .line 380
    :pswitch_1
    invoke-interface {v0}, Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;->onError()V

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
