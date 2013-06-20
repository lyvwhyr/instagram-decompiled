.class Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;
.super Ljava/lang/Thread;
.source "CameraFragment.java"


# static fields
.field private static final QUEUE_LIMIT:I = 0x3


# instance fields
.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field final synthetic this$0:Lcom/instagram/android/creation/fragment/CameraFragment;


# direct methods
.method public constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1538
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 1540
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->start()V

    .line 1541
    return-void
.end method


# virtual methods
.method public addImage([BLandroid/location/Location;III)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    const/4 v0, 0x0

    .line 1546
    new-instance v1, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;

    invoke-direct {v1, v0}, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment$1;)V

    .line 1548
    iput-object p1, v1, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;->data:[B

    .line 1549
    if-nez p2, :cond_0

    :goto_0
    iput-object v0, v1, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;->loc:Landroid/location/Location;

    .line 1550
    iput p3, v1, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;->width:I

    .line 1551
    iput p4, v1, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;->height:I

    .line 1552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;->dateTaken:J

    .line 1553
    iget-wide v2, v1, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;->dateTaken:J

    invoke-static {v2, v3}, Lcom/instagram/camera/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;->title:Ljava/lang/String;

    .line 1554
    iput p5, v1, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;->orientation:I

    .line 1556
    monitor-enter p0

    .line 1557
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 1559
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1560
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1549
    :cond_0
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 1564
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1565
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1566
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1568
    iget-object v0, v1, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;->title:Ljava/lang/String;

    return-object v0

    .line 1566
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1640
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->waitDone()V

    .line 1641
    monitor-enter p0

    .line 1642
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->mStop:Z

    .line 1643
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1644
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1646
    :try_start_1
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1650
    :goto_0
    return-void

    .line 1644
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1647
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1576
    :goto_0
    monitor-enter p0

    .line 1577
    :try_start_0
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1578
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1582
    iget-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->mStop:Z

    if-eqz v1, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1623
    return-void

    .line 1585
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1589
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1592
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1591
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;

    move-object v7, v0

    .line 1592
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1593
    const/4 v1, 0x1

    new-array v8, v1, [I

    .line 1595
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/UserPreferences;->getSaveOriginalPhotos()Z

    move-result v1

    .line 1596
    invoke-static {}, Lcom/instagram/camera/Storage;->getDirectory()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/instagram/camera/Storage;->getFilenamePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v3, v7, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;->data:[B

    invoke-static {v2, v1, v10, v3, v8}, Lcom/instagram/android/support/camera/ImageManager;->saveImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Ljava/io/File;

    move-result-object v1

    .line 1602
    if-nez v1, :cond_3

    .line 1603
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #setter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mImageUri:Landroid/net/Uri;
    invoke-static {v1, v10}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2402(Lcom/instagram/android/creation/fragment/CameraFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1618
    :goto_3
    monitor-enter p0

    .line 1619
    :try_start_4
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1620
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1621
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 1596
    :cond_2
    const-string v1, "temp.jpg"

    goto :goto_2

    .line 1604
    :cond_3
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/UserPreferences;->getSaveOriginalPhotos()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1605
    iget-object v9, p0, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$3000(Lcom/instagram/android/creation/fragment/CameraFragment;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v7, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;->title:Ljava/lang/String;

    iget-wide v3, v7, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;->dateTaken:J

    iget-object v5, v7, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;->loc:Landroid/location/Location;

    invoke-static {}, Lcom/instagram/camera/Storage;->getDirectory()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v7, Lcom/instagram/android/creation/fragment/CameraFragment$SaveRequest;->title:Ljava/lang/String;

    invoke-static {v7}, Lcom/instagram/camera/Storage;->getFilenamePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/instagram/android/support/camera/ImageManager;->addImageToGallery(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;[I)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mImageUri:Landroid/net/Uri;
    invoke-static {v9, v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2402(Lcom/instagram/android/creation/fragment/CameraFragment;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_3

    .line 1614
    :cond_4
    iget-object v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mImageUri:Landroid/net/Uri;
    invoke-static {v2, v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$2402(Lcom/instagram/android/creation/fragment/CameraFragment;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_3

    .line 1586
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public waitDone()V
    .locals 1

    .prologue
    .line 1627
    monitor-enter p0

    .line 1628
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1630
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1631
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1635
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 1636
    return-void

    .line 1635
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
