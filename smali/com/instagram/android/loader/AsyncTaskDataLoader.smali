.class public Lcom/instagram/android/loader/AsyncTaskDataLoader;
.super Landroid/support/v4/a/a;
.source "AsyncTaskDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/a/a",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    .local p0, this:Lcom/instagram/android/loader/AsyncTaskDataLoader;,"Lcom/instagram/android/loader/AsyncTaskDataLoader<TT;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, this:Lcom/instagram/android/loader/AsyncTaskDataLoader;,"Lcom/instagram/android/loader/AsyncTaskDataLoader<TT;>;"
    .local p1, data:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Lcom/instagram/android/loader/AsyncTaskDataLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/a/a;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public loadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Landroid/support/v4/a/a;->onReset()V

    .line 35
    invoke-virtual {p0}, Lcom/instagram/android/loader/AsyncTaskDataLoader;->onStopLoading()V

    .line 36
    return-void
.end method
