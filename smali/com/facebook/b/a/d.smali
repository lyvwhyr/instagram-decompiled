.class Lcom/facebook/b/a/d;
.super Ljava/lang/Object;
.source "BaseFbBroadcastManager.java"

# interfaces
.implements Lcom/facebook/content/b;


# instance fields
.field private final a:Lcom/facebook/content/b;

.field private final b:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/facebook/content/b;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/facebook/b/a/d;->a:Lcom/facebook/content/b;

    .line 114
    iput-object p2, p0, Lcom/facebook/b/a/d;->b:Landroid/os/Handler;

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/content/b;Landroid/os/Handler;Lcom/facebook/b/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/facebook/b/a/d;-><init>(Lcom/facebook/content/b;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/b/a/d;)Lcom/facebook/content/b;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/b/a/d;->a:Lcom/facebook/content/b;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/content/c;)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .parameter "receiver"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/b/a/d;->b:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/b/a/e;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/b/a/e;-><init>(Lcom/facebook/b/a/d;Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/content/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method
