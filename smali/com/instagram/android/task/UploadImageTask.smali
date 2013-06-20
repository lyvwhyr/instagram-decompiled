.class public abstract Lcom/instagram/android/task/UploadImageTask;
.super Lcom/instagram/android/mediacache/IgAsyncTask;
.source "UploadImageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/mediacache/IgAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/instagram/android/model/PendingMedia;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadImageTask"


# instance fields
.field private final mBufferIndex:I

.field private final mContext:Landroid/content/Context;

.field private mMedia:Lcom/instagram/android/model/PendingMedia;

.field private final mMediaSource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "bufferIndex"
    .parameter "mediaSource"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgAsyncTask;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/task/UploadImageTask;->mContext:Landroid/content/Context;

    .line 25
    iput p2, p0, Lcom/instagram/android/task/UploadImageTask;->mBufferIndex:I

    .line 26
    iput p3, p0, Lcom/instagram/android/task/UploadImageTask;->mMediaSource:I

    .line 27
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/instagram/android/model/PendingMedia;
    .locals 2
    .parameter "params"

    .prologue
    .line 31
    const-string v0, "UploadImageTask"

    const-string v1, "Creating pending media in background"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/instagram/android/task/UploadImageTask;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/instagram/android/task/UploadImageTask;->mBufferIndex:I

    invoke-static {v0, v1}, Lcom/instagram/android/model/factory/PendingMediaFactory;->make(Landroid/content/Context;I)Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/task/UploadImageTask;->mMedia:Lcom/instagram/android/model/PendingMedia;

    .line 33
    iget-object v0, p0, Lcom/instagram/android/task/UploadImageTask;->mMedia:Lcom/instagram/android/model/PendingMedia;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/instagram/android/task/UploadImageTask;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->getCurrentFilter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/PendingMedia;->setFilterType(I)V

    .line 35
    iget-object v0, p0, Lcom/instagram/android/task/UploadImageTask;->mMedia:Lcom/instagram/android/model/PendingMedia;

    iget v1, p0, Lcom/instagram/android/task/UploadImageTask;->mMediaSource:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/PendingMedia;->setSourceType(I)V

    .line 36
    iget-object v0, p0, Lcom/instagram/android/task/UploadImageTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/instagram/android/task/UploadImageTask;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-static {v0, v1}, Lcom/instagram/android/service/PendingMediaService;->startImageMedia(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V

    .line 37
    const-string v0, "UploadImageTask"

    const-string v1, "Finished creating pending media"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/task/UploadImageTask;->mMedia:Lcom/instagram/android/model/PendingMedia;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/task/UploadImageTask;->doInBackground([Ljava/lang/Void;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    return-object v0
.end method

.method public abstract onFailure()V
.end method

.method protected onPostExecute(Lcom/instagram/android/model/PendingMedia;)V
    .locals 0
    .parameter "pendingMedia"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/instagram/android/mediacache/IgAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/instagram/android/task/UploadImageTask;->onSuccess(Lcom/instagram/android/model/PendingMedia;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/task/UploadImageTask;->onFailure()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Lcom/instagram/android/model/PendingMedia;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/task/UploadImageTask;->onPostExecute(Lcom/instagram/android/model/PendingMedia;)V

    return-void
.end method

.method public abstract onSuccess(Lcom/instagram/android/model/PendingMedia;)V
.end method
