.class Lcom/instagram/android/mediacache/IgAsyncTask$2;
.super Lcom/instagram/android/mediacache/IgAsyncTask$WorkerRunnable;
.source "IgAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/mediacache/IgAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/mediacache/IgAsyncTask;


# direct methods
.method constructor <init>(Lcom/instagram/android/mediacache/IgAsyncTask;)V
    .locals 1
    .parameter

    .prologue
    .line 234
    .local p0, this:Lcom/instagram/android/mediacache/IgAsyncTask$2;,"Lcom/instagram/android/mediacache/IgAsyncTask.2;"
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgAsyncTask$2;->this$0:Lcom/instagram/android/mediacache/IgAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/mediacache/IgAsyncTask$WorkerRunnable;-><init>(Lcom/instagram/android/mediacache/IgAsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask$2;->this$0:Lcom/instagram/android/mediacache/IgAsyncTask;

    #getter for: Lcom/instagram/android/mediacache/IgAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgAsyncTask;->access$200(Lcom/instagram/android/mediacache/IgAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 238
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 239
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask$2;->this$0:Lcom/instagram/android/mediacache/IgAsyncTask;

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgAsyncTask$2;->this$0:Lcom/instagram/android/mediacache/IgAsyncTask;

    iget-object v2, p0, Lcom/instagram/android/mediacache/IgAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/instagram/android/mediacache/IgAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #calls: Lcom/instagram/android/mediacache/IgAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/instagram/android/mediacache/IgAsyncTask;->access$300(Lcom/instagram/android/mediacache/IgAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
