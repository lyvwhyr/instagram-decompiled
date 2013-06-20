.class public abstract Lcom/facebook/b/a/l;
.super Ljava/lang/Object;
.source "SafeLocalBroadcastReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final filter:Landroid/content/IntentFilter;

.field private final localBroadcastManager:Landroid/support/v4/a/e;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private registered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/facebook/b/a/l;

    sput-object v0, Lcom/facebook/b/a/l;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/b/a/l;->localBroadcastManager:Landroid/support/v4/a/e;

    .line 34
    iput-object p2, p0, Lcom/facebook/b/a/l;->filter:Landroid/content/IntentFilter;

    .line 35
    new-instance v0, Lcom/facebook/b/a/m;

    invoke-direct {v0, p0}, Lcom/facebook/b/a/m;-><init>(Lcom/facebook/b/a/l;)V

    iput-object v0, p0, Lcom/facebook/b/a/l;->receiver:Landroid/content/BroadcastReceiver;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/b/a/l;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/facebook/b/a/l;->registered:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/facebook/b/a/l;->TAG:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public abstract onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public register()V
    .locals 3

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/facebook/b/a/l;->registered:Z

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/facebook/b/a/l;->TAG:Ljava/lang/Class;

    const-string v1, "Called registerNotificationReceiver twice."

    invoke-static {v0, v1}, Lcom/facebook/c/b/a;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/facebook/b/a/l;->localBroadcastManager:Landroid/support/v4/a/e;

    iget-object v1, p0, Lcom/facebook/b/a/l;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/facebook/b/a/l;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/b/a/l;->registered:Z

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/facebook/b/a/l;->registered:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/facebook/b/a/l;->localBroadcastManager:Landroid/support/v4/a/e;

    iget-object v1, p0, Lcom/facebook/b/a/l;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/b/a/l;->registered:Z

    .line 61
    :cond_0
    return-void
.end method
