.class public Lcom/instagram/android/video/camera/VideoRecorderDelegateListener;
.super Ljava/lang/Object;
.source "VideoRecorderDelegateListener.java"

# interfaces
.implements Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener;


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/camera/VideoRecorderDelegateListener;->mListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/android/video/camera/VideoRecorderDelegateListener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public onVideoRecorderStateChange(Ljava/lang/String;Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;J)V
    .locals 2
    .parameter "fileName"
    .parameter "videoState"
    .parameter "timeStamp"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/instagram/android/video/camera/VideoRecorderDelegateListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener;

    .line 17
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener;->onVideoRecorderStateChange(Ljava/lang/String;Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;J)V

    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/android/video/camera/VideoRecorderDelegateListener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method
