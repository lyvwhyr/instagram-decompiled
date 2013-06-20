.class Lcom/facebook/b/a/g;
.super Lcom/facebook/content/DynamicSecureBroadcastReceiver;
.source "BaseFbBroadcastManager.java"


# instance fields
.field final synthetic a:Lcom/facebook/b/a/a;

.field final synthetic b:Lcom/facebook/b/a/f;


# direct methods
.method constructor <init>(Lcom/facebook/b/a/f;Ljava/util/Map;Lcom/facebook/b/a/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/b/a/g;->b:Lcom/facebook/b/a/f;

    iput-object p3, p0, Lcom/facebook/b/a/g;->a:Lcom/facebook/b/a/a;

    invoke-direct {p0, p2}, Lcom/facebook/content/DynamicSecureBroadcastReceiver;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/b/a/g;->b:Lcom/facebook/b/a/f;

    invoke-virtual {v0}, Lcom/facebook/b/a/f;->a()Z

    move-result v0

    return v0
.end method
