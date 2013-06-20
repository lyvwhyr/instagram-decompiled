.class Lcom/instagram/android/mediacache/IgAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "IgAsyncTask.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/mediacache/IgAsyncTask$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 571
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/instagram/android/mediacache/IgAsyncTask$AsyncTaskResult;

    .line 572
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 581
    :goto_0
    return-void

    .line 575
    :pswitch_0
    iget-object v1, v0, Lcom/instagram/android/mediacache/IgAsyncTask$AsyncTaskResult;->mTask:Lcom/instagram/android/mediacache/IgAsyncTask;

    iget-object v0, v0, Lcom/instagram/android/mediacache/IgAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    #calls: Lcom/instagram/android/mediacache/IgAsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/instagram/android/mediacache/IgAsyncTask;->access$500(Lcom/instagram/android/mediacache/IgAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 578
    :pswitch_1
    iget-object v1, v0, Lcom/instagram/android/mediacache/IgAsyncTask$AsyncTaskResult;->mTask:Lcom/instagram/android/mediacache/IgAsyncTask;

    iget-object v0, v0, Lcom/instagram/android/mediacache/IgAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/instagram/android/mediacache/IgAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
