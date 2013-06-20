.class public Lcom/facebook/common/executors/WakingExecutorService;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "WakingExecutorService.java"

# interfaces
.implements Lcom/a/a/e/a/h;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/facebook/common/g/a;

.field private final e:Landroid/app/AlarmManager;

.field private final f:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/facebook/common/executors/e",
            "<*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-class v0, Lcom/facebook/common/executors/WakingExecutorService;

    sput-object v0, Lcom/facebook/common/executors/WakingExecutorService;->b:Ljava/lang/Class;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/facebook/common/executors/WakingExecutorService;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/executors/WakingExecutorService;->a:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 222
    iget-object v0, p0, Lcom/facebook/common/executors/WakingExecutorService;->f:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lcom/facebook/common/executors/WakingExecutorService;->b:Ljava/lang/Class;

    const-string v1, "No pending tasks, so not setting alarm"

    invoke-static {v0, v1}, Lcom/facebook/c/b/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/executors/WakingExecutorService;->f:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/executors/e;

    iget-wide v0, v0, Lcom/facebook/common/executors/e;->b:J

    .line 227
    sget-object v2, Lcom/facebook/common/executors/WakingExecutorService;->b:Ljava/lang/Class;

    const-string v3, "Next alarm in %d seconds"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/common/executors/WakingExecutorService;->d:Lcom/facebook/common/g/a;

    invoke-interface {v5}, Lcom/facebook/common/g/a;->a()J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v2, v3, v4}, Lcom/facebook/c/b/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/facebook/common/executors/WakingExecutorService;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcom/facebook/common/executors/WakingExecutorService;->c:Landroid/content/Context;

    invoke-static {v3, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 231
    iget-object v3, p0, Lcom/facebook/common/executors/WakingExecutorService;->e:Landroid/app/AlarmManager;

    invoke-virtual {v3, v9, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/common/executors/c;J)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/executors/c",
            "<*>;J)V"
        }
    .end annotation

    .prologue
    .line 191
    sget-object v0, Lcom/facebook/common/executors/WakingExecutorService;->b:Ljava/lang/Class;

    const-string v1, "Scheduling task for %d seconds from now"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/common/executors/WakingExecutorService;->d:Lcom/facebook/common/g/a;

    invoke-interface {v4}, Lcom/facebook/common/g/a;->a()J

    move-result-wide v4

    sub-long v4, p2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/c/b/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/executors/WakingExecutorService;->f:Ljava/util/PriorityQueue;

    new-instance v1, Lcom/facebook/common/executors/e;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/common/executors/e;-><init>(Lcom/facebook/common/executors/c;J)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-direct {p0}, Lcom/facebook/common/executors/WakingExecutorService;->a()V

    .line 195
    monitor-exit p0

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/common/executors/c;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lcom/facebook/common/executors/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lcom/facebook/common/executors/c;

    invoke-direct {v0, p1, p2}, Lcom/facebook/common/executors/c;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method private b(Ljava/util/concurrent/Callable;)Lcom/facebook/common/executors/c;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lcom/facebook/common/executors/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lcom/facebook/common/executors/c;

    invoke-direct {v0, p1}, Lcom/facebook/common/executors/c;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Lcom/facebook/common/executors/c;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/facebook/common/executors/c",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/common/executors/WakingExecutorService;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/common/executors/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/facebook/common/executors/c;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/facebook/common/executors/c",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/common/executors/WakingExecutorService;->b(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/common/executors/c;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/facebook/common/executors/WakingExecutorService;->d:Lcom/facebook/common/g/a;

    invoke-interface {v1}, Lcom/facebook/common/g/a;->a()J

    move-result-wide v1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/common/executors/WakingExecutorService;->a(Lcom/facebook/common/executors/c;J)V

    .line 88
    return-object v0
.end method

.method public a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/common/executors/c;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lcom/facebook/common/executors/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/executors/WakingExecutorService;->b(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/common/executors/c;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/facebook/common/executors/WakingExecutorService;->d:Lcom/facebook/common/g/a;

    invoke-interface {v1}, Lcom/facebook/common/g/a;->a()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/common/executors/WakingExecutorService;->a(Lcom/facebook/common/executors/c;J)V

    .line 110
    return-object v0
.end method

.method public a(Ljava/util/concurrent/Callable;)Lcom/facebook/common/executors/c;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lcom/facebook/common/executors/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/facebook/common/executors/WakingExecutorService;->a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lcom/facebook/common/executors/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lcom/facebook/common/executors/c;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/facebook/common/executors/c",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/facebook/common/executors/WakingExecutorService;->b(Ljava/util/concurrent/Callable;)Lcom/facebook/common/executors/c;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/facebook/common/executors/WakingExecutorService;->d:Lcom/facebook/common/g/a;

    invoke-interface {v1}, Lcom/facebook/common/g/a;->a()J

    move-result-wide v1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/common/executors/WakingExecutorService;->a(Lcom/facebook/common/executors/c;J)V

    .line 98
    return-object v0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .parameter "timeout"
    .parameter "timeUnit"

    .prologue
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "runnable"

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/facebook/common/executors/WakingExecutorService;->a(Ljava/lang/Runnable;)Lcom/facebook/common/executors/c;

    .line 121
    return-void
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .parameter "runnable"
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p2, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/facebook/common/executors/d;

    invoke-direct {v0, p1, p2}, Lcom/facebook/common/executors/d;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Lcom/facebook/common/executors/d;

    invoke-direct {v0, p1}, Lcom/facebook/common/executors/d;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/common/executors/WakingExecutorService;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/facebook/common/executors/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/common/executors/WakingExecutorService;->a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lcom/facebook/common/executors/c;

    move-result-object v0

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .parameter "runnable"
    .parameter "initialDelay"
    .parameter "period"
    .parameter "timeUnit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .parameter "runnable"
    .parameter "initialDelay"
    .parameter "delay"
    .parameter "timeUnit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/facebook/common/executors/WakingExecutorService;->a(Ljava/lang/Runnable;)Lcom/facebook/common/executors/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/facebook/common/executors/WakingExecutorService;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/common/executors/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/facebook/common/executors/WakingExecutorService;->a(Ljava/util/concurrent/Callable;)Lcom/facebook/common/executors/c;

    move-result-object v0

    return-object v0
.end method
