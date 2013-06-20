.class Lcom/facebook/b/a/e;
.super Ljava/lang/Object;
.source "BaseFbBroadcastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/facebook/content/c;

.field final synthetic d:Lcom/facebook/b/a/d;


# direct methods
.method constructor <init>(Lcom/facebook/b/a/d;Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/content/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/b/a/e;->d:Lcom/facebook/b/a/d;

    iput-object p2, p0, Lcom/facebook/b/a/e;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/b/a/e;->b:Landroid/content/Intent;

    iput-object p4, p0, Lcom/facebook/b/a/e;->c:Lcom/facebook/content/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/b/a/e;->d:Lcom/facebook/b/a/d;

    invoke-static {v0}, Lcom/facebook/b/a/d;->a(Lcom/facebook/b/a/d;)Lcom/facebook/content/b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/b/a/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/b/a/e;->b:Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/b/a/e;->c:Lcom/facebook/content/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/content/b;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/content/c;)V

    .line 124
    return-void
.end method
