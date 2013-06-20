.class final Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/CameraFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;Lcom/instagram/android/creation/fragment/CameraFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1379
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    return-void
.end method

.method private getCameraRotation(Landroid/hardware/Camera;)I
    .locals 4
    .parameter "camera"

    .prologue
    .line 1429
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "rotation"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1430
    const-string v1, "CameraFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cameraRotation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    return v0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 7
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mPausing:Z
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2200(Lcom/instagram/android/creation/fragment/CameraFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1426
    :goto_0
    return-void

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1700(Lcom/instagram/android/creation/fragment/CameraFragment;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 1388
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mImageSaver:Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2300(Lcom/instagram/android/creation/fragment/CameraFragment;)Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;

    move-result-object v0

    const/4 v2, 0x0

    iget v3, v6, Landroid/hardware/Camera$Size;->width:I

    iget v4, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p0, p2}, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;->getCameraRotation(Landroid/hardware/Camera;)I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->addImage([BLandroid/location/Location;III)Ljava/lang/String;

    .line 1394
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #calls: Lcom/instagram/android/creation/fragment/CameraFragment;->checkStorage()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1000(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    .line 1396
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mImageSaver:Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2300(Lcom/instagram/android/creation/fragment/CameraFragment;)Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->finish()V

    .line 1398
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mImageUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2400(Lcom/instagram/android/creation/fragment/CameraFragment;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1399
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #calls: Lcom/instagram/android/creation/fragment/CameraFragment;->updateStorageHint()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2500(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    goto :goto_0

    .line 1401
    :cond_1
    invoke-static {}, Lcom/instagram/camera/CameraHolder;->instance()Lcom/instagram/camera/CameraHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraId:I
    invoke-static {v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1200(Lcom/instagram/android/creation/fragment/CameraFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/camera/CameraHolder;->shouldRenderMirrored(I)Z

    move-result v0

    .line 1403
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-virtual {v2}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/instagram/android/creation/activity/MediaCaptureActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1405
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "rotation"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1407
    :try_start_0
    invoke-direct {p0, p2}, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;->getCameraRotation(Landroid/hardware/Camera;)I

    move-result v2

    .line 1408
    const-string v3, "cameraRotation"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    :cond_2
    :goto_1
    const-string v2, "mediaFilePath"

    iget-object v3, p0, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mImageUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2400(Lcom/instagram/android/creation/fragment/CameraFragment;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1415
    const-string v2, "mediaSource"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1418
    const-string v2, "mirrorMedia"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1419
    const-string v0, "originalWidth"

    iget v2, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1420
    const-string v0, "originalHeight"

    iget v2, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1422
    const/high16 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1424
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/creation/fragment/CameraFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1409
    :catch_0
    move-exception v2

    goto :goto_1
.end method
