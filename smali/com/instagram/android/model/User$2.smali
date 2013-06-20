.class final Lcom/instagram/android/model/User$2;
.super Landroid/os/Handler;
.source "User.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/instagram/android/model/User;->broadcastUpdate(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/instagram/android/model/User;->access$000(Ljava/lang/String;)V

    .line 107
    return-void
.end method
