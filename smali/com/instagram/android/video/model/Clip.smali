.class public Lcom/instagram/android/video/model/Clip;
.super Ljava/lang/Object;
.source "Clip.java"


# instance fields
.field private mCameraId:I

.field private mDuration:I

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/video/model/Clip$ClipListener;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/instagram/android/video/model/Clip$ClipState;

.field private mSystemStartTime:J

.field private mVideoFile:Lcom/instagram/android/video/model/VideoFile;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter "systemStartTime"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/model/Clip;->mListeners:Ljava/util/List;

    .line 28
    iput-wide p1, p0, Lcom/instagram/android/video/model/Clip;->mSystemStartTime:J

    .line 29
    return-void
.end method

.method private setDuration(I)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 36
    iput p1, p0, Lcom/instagram/android/video/model/Clip;->mDuration:I

    .line 37
    iget-object v0, p0, Lcom/instagram/android/video/model/Clip;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/model/Clip$ClipListener;

    .line 38
    invoke-interface {v0, p0, p1}, Lcom/instagram/android/video/model/Clip$ClipListener;->onClipDurationChanged(Lcom/instagram/android/video/model/Clip;I)V

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/instagram/android/video/model/Clip$ClipListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/video/model/Clip;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/instagram/android/video/model/Clip;->mCameraId:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVideoFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/model/Clip;->mVideoFile:Lcom/instagram/android/video/model/VideoFile;

    invoke-virtual {v1}, Lcom/instagram/android/video/model/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " relativeStartTimeMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/video/model/Clip;->getRelativeClipStartTimeMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/video/model/Clip;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lcom/instagram/android/video/model/Clip;->mDuration:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRelativeClipStartTimeMs()J
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/instagram/android/video/model/Clip;->mVideoFile:Lcom/instagram/android/video/model/VideoFile;

    if-eqz v0, :cond_0

    .line 68
    iget-wide v0, p0, Lcom/instagram/android/video/model/Clip;->mSystemStartTime:J

    iget-object v2, p0, Lcom/instagram/android/video/model/Clip;->mVideoFile:Lcom/instagram/android/video/model/VideoFile;

    invoke-virtual {v2}, Lcom/instagram/android/video/model/VideoFile;->getSystemStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 70
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getState()Lcom/instagram/android/video/model/Clip$ClipState;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/android/video/model/Clip;->mState:Lcom/instagram/android/video/model/Clip$ClipState;

    return-object v0
.end method

.method public getVideoFile()Lcom/instagram/android/video/model/VideoFile;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/android/video/model/Clip;->mVideoFile:Lcom/instagram/android/video/model/VideoFile;

    return-object v0
.end method

.method public removeListener(Lcom/instagram/android/video/model/Clip$ClipListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/instagram/android/video/model/Clip;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public setCameraId(I)V
    .locals 0
    .parameter "mCameraId"

    .prologue
    .line 93
    iput p1, p0, Lcom/instagram/android/video/model/Clip;->mCameraId:I

    .line 94
    return-void
.end method

.method public setState(Lcom/instagram/android/video/model/Clip$ClipState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/instagram/android/video/model/Clip;->mState:Lcom/instagram/android/video/model/Clip$ClipState;

    .line 53
    iget-object v0, p0, Lcom/instagram/android/video/model/Clip;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/model/Clip$ClipListener;

    .line 54
    invoke-interface {v0, p0, p1}, Lcom/instagram/android/video/model/Clip$ClipListener;->onClipStateChange(Lcom/instagram/android/video/model/Clip;Lcom/instagram/android/video/model/Clip$ClipState;)V

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public setSystemStopTime(J)V
    .locals 2
    .parameter "systemStopTime"

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/instagram/android/video/model/Clip;->mSystemStartTime:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/instagram/android/video/model/Clip;->setDuration(I)V

    .line 33
    return-void
.end method

.method public setVideoFile(Lcom/instagram/android/video/model/VideoFile;)V
    .locals 0
    .parameter "videoFile"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/instagram/android/video/model/Clip;->mVideoFile:Lcom/instagram/android/video/model/VideoFile;

    .line 60
    return-void
.end method
