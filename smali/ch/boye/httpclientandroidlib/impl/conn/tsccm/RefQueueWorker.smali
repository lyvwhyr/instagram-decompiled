.class public Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;
.super Ljava/lang/Object;
.source "RefQueueWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final refHandler:Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueHandler;

.field protected final refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<*>;"
        }
    .end annotation
.end field

.field protected volatile workerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueHandler;)V
    .locals 2
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<*>;",
            "Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, queue:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Queue must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    if-nez p2, :cond_1

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Handler must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 75
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->refHandler:Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueHandler;

    .line 76
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    .line 91
    :cond_0
    :goto_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 94
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->refHandler:Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueHandler;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueHandler;->handleReference(Ljava/lang/ref/Reference;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0

    .line 99
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    .line 108
    if-eqz v0, :cond_0

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    .line 110
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 112
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefQueueWorker::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
