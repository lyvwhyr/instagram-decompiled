.class public Lcom/instagram/android/video/ClipStackManager;
.super Ljava/lang/Object;
.source "ClipStackManager.java"

# interfaces
.implements Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener;
.implements Lcom/instagram/android/video/model/Clip$ClipListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipStackManager"


# instance fields
.field private mClipStack:Lcom/instagram/android/video/model/ClipStack;

.field private mCurrentClip:Lcom/instagram/android/video/model/Clip;

.field private mCurrentVideoFileClipStack:Lcom/instagram/android/video/model/ClipStack;

.field private mStackObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/instagram/android/video/model/ClipStack;

    invoke-direct {v0}, Lcom/instagram/android/video/model/ClipStack;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    .line 30
    new-instance v0, Lcom/instagram/android/video/model/ClipStack;

    invoke-direct {v0}, Lcom/instagram/android/video/model/ClipStack;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mCurrentVideoFileClipStack:Lcom/instagram/android/video/model/ClipStack;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mStackObserverList:Ljava/util/List;

    .line 37
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    new-instance v1, Lcom/instagram/android/video/ClipStackManager$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/ClipStackManager$1;-><init>(Lcom/instagram/android/video/ClipStackManager;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/model/ClipStack;->setStackObserver(Lcom/instagram/android/video/collections/ObservedStack$StackObserver;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/video/ClipStackManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mStackObserverList:Ljava/util/List;

    return-object v0
.end method

.method private getDuration(Ljava/lang/String;)I
    .locals 5
    .parameter "fileName"

    .prologue
    .line 80
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 81
    const/4 v1, 0x0

    .line 83
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 84
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :goto_0
    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_1
    return v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string v2, "ClipStackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception reading duration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mStackObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public addNewClip()Lcom/instagram/android/video/model/Clip;
    .locals 5

    .prologue
    .line 96
    new-instance v0, Lcom/instagram/android/video/model/Clip;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x320

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/video/model/Clip;-><init>(J)V

    iput-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mCurrentClip:Lcom/instagram/android/video/model/Clip;

    .line 97
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mCurrentClip:Lcom/instagram/android/video/model/Clip;

    sget-object v1, Lcom/instagram/android/video/model/Clip$ClipState;->RECORDING:Lcom/instagram/android/video/model/Clip$ClipState;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/model/Clip;->setState(Lcom/instagram/android/video/model/Clip$ClipState;)V

    .line 98
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mCurrentClip:Lcom/instagram/android/video/model/Clip;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CAMERA_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/model/Clip;->setCameraId(I)V

    .line 100
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    iget-object v1, p0, Lcom/instagram/android/video/ClipStackManager;->mCurrentClip:Lcom/instagram/android/video/model/Clip;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/model/ClipStack;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mCurrentVideoFileClipStack:Lcom/instagram/android/video/model/ClipStack;

    iget-object v1, p0, Lcom/instagram/android/video/ClipStackManager;->mCurrentClip:Lcom/instagram/android/video/model/Clip;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/model/ClipStack;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mCurrentClip:Lcom/instagram/android/video/model/Clip;

    invoke-virtual {v0, p0}, Lcom/instagram/android/video/model/Clip;->addListener(Lcom/instagram/android/video/model/Clip$ClipListener;)V

    .line 103
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mCurrentClip:Lcom/instagram/android/video/model/Clip;

    return-object v0
.end method

.method public cancelSoftDelete()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v0}, Lcom/instagram/android/video/model/ClipStack;->getLastClip()Lcom/instagram/android/video/model/Clip;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v0}, Lcom/instagram/android/video/model/ClipStack;->getLastClip()Lcom/instagram/android/video/model/Clip;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/video/model/Clip$ClipState;->RECORDED:Lcom/instagram/android/video/model/Clip$ClipState;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/model/Clip;->setState(Lcom/instagram/android/video/model/Clip$ClipState;)V

    .line 170
    :cond_0
    return-void
.end method

.method public checkLastClip()V
    .locals 5

    .prologue
    .line 173
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v0}, Lcom/instagram/android/video/model/ClipStack;->getLastClip()Lcom/instagram/android/video/model/Clip;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lcom/instagram/android/video/model/Clip;->getVideoFile()Lcom/instagram/android/video/model/VideoFile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 177
    invoke-virtual {v1}, Lcom/instagram/android/video/model/Clip;->getVideoFile()Lcom/instagram/android/video/model/VideoFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/video/model/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 178
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string v2, "ClipStackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when retrieving metadata: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    :goto_1
    const-string v0, "ClipStackManager"

    const-string v2, "No video file or too short; deleting"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v0, Lcom/instagram/android/video/model/Clip$ClipState;->INVALID:Lcom/instagram/android/video/model/Clip$ClipState;

    invoke-virtual {v1, v0}, Lcom/instagram/android/video/model/Clip;->setState(Lcom/instagram/android/video/model/Clip$ClipState;)V

    .line 191
    invoke-virtual {p0}, Lcom/instagram/android/video/ClipStackManager;->deleteLastClip()V

    goto :goto_0

    .line 187
    :cond_1
    const-string v0, "ClipStackManager"

    const-string v2, "No video file found"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public deleteLastClip()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v0}, Lcom/instagram/android/video/model/ClipStack;->getLastClip()Lcom/instagram/android/video/model/Clip;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Lcom/instagram/android/video/model/Clip;->getVideoFile()Lcom/instagram/android/video/model/VideoFile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/instagram/android/video/model/Clip;->getVideoFile()Lcom/instagram/android/video/model/VideoFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/video/model/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v1}, Lcom/instagram/android/video/util/VideoFileUtil;->deleteFileAsync(Ljava/lang/String;)V

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v1, v0}, Lcom/instagram/android/video/model/ClipStack;->remove(Ljava/lang/Object;)Z

    .line 209
    :goto_1
    return-void

    .line 203
    :cond_0
    const-string v1, "ClipStackManager"

    const-string v2, "Deleted clip did not have a video file"

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_1
    const-string v0, "ClipStackManager"

    const-string v1, "Attempted to delete a non-existent clip"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public finishClip()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mCurrentClip:Lcom/instagram/android/video/model/Clip;

    sget-object v1, Lcom/instagram/android/video/model/Clip$ClipState;->RECORDED:Lcom/instagram/android/video/model/Clip$ClipState;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/model/Clip;->setState(Lcom/instagram/android/video/model/Clip$ClipState;)V

    .line 137
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mCurrentClip:Lcom/instagram/android/video/model/Clip;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/video/model/Clip;->setSystemStopTime(J)V

    .line 139
    invoke-virtual {p0}, Lcom/instagram/android/video/ClipStackManager;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mStackObserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;

    .line 141
    invoke-interface {v0}, Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;->onMaxVideoDurationReached()V

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public getClipPaths()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 229
    iget-object v1, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v1}, Lcom/instagram/android/video/model/ClipStack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    new-array v0, v0, [Ljava/lang/String;

    .line 241
    :goto_0
    return-object v0

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v1}, Lcom/instagram/android/video/model/ClipStack;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v1}, Lcom/instagram/android/video/model/ClipStack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 235
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/model/Clip;

    .line 237
    invoke-virtual {v0}, Lcom/instagram/android/video/model/Clip;->getVideoFile()Lcom/instagram/android/video/model/VideoFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/model/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 238
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 239
    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public getClipStack()Lcom/instagram/android/video/model/ClipStack;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    return-object v0
.end method

.method public getRemainingDuration()I
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/instagram/android/video/ClipStackManager;->getTotalClipLength()I

    move-result v0

    rsub-int v0, v0, 0x3a98

    return v0
.end method

.method public getTotalClipLength()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v0}, Lcom/instagram/android/video/model/ClipStack;->getTotalClipLength()I

    move-result v0

    return v0
.end method

.method public hasSavedClips()Z
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v0}, Lcom/instagram/android/video/model/ClipStack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/model/Clip;

    .line 116
    invoke-virtual {v0}, Lcom/instagram/android/video/model/Clip;->getState()Lcom/instagram/android/video/model/Clip$ClipState;

    move-result-object v0

    sget-object v2, Lcom/instagram/android/video/model/Clip$ClipState;->RECORDING:Lcom/instagram/android/video/model/Clip$ClipState;

    if-eq v0, v2, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/instagram/android/video/ClipStackManager;->getRemainingDuration()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInSoftDelete()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v0}, Lcom/instagram/android/video/model/ClipStack;->getLastClip()Lcom/instagram/android/video/model/Clip;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v0}, Lcom/instagram/android/video/model/ClipStack;->getLastClip()Lcom/instagram/android/video/model/Clip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/model/Clip;->getState()Lcom/instagram/android/video/model/Clip$ClipState;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/video/model/Clip$ClipState;->SOFT_DELETED:Lcom/instagram/android/video/model/Clip$ClipState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSemiFull()Z
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/instagram/android/video/ClipStackManager;->getRemainingDuration()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClipDurationChanged(Lcom/instagram/android/video/model/Clip;I)V
    .locals 2
    .parameter "clip"
    .parameter "length"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mStackObserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;

    .line 149
    invoke-interface {v0, p1}, Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;->onClipDurationChanged(Lcom/instagram/android/video/model/Clip;)V

    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method public onClipStateChange(Lcom/instagram/android/video/model/Clip;Lcom/instagram/android/video/model/Clip$ClipState;)V
    .locals 2
    .parameter "clip"
    .parameter "newState"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mStackObserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;

    .line 157
    invoke-interface {v0, p1, p2}, Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;->onClipChanged(Lcom/instagram/android/video/model/Clip;Lcom/instagram/android/video/model/Clip$ClipState;)V

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method public onVideoRecorderStateChange(Ljava/lang/String;Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;J)V
    .locals 9
    .parameter "fileName"
    .parameter "videoState"
    .parameter "timeStamp"

    .prologue
    .line 58
    sget-object v0, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;->RECORDING:Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    if-ne p2, v0, :cond_1

    .line 59
    new-instance v0, Lcom/instagram/android/video/model/ClipStack;

    invoke-direct {v0}, Lcom/instagram/android/video/model/ClipStack;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mCurrentVideoFileClipStack:Lcom/instagram/android/video/model/ClipStack;

    .line 77
    :cond_0
    return-void

    .line 60
    :cond_1
    sget-object v0, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;->STOPPED:Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    if-ne p2, v0, :cond_0

    .line 63
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, p1}, Lcom/instagram/android/video/ClipStackManager;->getDuration(Ljava/lang/String;)I

    move-result v7

    .line 70
    int-to-long v0, v7

    sub-long v2, p3, v0

    .line 72
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mCurrentVideoFileClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v0}, Lcom/instagram/android/video/model/ClipStack;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/instagram/android/video/model/Clip;

    .line 73
    new-instance v0, Lcom/instagram/android/video/model/VideoFile;

    int-to-long v4, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/video/model/VideoFile;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v6, v0}, Lcom/instagram/android/video/model/Clip;->setVideoFile(Lcom/instagram/android/video/model/VideoFile;)V

    goto :goto_0
.end method

.method public printStack()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v0}, Lcom/instagram/android/video/model/ClipStack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/model/Clip;

    .line 223
    const-string v2, "ClipStackManager"

    invoke-virtual {v0}, Lcom/instagram/android/video/model/Clip;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mStackObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v0}, Lcom/instagram/android/video/model/ClipStack;->size()I

    move-result v0

    return v0
.end method

.method public softDeleteClip()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v0}, Lcom/instagram/android/video/model/ClipStack;->getLastClip()Lcom/instagram/android/video/model/Clip;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mClipStack:Lcom/instagram/android/video/model/ClipStack;

    invoke-virtual {v0}, Lcom/instagram/android/video/model/ClipStack;->getLastClip()Lcom/instagram/android/video/model/Clip;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/video/model/Clip$ClipState;->SOFT_DELETED:Lcom/instagram/android/video/model/Clip$ClipState;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/model/Clip;->setState(Lcom/instagram/android/video/model/Clip$ClipState;)V

    .line 215
    :cond_0
    return-void
.end method

.method public updateClip()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager;->mCurrentClip:Lcom/instagram/android/video/model/Clip;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/video/model/Clip;->setSystemStopTime(J)V

    .line 133
    return-void
.end method
