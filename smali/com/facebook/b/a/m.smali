.class Lcom/facebook/b/a/m;
.super Landroid/content/BroadcastReceiver;
.source "SafeLocalBroadcastReceiver.java"


# instance fields
.field final synthetic a:Lcom/facebook/b/a/l;


# direct methods
.method constructor <init>(Lcom/facebook/b/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/b/a/m;->a:Lcom/facebook/b/a/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/b/a/m;->a:Lcom/facebook/b/a/l;

    #getter for: Lcom/facebook/b/a/l;->registered:Z
    invoke-static {v0}, Lcom/facebook/b/a/l;->access$000(Lcom/facebook/b/a/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/facebook/b/a/l;->access$100()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Called onReceive after it was unregistered."

    invoke-static {v0, v1}, Lcom/facebook/c/b/a;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/facebook/b/a/m;->a:Lcom/facebook/b/a/l;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/b/a/l;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
