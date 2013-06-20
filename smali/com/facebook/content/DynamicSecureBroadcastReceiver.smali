.class public Lcom/facebook/content/DynamicSecureBroadcastReceiver;
.super Lcom/facebook/content/e;
.source "DynamicSecureBroadcastReceiver.java"


# instance fields
.field private final a:Lcom/a/a/b/do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/do",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/content/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/facebook/content/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, actionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Lcom/facebook/content/b;>;"
    invoke-direct {p0}, Lcom/facebook/content/e;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Must include an entry for at least one action"

    invoke-static {v0, v1}, Lcom/a/a/a/t;->b(ZLjava/lang/Object;)V

    .line 21
    invoke-static {p1}, Lcom/a/a/b/do;->a(Ljava/util/Map;)Lcom/a/a/b/do;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/content/DynamicSecureBroadcastReceiver;->a:Lcom/a/a/b/do;

    .line 22
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/content/DynamicSecureBroadcastReceiver;->a:Lcom/a/a/b/do;

    invoke-virtual {v0}, Lcom/a/a/b/do;->b()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Landroid/content/Context;Landroid/content/Intent;)Lcom/a/a/a/n;
    .locals 2
    .parameter
    .parameter
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

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 44
    const/4 v0, 0x0

    .line 45
    if-eqz v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/facebook/content/DynamicSecureBroadcastReceiver;->a:Lcom/a/a/b/do;

    invoke-virtual {v0, v1}, Lcom/a/a/b/do;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/content/b;

    .line 49
    :cond_0
    invoke-static {v0}, Lcom/a/a/a/n;->b(Ljava/lang/Object;)Lcom/a/a/a/n;

    move-result-object v0

    return-object v0
.end method
