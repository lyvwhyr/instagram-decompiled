.class Lcom/instagram/android/mediacache/IgAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "IgAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/instagram/android/mediacache/IgAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/instagram/android/mediacache/IgAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "task"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/mediacache/IgAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, this:Lcom/instagram/android/mediacache/IgAsyncTask$AsyncTaskResult;,"Lcom/instagram/android/mediacache/IgAsyncTask$AsyncTaskResult<TData;>;"
    .local p2, data:[Ljava/lang/Object;,"[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgAsyncTask$AsyncTaskResult;->mTask:Lcom/instagram/android/mediacache/IgAsyncTask;

    .line 597
    iput-object p2, p0, Lcom/instagram/android/mediacache/IgAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 598
    return-void
.end method
