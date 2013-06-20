.class Lcom/facebook/a/h;
.super Landroid/os/Handler;
.source "Facebook.java"


# instance fields
.field final synthetic a:Lcom/facebook/a/g;


# direct methods
.method constructor <init>(Lcom/facebook/a/g;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/facebook/a/h;->a:Lcom/facebook/a/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 607
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "expires_in"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 613
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 614
    const-string v4, "expires_in"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 616
    if-eqz v1, :cond_1

    .line 617
    iget-object v4, p0, Lcom/facebook/a/h;->a:Lcom/facebook/a/g;

    iget-object v4, v4, Lcom/facebook/a/g;->e:Lcom/facebook/a/b;

    invoke-virtual {v4, v1}, Lcom/facebook/a/b;->a(Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lcom/facebook/a/h;->a:Lcom/facebook/a/g;

    iget-object v1, v1, Lcom/facebook/a/g;->e:Lcom/facebook/a/b;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/a/b;->a(J)V

    .line 619
    iget-object v1, p0, Lcom/facebook/a/h;->a:Lcom/facebook/a/g;

    iget-object v1, v1, Lcom/facebook/a/g;->b:Lcom/facebook/a/f;

    if-eqz v1, :cond_0

    .line 620
    iget-object v1, p0, Lcom/facebook/a/h;->a:Lcom/facebook/a/g;

    iget-object v1, v1, Lcom/facebook/a/g;->b:Lcom/facebook/a/f;

    invoke-interface {v1, v0}, Lcom/facebook/a/f;->onComplete(Landroid/os/Bundle;)V

    .line 635
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/a/h;->a:Lcom/facebook/a/g;

    iget-object v0, v0, Lcom/facebook/a/g;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/a/h;->a:Lcom/facebook/a/g;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 636
    return-void

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/facebook/a/h;->a:Lcom/facebook/a/g;

    iget-object v0, v0, Lcom/facebook/a/g;->b:Lcom/facebook/a/f;

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 625
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 626
    iget-object v2, p0, Lcom/facebook/a/h;->a:Lcom/facebook/a/g;

    iget-object v2, v2, Lcom/facebook/a/g;->b:Lcom/facebook/a/f;

    new-instance v3, Lcom/facebook/a/i;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Lcom/facebook/a/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Lcom/facebook/a/f;->onFacebookError(Lcom/facebook/a/i;)V

    goto :goto_0

    .line 628
    :cond_2
    iget-object v1, p0, Lcom/facebook/a/h;->a:Lcom/facebook/a/g;

    iget-object v1, v1, Lcom/facebook/a/g;->b:Lcom/facebook/a/f;

    new-instance v2, Ljava/lang/Error;

    if-eqz v0, :cond_3

    :goto_1
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/facebook/a/f;->onError(Ljava/lang/Error;)V

    goto :goto_0

    :cond_3
    const-string v0, "Unknown service error"

    goto :goto_1
.end method
