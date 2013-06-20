.class public Lcom/instagram/camera/HTCFrontFacingFixGingerbreadCameraHolder;
.super Lcom/instagram/camera/CameraHolder;
.source "HTCFrontFacingFixGingerbreadCameraHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HTCFrontFacingFixGingerbreadCameraHolder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/instagram/camera/CameraHolder;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getCameraOrientation(II)I
    .locals 3
    .parameter "cameraId"
    .parameter "orientationSensorValue"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/16 v1, 0x10e

    const/16 v0, 0x5a

    .line 18
    invoke-virtual {p0, p1}, Lcom/instagram/camera/HTCFrontFacingFixGingerbreadCameraHolder;->isFrontFacing(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    sparse-switch p2, :sswitch_data_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/instagram/camera/HTCFrontFacingFixGingerbreadCameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    .line 23
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 27
    goto :goto_0

    .line 19
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public getRenderOrientation(II)I
    .locals 0
    .parameter "cameraId"
    .parameter "reportedOrientation"

    .prologue
    .line 34
    return p2
.end method

.method public shouldRenderMirrored(I)Z
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method
