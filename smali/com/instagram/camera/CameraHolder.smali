.class public Lcom/instagram/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static final RELEASE_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static sHolder:Lcom/instagram/camera/CameraHolder;


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field protected mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mKeepBeforeTime:J

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mUsers:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/instagram/camera/CameraHolder;->mKeepBeforeTime:J

    .line 40
    iput v0, p0, Lcom/instagram/camera/CameraHolder;->mUsers:I

    .line 42
    iput v3, p0, Lcom/instagram/camera/CameraHolder;->mCameraId:I

    .line 43
    iput v3, p0, Lcom/instagram/camera/CameraHolder;->mBackCameraId:I

    iput v3, p0, Lcom/instagram/camera/CameraHolder;->mFrontCameraId:I

    .line 106
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CameraHolder"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v2, Lcom/instagram/camera/CameraHolder$MyHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/instagram/camera/CameraHolder$MyHandler;-><init>(Lcom/instagram/camera/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/instagram/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 109
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/instagram/camera/CameraHolder;->mNumberOfCameras:I

    .line 110
    iget v1, p0, Lcom/instagram/camera/CameraHolder;->mNumberOfCameras:I

    new-array v1, v1, [Landroid/hardware/Camera$CameraInfo;

    iput-object v1, p0, Lcom/instagram/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 111
    :goto_0
    iget v1, p0, Lcom/instagram/camera/CameraHolder;->mNumberOfCameras:I

    if-ge v0, v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/instagram/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v2, v1, v0

    .line 113
    iget-object v1, p0, Lcom/instagram/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 114
    iget v1, p0, Lcom/instagram/camera/CameraHolder;->mBackCameraId:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/instagram/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_0

    .line 115
    iput v0, p0, Lcom/instagram/camera/CameraHolder;->mBackCameraId:I

    .line 117
    :cond_0
    iget v1, p0, Lcom/instagram/camera/CameraHolder;->mFrontCameraId:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/instagram/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 118
    iput v0, p0, Lcom/instagram/camera/CameraHolder;->mFrontCameraId:I

    .line 111
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/camera/CameraHolder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/instagram/camera/CameraHolder;->mUsers:I

    return v0
.end method

.method static synthetic access$100(Lcom/instagram/camera/CameraHolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/instagram/camera/CameraHolder;->releaseCamera()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/instagram/camera/CameraHolder;
    .locals 3

    .prologue
    .line 56
    const-class v1, Lcom/instagram/camera/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/camera/CameraHolder;->sHolder:Lcom/instagram/camera/CameraHolder;

    if-nez v0, :cond_1

    .line 58
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "PC36100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "HTC Desire S"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    :cond_0
    new-instance v0, Lcom/instagram/camera/HTCFrontFacingFixGingerbreadCameraHolder;

    invoke-direct {v0}, Lcom/instagram/camera/HTCFrontFacingFixGingerbreadCameraHolder;-><init>()V

    sput-object v0, Lcom/instagram/camera/CameraHolder;->sHolder:Lcom/instagram/camera/CameraHolder;

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lcom/instagram/camera/CameraHolder;->sHolder:Lcom/instagram/camera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :cond_2
    :try_start_1
    new-instance v0, Lcom/instagram/camera/CameraHolder;

    invoke-direct {v0}, Lcom/instagram/camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/instagram/camera/CameraHolder;->sHolder:Lcom/instagram/camera/CameraHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized releaseCamera()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 189
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/instagram/camera/CameraHolder;->mUsers:I

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/instagram/camera/CameraUtil;->Assert(Z)V

    .line 190
    iget-object v2, p0, Lcom/instagram/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/instagram/camera/CameraUtil;->Assert(Z)V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 192
    iget-wide v2, p0, Lcom/instagram/camera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 193
    iget-object v2, p0, Lcom/instagram/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/instagram/camera/CameraHolder;->mKeepBeforeTime:J

    sub-long v0, v4, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :goto_2
    monitor-exit p0

    return-void

    :cond_0
    move v2, v1

    .line 189
    goto :goto_0

    :cond_1
    move v0, v1

    .line 190
    goto :goto_1

    .line 197
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/instagram/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getBackCameraId()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/instagram/camera/CameraHolder;->mBackCameraId:I

    return v0
.end method

.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/instagram/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getCameraOrientation(II)I
    .locals 1
    .parameter "cameraId"
    .parameter "orientation"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/instagram/camera/CameraHolder;->mFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/instagram/camera/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public getRenderOrientation(II)I
    .locals 2
    .parameter "cameraId"
    .parameter "reportedOrientation"

    .prologue
    .line 229
    iget v0, p0, Lcom/instagram/camera/CameraHolder;->mCameraId:I

    iget v1, p0, Lcom/instagram/camera/CameraHolder;->mFrontCameraId:I

    if-ne v0, v1, :cond_0

    .line 230
    add-int/lit16 v0, p2, 0xb4

    rem-int/lit16 p2, v0, 0x168

    .line 234
    :goto_0
    return p2

    .line 232
    :cond_0
    rem-int/lit16 p2, p2, 0x168

    goto :goto_0
.end method

.method public isFrontFacing(I)Z
    .locals 2
    .parameter "cameraId"

    .prologue
    const/4 v0, 0x1

    .line 102
    iget-object v1, p0, Lcom/instagram/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized keep()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 209
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/instagram/camera/CameraHolder;->mUsers:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/instagram/camera/CameraHolder;->mUsers:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/instagram/camera/CameraUtil;->Assert(Z)V

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instagram/camera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 209
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(I)Landroid/hardware/Camera;
    .locals 3
    .parameter "cameraId"

    .prologue
    const/4 v0, 0x1

    .line 133
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/instagram/camera/CameraHolder;->mUsers:I

    if-nez v1, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/instagram/camera/CameraUtil;->Assert(Z)V

    .line 134
    iget-object v0, p0, Lcom/instagram/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/camera/CameraHolder;->mCameraId:I

    if-eq v0, p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/instagram/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/camera/CameraHolder;->mCameraId:I

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/instagram/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 141
    :try_start_1
    const-string v0, "CameraHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 143
    iput p1, p0, Lcom/instagram/camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    :try_start_2
    iget-object v0, p0, Lcom/instagram/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 158
    :goto_1
    iget v0, p0, Lcom/instagram/camera/CameraHolder;->mUsers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/camera/CameraHolder;->mUsers:I

    .line 159
    iget-object v0, p0, Lcom/instagram/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/instagram/camera/CameraHolder;->mKeepBeforeTime:J

    .line 161
    iget-object v0, p0, Lcom/instagram/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    :try_start_3
    const-string v1, "CameraHolder"

    const-string v2, "fail to connect Camera"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    new-instance v1, Lcom/instagram/camera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/instagram/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/instagram/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 156
    :try_start_5
    iget-object v0, p0, Lcom/instagram/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1

    .line 152
    :catch_1
    move-exception v0

    .line 153
    const-string v1, "CameraHolder"

    const-string v2, "reconnect failed."

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v1, Lcom/instagram/camera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/instagram/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 182
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/instagram/camera/CameraHolder;->mUsers:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/instagram/camera/CameraUtil;->Assert(Z)V

    .line 183
    iget v0, p0, Lcom/instagram/camera/CameraHolder;->mUsers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/instagram/camera/CameraHolder;->mUsers:I

    .line 184
    iget-object v0, p0, Lcom/instagram/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 185
    invoke-direct {p0}, Lcom/instagram/camera/CameraHolder;->releaseCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldRenderMirrored(I)Z
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/instagram/camera/CameraHolder;->isFrontFacing(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized tryOpen(I)Landroid/hardware/Camera;
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v0, 0x0

    .line 170
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/instagram/camera/CameraHolder;->mUsers:I

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/instagram/camera/CameraHolder;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/instagram/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    :cond_0
    monitor-exit p0

    return-object v0

    .line 171
    :catch_0
    move-exception v1

    .line 174
    :try_start_1
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
