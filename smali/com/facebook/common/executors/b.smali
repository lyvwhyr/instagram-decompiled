.class Lcom/facebook/common/executors/b;
.super Ljava/lang/Object;
.source "NamedThreadFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/facebook/common/executors/a;


# direct methods
.method constructor <init>(Lcom/facebook/common/executors/a;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/facebook/common/executors/b;->b:Lcom/facebook/common/executors/a;

    iput-object p2, p0, Lcom/facebook/common/executors/b;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/executors/b;->b:Lcom/facebook/common/executors/a;

    invoke-static {v0}, Lcom/facebook/common/executors/a;->a(Lcom/facebook/common/executors/a;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/facebook/common/executors/b;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 45
    return-void

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method
