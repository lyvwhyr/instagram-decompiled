.class public abstract Lcom/instagram/android/loader/ImmediateAsyncTaskLoaderAsyncTask;
.super Landroid/support/v4/a/a;
.source "ImmediateAsyncTaskLoaderAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/a/a",
        "<TD;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    .local p0, this:Lcom/instagram/android/loader/ImmediateAsyncTaskLoaderAsyncTask;,"Lcom/instagram/android/loader/ImmediateAsyncTaskLoaderAsyncTask<TD;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/instagram/android/loader/ImmediateAsyncTaskLoaderAsyncTask;,"Lcom/instagram/android/loader/ImmediateAsyncTaskLoaderAsyncTask<TD;>;"
    .local p1, data:Ljava/lang/Object;,"TD;"
    invoke-super {p0, p1}, Landroid/support/v4/a/a;->deliverResult(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/instagram/android/loader/ImmediateAsyncTaskLoaderAsyncTask;->forceLoad()V

    .line 49
    invoke-super {p0}, Landroid/support/v4/a/a;->onStartLoading()V

    .line 50
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/instagram/android/loader/ImmediateAsyncTaskLoaderAsyncTask;->cancelLoad()Z

    .line 56
    return-void
.end method
