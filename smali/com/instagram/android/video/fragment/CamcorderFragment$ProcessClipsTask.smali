.class Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;
.super Landroid/os/AsyncTask;
.source "CamcorderFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private stitchedDuration:F

.field final synthetic this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/video/fragment/CamcorderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/video/fragment/CamcorderFragment;Lcom/instagram/android/video/fragment/CamcorderFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1378
    invoke-direct {p0, p1}, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1378
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 1385
    const/4 v0, 0x0

    .line 1386
    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;
    invoke-static {v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ClipStackManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/video/ClipStackManager;->size()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1

    .line 1388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1390
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ClipStackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [Ljava/io/File;

    .line 1392
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ClipStackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->getClipStack()Lcom/instagram/android/video/model/ClipStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/model/ClipStack;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/model/Clip;

    .line 1393
    invoke-virtual {v0}, Lcom/instagram/android/video/model/Clip;->getState()Lcom/instagram/android/video/model/Clip$ClipState;

    move-result-object v7

    sget-object v8, Lcom/instagram/android/video/model/Clip$ClipState;->RECORDED:Lcom/instagram/android/video/model/Clip$ClipState;

    if-ne v7, v8, :cond_2

    invoke-virtual {v0}, Lcom/instagram/android/video/model/Clip;->getVideoFile()Lcom/instagram/android/video/model/VideoFile;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1395
    invoke-virtual {v0}, Lcom/instagram/android/video/model/Clip;->getVideoFile()Lcom/instagram/android/video/model/VideoFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/model/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1396
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v1

    .line 1397
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 1399
    goto :goto_0

    .line 1400
    :cond_0
    aget-object v0, v5, v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-stitched.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1403
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v5, v1

    .line 1404
    const-string v1, "CamcorderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saving stitched file to: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    invoke-static {v5}, Lcom/instagram/android/video/util/VideoEditUtil;->stitchMovies([Ljava/io/File;)F

    move-result v1

    iput v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->stitchedDuration:F

    .line 1406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1407
    const-string v5, "CamcorderFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Splitting and stitching took: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v1, v3

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_1
    return-object v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1378
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    .line 1434
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1436
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2400(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2400(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->dismiss()V

    .line 1438
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0, v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2402(Lcom/instagram/android/video/fragment/CamcorderFragment;Lcom/instagram/android/widget/IgProgressDialog;)Lcom/instagram/android/widget/IgProgressDialog;

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #calls: Lcom/instagram/android/video/fragment/CamcorderFragment;->getCameraId()I
    invoke-static {v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1300(Lcom/instagram/android/video/fragment/CamcorderFragment;)I

    move-result v1

    #calls: Lcom/instagram/android/video/fragment/CamcorderFragment;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    invoke-static {v0, v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1400(Lcom/instagram/android/video/fragment/CamcorderFragment;I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 1443
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v4, :cond_1

    .line 1444
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rsub-int v0, v0, 0x168

    div-int/lit8 v0, v0, 0x5a

    add-int/lit8 v0, v0, 0x4

    .line 1449
    :goto_0
    const-string v1, "CamcorderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will use rotation vertices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1452
    invoke-static {v1}, Lcom/instagram/android/model/PendingMedia;->createVideo(Ljava/lang/String;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v1

    .line 1453
    invoke-virtual {v1, v4}, Lcom/instagram/android/model/PendingMedia;->setSourceType(I)V

    .line 1454
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v3}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/android/video/util/VideoFileUtil;->getClipsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mRecordingSession:Ljava/lang/String;
    invoke-static {v4}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2500(Lcom/instagram/android/video/fragment/CamcorderFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/model/PendingMedia;->setVideoSessionPath(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {v1, p1}, Lcom/instagram/android/model/PendingMedia;->setStitchedVideoFilePath(Ljava/lang/String;)V

    .line 1457
    invoke-virtual {v1, v0}, Lcom/instagram/android/model/PendingMedia;->setOrientation(I)V

    .line 1458
    iget v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->stitchedDuration:F

    invoke-virtual {v1, v0}, Lcom/instagram/android/model/PendingMedia;->setVideoLength(F)V

    .line 1459
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v0}, Lcom/instagram/android/model/PendingMedia;->setOriginalWidth(I)V

    .line 1460
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v0}, Lcom/instagram/android/model/PendingMedia;->setOriginalHeight(I)V

    .line 1461
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/instagram/android/service/PendingMediaService;->startVideoMedia(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V

    .line 1463
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1464
    const-string v2, "pendingMediaKey"

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/video/fragment/VideoFilterFragment;

    invoke-direct {v2}, Lcom/instagram/android/video/fragment/VideoFilterFragment;-><init>()V

    const-string v3, "VideoFilterFragment"

    invoke-static {v1, v2, v3, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1467
    return-void

    .line 1446
    :cond_1
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    div-int/lit8 v0, v0, 0x5a

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 1415
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1417
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    new-instance v1, Lcom/instagram/android/widget/IgProgressDialog;

    iget-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v2}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/widget/IgProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0, v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2402(Lcom/instagram/android/video/fragment/CamcorderFragment;Lcom/instagram/android/widget/IgProgressDialog;)Lcom/instagram/android/widget/IgProgressDialog;

    .line 1418
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2400(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    sget v2, Lcom/facebook/k;->processing:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 1419
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2400(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;->setCancelable(Z)V

    .line 1422
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$200(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask$1;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1430
    return-void
.end method
