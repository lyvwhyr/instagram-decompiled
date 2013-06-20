.class Lcom/facebook/a/g;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final a:Landroid/os/Messenger;

.field final b:Lcom/facebook/a/f;

.field final c:Landroid/content/Context;

.field d:Landroid/os/Messenger;

.field final synthetic e:Lcom/facebook/a/b;


# direct methods
.method public constructor <init>(Lcom/facebook/a/b;Landroid/content/Context;Lcom/facebook/a/f;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/facebook/a/g;->e:Lcom/facebook/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/facebook/a/h;

    invoke-direct {v1, p0}, Lcom/facebook/a/h;-><init>(Lcom/facebook/a/g;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/a/g;->a:Landroid/os/Messenger;

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/a/g;->d:Landroid/os/Messenger;

    .line 646
    iput-object p2, p0, Lcom/facebook/a/g;->c:Landroid/content/Context;

    .line 647
    iput-object p3, p0, Lcom/facebook/a/g;->b:Lcom/facebook/a/f;

    .line 648
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 665
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 666
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/a/g;->e:Lcom/facebook/a/b;

    invoke-static {v2}, Lcom/facebook/a/b;->b(Lcom/facebook/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 669
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 670
    iget-object v0, p0, Lcom/facebook/a/g;->a:Landroid/os/Messenger;

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/g;->d:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_0
    return-void

    .line 674
    :catch_0
    move-exception v0

    .line 675
    iget-object v0, p0, Lcom/facebook/a/g;->b:Lcom/facebook/a/f;

    new-instance v1, Ljava/lang/Error;

    const-string v2, "Service connection error"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/a/f;->onError(Ljava/lang/Error;)V

    goto :goto_0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 652
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/a/g;->d:Landroid/os/Messenger;

    .line 653
    invoke-direct {p0}, Lcom/facebook/a/g;->a()V

    .line 654
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "arg"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/facebook/a/g;->b:Lcom/facebook/a/f;

    new-instance v1, Ljava/lang/Error;

    const-string v2, "Service disconnected"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/a/f;->onError(Ljava/lang/Error;)V

    .line 661
    iget-object v0, p0, Lcom/facebook/a/g;->c:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 662
    return-void
.end method
