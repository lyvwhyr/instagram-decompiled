.class Lcom/facebook/common/executors/c;
.super Lcom/a/a/e/a/d;
.source "WakingExecutorService.java"

# interfaces
.implements Lcom/a/a/e/a/e;
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/ScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/e/a/d",
        "<TV;>;",
        "Lcom/a/a/e/a/e",
        "<TV;>;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/ScheduledFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/e/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/e/a/f",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/a/a/e/a/d;-><init>()V

    .line 283
    invoke-static {p1, p2}, Lcom/a/a/e/a/f;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/a/a/e/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/executors/c;->a:Lcom/a/a/e/a/f;

    .line 284
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/a/a/e/a/d;-><init>()V

    .line 279
    invoke-static {p1}, Lcom/a/a/e/a/f;->a(Ljava/util/concurrent/Callable;)Lcom/a/a/e/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/executors/c;->a:Lcom/a/a/e/a/f;

    .line 280
    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Delayed;)I
    .locals 1
    .parameter

    .prologue
    .line 293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected a()Lcom/a/a/e/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/e/a/f",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/facebook/common/executors/c;->a:Lcom/a/a/e/a/f;

    return-object v0
.end method

.method protected synthetic b()Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/facebook/common/executors/c;->a()Lcom/a/a/e/a/f;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/facebook/common/executors/c;->a()Lcom/a/a/e/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 272
    .local p0, this:Lcom/facebook/common/executors/c;,"Lcom/facebook/common/executors/c<TV;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/facebook/common/executors/c;->a(Ljava/util/concurrent/Delayed;)I

    move-result v0

    return v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 1
    .parameter "timeUnit"

    .prologue
    .line 288
    .local p0, this:Lcom/facebook/common/executors/c;,"Lcom/facebook/common/executors/c<TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/facebook/common/executors/c;->a()Lcom/a/a/e/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/e/a/f;->run()V

    .line 309
    return-void
.end method
