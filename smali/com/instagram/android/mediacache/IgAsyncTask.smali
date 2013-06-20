.class public abstract Lcom/instagram/android/mediacache/IgAsyncTask;
.super Ljava/lang/Object;
.source "IgAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/instagram/android/mediacache/IgAsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/instagram/android/mediacache/IgAsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/instagram/android/mediacache/IgAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/android/mediacache/IgAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 166
    new-instance v0, Lcom/instagram/android/mediacache/IgAsyncTask$1;

    invoke-direct {v0}, Lcom/instagram/android/mediacache/IgAsyncTask$1;-><init>()V

    sput-object v0, Lcom/instagram/android/mediacache/IgAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 174
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/instagram/android/mediacache/IgAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 180
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/instagram/android/mediacache/IgAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/instagram/android/mediacache/IgAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/instagram/android/mediacache/IgAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 187
    new-instance v0, Lcom/instagram/android/mediacache/IgAsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/android/mediacache/IgAsyncTask$InternalHandler;-><init>(Lcom/instagram/android/mediacache/IgAsyncTask$1;)V

    sput-object v0, Lcom/instagram/android/mediacache/IgAsyncTask;->sHandler:Lcom/instagram/android/mediacache/IgAsyncTask$InternalHandler;

    .line 189
    sget-object v0, Lcom/instagram/android/mediacache/IgAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/instagram/android/mediacache/IgAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    sget-object v0, Lcom/instagram/android/mediacache/IgAsyncTask$Status;->PENDING:Lcom/instagram/android/mediacache/IgAsyncTask$Status;

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mStatus:Lcom/instagram/android/mediacache/IgAsyncTask$Status;

    .line 195
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 234
    new-instance v0, Lcom/instagram/android/mediacache/IgAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/mediacache/IgAsyncTask$2;-><init>(Lcom/instagram/android/mediacache/IgAsyncTask;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mWorker:Lcom/instagram/android/mediacache/IgAsyncTask$WorkerRunnable;

    .line 243
    new-instance v0, Lcom/instagram/android/mediacache/IgAsyncTask$3;

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mWorker:Lcom/instagram/android/mediacache/IgAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/mediacache/IgAsyncTask$3;-><init>(Lcom/instagram/android/mediacache/IgAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 263
    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/mediacache/IgAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/mediacache/IgAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/IgAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/mediacache/IgAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/IgAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/instagram/android/mediacache/IgAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/IgAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 534
    sget-object v0, Lcom/instagram/android/mediacache/IgAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 535
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, this:Lcom/instagram/android/mediacache/IgAsyncTask;,"Lcom/instagram/android/mediacache/IgAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-virtual {p0}, Lcom/instagram/android/mediacache/IgAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p0, p1}, Lcom/instagram/android/mediacache/IgAsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 563
    :goto_0
    sget-object v0, Lcom/instagram/android/mediacache/IgAsyncTask$Status;->FINISHED:Lcom/instagram/android/mediacache/IgAsyncTask$Status;

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mStatus:Lcom/instagram/android/mediacache/IgAsyncTask$Status;

    .line 564
    return-void

    .line 561
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instagram/android/mediacache/IgAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/instagram/android/mediacache/IgAsyncTask;->sHandler:Lcom/instagram/android/mediacache/IgAsyncTask$InternalHandler;

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgAsyncTask$InternalHandler;->getLooper()Landroid/os/Looper;

    .line 221
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/instagram/android/mediacache/IgAsyncTask;,"Lcom/instagram/android/mediacache/IgAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    const/4 v4, 0x1

    .line 273
    sget-object v0, Lcom/instagram/android/mediacache/IgAsyncTask;->sHandler:Lcom/instagram/android/mediacache/IgAsyncTask$InternalHandler;

    new-instance v1, Lcom/instagram/android/mediacache/IgAsyncTask$AsyncTaskResult;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/instagram/android/mediacache/IgAsyncTask$AsyncTaskResult;-><init>(Lcom/instagram/android/mediacache/IgAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/instagram/android/mediacache/IgAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 276
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, this:Lcom/instagram/android/mediacache/IgAsyncTask;,"Lcom/instagram/android/mediacache/IgAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 267
    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/IgAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter "exec"

    .prologue
    .line 227
    sput-object p0, Lcom/instagram/android/mediacache/IgAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 228
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 414
    .local p0, this:Lcom/instagram/android/mediacache/IgAsyncTask;,"Lcom/instagram/android/mediacache/IgAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/instagram/android/mediacache/IgAsyncTask;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/instagram/android/mediacache/IgAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, this:Lcom/instagram/android/mediacache/IgAsyncTask;,"Lcom/instagram/android/mediacache/IgAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, params:[Ljava/lang/Object;,"[TParams;"
    sget-object v0, Lcom/instagram/android/mediacache/IgAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/instagram/android/mediacache/IgAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/instagram/android/mediacache/IgAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/instagram/android/mediacache/IgAsyncTask;
    .locals 2
    .parameter "exec"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/instagram/android/mediacache/IgAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 507
    .local p0, this:Lcom/instagram/android/mediacache/IgAsyncTask;,"Lcom/instagram/android/mediacache/IgAsyncTask<TParams;TProgress;TResult;>;"
    .local p2, params:[Ljava/lang/Object;,"[TParams;"
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mStatus:Lcom/instagram/android/mediacache/IgAsyncTask$Status;

    sget-object v1, Lcom/instagram/android/mediacache/IgAsyncTask$Status;->PENDING:Lcom/instagram/android/mediacache/IgAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 508
    sget-object v0, Lcom/instagram/android/mediacache/IgAsyncTask$4;->$SwitchMap$com$instagram$android$mediacache$IgAsyncTask$Status:[I

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mStatus:Lcom/instagram/android/mediacache/IgAsyncTask$Status;

    invoke-virtual {v1}, Lcom/instagram/android/mediacache/IgAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 519
    :cond_0
    sget-object v0, Lcom/instagram/android/mediacache/IgAsyncTask$Status;->RUNNING:Lcom/instagram/android/mediacache/IgAsyncTask$Status;

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mStatus:Lcom/instagram/android/mediacache/IgAsyncTask$Status;

    .line 521
    invoke-virtual {p0}, Lcom/instagram/android/mediacache/IgAsyncTask;->onPreExecute()V

    .line 523
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mWorker:Lcom/instagram/android/mediacache/IgAsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/instagram/android/mediacache/IgAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 524
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 526
    return-object p0

    .line 510
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, this:Lcom/instagram/android/mediacache/IgAsyncTask;,"Lcom/instagram/android/mediacache/IgAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/instagram/android/mediacache/IgAsyncTask$Status;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mStatus:Lcom/instagram/android/mediacache/IgAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, this:Lcom/instagram/android/mediacache/IgAsyncTask;,"Lcom/instagram/android/mediacache/IgAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-virtual {p0}, Lcom/instagram/android/mediacache/IgAsyncTask;->onCancelled()V

    .line 356
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, this:Lcom/instagram/android/mediacache/IgAsyncTask;,"Lcom/instagram/android/mediacache/IgAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, this:Lcom/instagram/android/mediacache/IgAsyncTask;,"Lcom/instagram/android/mediacache/IgAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, values:[Ljava/lang/Object;,"[TProgress;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, this:Lcom/instagram/android/mediacache/IgAsyncTask;,"Lcom/instagram/android/mediacache/IgAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, values:[Ljava/lang/Object;,"[TProgress;"
    invoke-virtual {p0}, Lcom/instagram/android/mediacache/IgAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    sget-object v0, Lcom/instagram/android/mediacache/IgAsyncTask;->sHandler:Lcom/instagram/android/mediacache/IgAsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/instagram/android/mediacache/IgAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/mediacache/IgAsyncTask$AsyncTaskResult;-><init>(Lcom/instagram/android/mediacache/IgAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/mediacache/IgAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 555
    :cond_0
    return-void
.end method
