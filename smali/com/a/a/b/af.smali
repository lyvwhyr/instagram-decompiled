.class final Lcom/a/a/b/af;
.super Ljava/lang/Object;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lcom/a/a/b/cb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/b/cb",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/a/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/g",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field

.field volatile b:Lcom/a/a/b/cb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/cb",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ComputingValueReference.this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/a/g;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/g",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    invoke-static {}, Lcom/a/a/b/ah;->g()Lcom/a/a/b/cb;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/af;->b:Lcom/a/a/b/cb;

    .line 292
    iput-object p1, p0, Lcom/a/a/b/af;->a:Lcom/a/a/a/g;

    .line 293
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/b/bk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/a/a/b/bk;)Lcom/a/a/b/cb;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)",
            "Lcom/a/a/b/cb",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 309
    return-object p0
.end method

.method a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TV;"
        }
    .end annotation

    .prologue
    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/af;->a:Lcom/a/a/a/g;

    invoke-interface {v0, p1}, Lcom/a/a/a/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 361
    new-instance v1, Lcom/a/a/b/ac;

    invoke-direct {v1, v0}, Lcom/a/a/b/ac;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/a/a/b/af;->b(Lcom/a/a/b/cb;)V

    .line 362
    return-object v0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    new-instance v1, Lcom/a/a/b/ab;

    invoke-direct {v1, v0}, Lcom/a/a/b/ab;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/a/a/b/af;->b(Lcom/a/a/b/cb;)V

    .line 358
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/a/a/b/cb;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/cb",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/a/a/b/af;->b(Lcom/a/a/b/cb;)V

    .line 350
    return-void
.end method

.method b(Lcom/a/a/b/cb;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/cb",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 366
    monitor-enter p0

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/af;->b:Lcom/a/a/b/cb;

    sget-object v1, Lcom/a/a/b/ah;->q:Lcom/a/a/b/cb;

    if-ne v0, v1, :cond_0

    .line 368
    iput-object p1, p0, Lcom/a/a/b/af;->b:Lcom/a/a/b/cb;

    .line 369
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 371
    :cond_0
    monitor-exit p0

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/a/a/b/af;->b:Lcom/a/a/b/cb;

    sget-object v1, Lcom/a/a/b/ah;->q:Lcom/a/a/b/cb;

    if-ne v0, v1, :cond_1

    .line 323
    const/4 v1, 0x0

    .line 325
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 326
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/a/a/b/af;->b:Lcom/a/a/b/cb;

    sget-object v2, Lcom/a/a/b/ah;->q:Lcom/a/a/b/cb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_0

    .line 328
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    const/4 v1, 0x1

    .line 331
    goto :goto_0

    .line 333
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 335
    if-eqz v1, :cond_1

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/a/a/b/af;->b:Lcom/a/a/b/cb;

    invoke-interface {v0}, Lcom/a/a/b/cb;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 333
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 335
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method
