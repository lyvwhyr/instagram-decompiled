.class abstract Lcom/facebook/content/e;
.super Landroid/content/BroadcastReceiver;
.source "SecureBroadcastReceiver.java"

# interfaces
.implements Lcom/facebook/content/c;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/facebook/d/g;
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-static {p1}, Lcom/facebook/d/g;->a(Landroid/content/Context;)Lcom/facebook/d/g;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract b(Landroid/content/Context;Landroid/content/Intent;)Lcom/a/a/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/a/a/a/n",
            "<",
            "Lcom/facebook/content/b;",
            ">;"
        }
    .end annotation
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/facebook/content/e;->a(Landroid/content/Context;)Lcom/facebook/d/g;

    move-result-object v0

    .line 67
    const-class v1, Lcom/facebook/common/a/c;

    invoke-virtual {v0, v1}, Lcom/facebook/d/g;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/a/c;

    .line 68
    invoke-virtual {p0}, Lcom/facebook/content/e;->b()Ljava/lang/String;

    move-result-object v1

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejected the intent for the receiver because it was not registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/facebook/content/e;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/content/e;->b(Landroid/content/Context;Landroid/content/Intent;)Lcom/a/a/a/n;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/a/a/a/n;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/a/a/a/n;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/content/b;

    invoke-interface {v0, p1, p2, p0}, Lcom/facebook/content/b;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/content/c;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/content/e;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
