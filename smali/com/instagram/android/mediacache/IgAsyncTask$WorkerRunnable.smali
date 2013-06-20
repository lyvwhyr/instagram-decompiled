.class abstract Lcom/instagram/android/mediacache/IgAsyncTask$WorkerRunnable;
.super Ljava/lang/Object;
.source "IgAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field mParams:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/mediacache/IgAsyncTask$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 584
    .local p0, this:Lcom/instagram/android/mediacache/IgAsyncTask$WorkerRunnable;,"Lcom/instagram/android/mediacache/IgAsyncTask$WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgAsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method
