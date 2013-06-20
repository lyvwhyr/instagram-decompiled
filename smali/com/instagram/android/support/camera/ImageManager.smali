.class public Lcom/instagram/android/support/camera/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# static fields
.field public static final CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String; = null

.field public static final CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String; = null

.field public static final INCLUDE_DRM_IMAGES:I = 0x2

.field public static final INCLUDE_IMAGES:I = 0x1

.field public static final INCLUDE_VIDEOS:I = 0x4

.field public static final SORT_ASCENDING:I = 0x1

.field public static final SORT_DESCENDING:I = 0x2

.field private static final STORAGE_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final THUMB_URI:Landroid/net/Uri;

.field private static final VIDEO_STORAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/instagram/android/support/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    .line 61
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/instagram/android/support/camera/ImageManager;->THUMB_URI:Landroid/net/Uri;

    .line 64
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/support/camera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/support/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/instagram/android/support/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/android/support/camera/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/support/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    return-void
.end method

.method public static addImageToGallery(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;[I)Landroid/net/Uri;
    .locals 4
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "degree"

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 240
    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v2, "_display_name"

    invoke-virtual {v1, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v2, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    const-string v2, "mime_type"

    const-string v3, "image/jpeg"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v2, "orientation"

    const/4 v3, 0x0

    aget v3, p7, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    const-string v2, "_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    if-eqz p4, :cond_0

    .line 252
    const-string v0, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 253
    const-string v0, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 256
    :cond_0
    sget-object v0, Lcom/instagram/android/support/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static checkFsWritable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 460
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 476
    :cond_0
    :goto_0
    return v0

    .line 464
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, ".probe"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 468
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 470
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    const/4 v0, 0x1

    goto :goto_0

    .line 475
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static ensureOSXCompatibleFolder()V
    .locals 4

    .prologue
    .line 158
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/100ANDRO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create NNNAAAAA file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    return-void
.end method

.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmptyImageListParam()Lcom/instagram/android/support/camera/ImageManager$ImageListParam;
    .locals 2

    .prologue
    .line 432
    new-instance v0, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;-><init>()V

    .line 433
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 434
    return-object v0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 6
    .parameter "filepath"

    .prologue
    const/4 v5, -0x1

    .line 260
    const/4 v0, 0x0

    .line 261
    const/4 v2, 0x0

    .line 263
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    if-eqz v1, :cond_0

    .line 268
    const-string v2, "Orientation"

    invoke-virtual {v1, v2, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 270
    if-eq v1, v5, :cond_0

    .line 272
    packed-switch v1, :pswitch_data_0

    .line 286
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    const-string v3, "ImageManager"

    const-string v4, "cannot read exif"

    invoke-static {v3, v4, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_0

    .line 274
    :pswitch_1
    const/16 v0, 0x5a

    .line 275
    goto :goto_1

    .line 277
    :pswitch_2
    const/16 v0, 0xb4

    .line 278
    goto :goto_1

    .line 280
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getImageListParam(Lcom/instagram/android/support/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/instagram/android/support/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 417
    new-instance v0, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;-><init>()V

    .line 418
    iput-object p0, v0, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;->mLocation:Lcom/instagram/android/support/camera/ImageManager$DataLocation;

    .line 419
    iput p1, v0, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;->mInclusion:I

    .line 420
    iput p2, v0, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;->mSort:I

    .line 421
    iput-object p3, v0, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 422
    return-object v0
.end method

.method public static getSingleImageListParam(Landroid/net/Uri;)Lcom/instagram/android/support/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter "uri"

    .prologue
    .line 426
    new-instance v0, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;-><init>()V

    .line 427
    iput-object p0, v0, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 428
    return-object v0
.end method

.method public static hasStorage()Z
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/instagram/android/support/camera/ImageManager;->hasStorage(Z)Z

    move-result v0

    return v0
.end method

.method public static hasStorage(Z)Z
    .locals 3
    .parameter "requireWriteAccess"

    .prologue
    const/4 v0, 0x1

    .line 485
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 487
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    if-eqz p0, :cond_0

    .line 489
    invoke-static {}, Lcom/instagram/android/support/camera/ImageManager;->checkFsWritable()Z

    move-result v0

    .line 498
    :cond_0
    :goto_0
    return v0

    .line 494
    :cond_1
    if-nez p0, :cond_2

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImage(Lcom/instagram/android/support/camera/gallery/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 187
    invoke-interface {p0}, Lcom/instagram/android/support/camera/gallery/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/support/camera/ImageManager;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isImageMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 171
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .locals 8
    .parameter "cr"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 517
    .line 518
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v6

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/instagram/android/support/camera/ImageManager;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 521
    if-eqz v1, :cond_1

    .line 522
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 523
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 524
    const-string v0, "external"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 526
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 529
    :goto_1
    return v0

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method static isSingleImageMode(Ljava/lang/String;)Z
    .locals 1
    .parameter "uriString"

    .prologue
    .line 371
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideo(Lcom/instagram/android/support/camera/gallery/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public static makeEmptyImageList()Lcom/instagram/android/support/camera/gallery/IImageList;
    .locals 2

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-static {}, Lcom/instagram/android/support/camera/ImageManager;->getEmptyImageListParam()Lcom/instagram/android/support/camera/ImageManager$ImageListParam;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/support/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/instagram/android/support/camera/ImageManager$ImageListParam;)Lcom/instagram/android/support/camera/gallery/IImageList;

    move-result-object v0

    return-object v0
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/instagram/android/support/camera/gallery/IImageList;
    .locals 3
    .parameter "cr"
    .parameter "uri"
    .parameter "sort"

    .prologue
    const/4 v2, 0x0

    .line 349
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_0
    const-string v1, "content://drm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    sget-object v0, Lcom/instagram/android/support/camera/ImageManager$DataLocation;->ALL:Lcom/instagram/android/support/camera/ImageManager$DataLocation;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p2, v2}, Lcom/instagram/android/support/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/instagram/android/support/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/instagram/android/support/camera/gallery/IImageList;

    move-result-object v0

    .line 365
    :goto_1
    return-object v0

    .line 349
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 358
    :cond_1
    const-string v1, "content://media/external/video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 359
    sget-object v0, Lcom/instagram/android/support/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/instagram/android/support/camera/ImageManager$DataLocation;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1, p2, v2}, Lcom/instagram/android/support/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/instagram/android/support/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/instagram/android/support/camera/gallery/IImageList;

    move-result-object v0

    goto :goto_1

    .line 361
    :cond_2
    invoke-static {v0}, Lcom/instagram/android/support/camera/ImageManager;->isSingleImageMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    invoke-static {p0, p1}, Lcom/instagram/android/support/camera/ImageManager;->makeSingleImageList(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/instagram/android/support/camera/gallery/IImageList;

    move-result-object v0

    goto :goto_1

    .line 364
    :cond_3
    const-string v0, "bucketId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    sget-object v1, Lcom/instagram/android/support/camera/ImageManager$DataLocation;->ALL:Lcom/instagram/android/support/camera/ImageManager$DataLocation;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, p2, v0}, Lcom/instagram/android/support/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/instagram/android/support/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/instagram/android/support/camera/gallery/IImageList;

    move-result-object v0

    goto :goto_1
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/instagram/android/support/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/instagram/android/support/camera/gallery/IImageList;
    .locals 1
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 439
    invoke-static {p1, p2, p3, p4}, Lcom/instagram/android/support/camera/ImageManager;->getImageListParam(Lcom/instagram/android/support/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/instagram/android/support/camera/ImageManager$ImageListParam;

    move-result-object v0

    .line 441
    invoke-static {p0, v0}, Lcom/instagram/android/support/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/instagram/android/support/camera/ImageManager$ImageListParam;)Lcom/instagram/android/support/camera/gallery/IImageList;

    move-result-object v0

    return-object v0
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/instagram/android/support/camera/ImageManager$ImageListParam;)Lcom/instagram/android/support/camera/gallery/IImageList;
    .locals 8
    .parameter "cr"
    .parameter "param"

    .prologue
    const/4 v7, 0x0

    .line 292
    iget-object v0, p1, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;->mLocation:Lcom/instagram/android/support/camera/ImageManager$DataLocation;

    .line 293
    iget v1, p1, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;->mInclusion:I

    .line 294
    iget v2, p1, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;->mSort:I

    .line 295
    iget-object v3, p1, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 296
    iget-object v4, p1, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 297
    iget-boolean v5, p1, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 299
    if-nez v5, :cond_0

    if-nez p0, :cond_1

    .line 300
    :cond_0
    new-instance v0, Lcom/instagram/android/support/camera/ImageManager$EmptyImageList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/android/support/camera/ImageManager$EmptyImageList;-><init>(Lcom/instagram/android/support/camera/ImageManager$1;)V

    .line 343
    :goto_0
    return-object v0

    .line 303
    :cond_1
    if-eqz v4, :cond_2

    .line 304
    new-instance v0, Lcom/instagram/android/support/camera/gallery/SingleImageList;

    invoke-direct {v0, p0, v4}, Lcom/instagram/android/support/camera/gallery/SingleImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 308
    :cond_2
    invoke-static {v7}, Lcom/instagram/android/support/camera/ImageManager;->hasStorage(Z)Z

    move-result v4

    .line 311
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 313
    if-eqz v4, :cond_3

    sget-object v4, Lcom/instagram/android/support/camera/ImageManager$DataLocation;->INTERNAL:Lcom/instagram/android/support/camera/ImageManager$DataLocation;

    if-eq v0, v4, :cond_3

    .line 314
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_3

    .line 315
    new-instance v4, Lcom/instagram/android/support/camera/gallery/ImageList;

    sget-object v6, Lcom/instagram/android/support/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-direct {v4, p0, v6, v2, v3}, Lcom/instagram/android/support/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_3
    sget-object v4, Lcom/instagram/android/support/camera/ImageManager$DataLocation;->INTERNAL:Lcom/instagram/android/support/camera/ImageManager$DataLocation;

    if-eq v0, v4, :cond_4

    sget-object v4, Lcom/instagram/android/support/camera/ImageManager$DataLocation;->ALL:Lcom/instagram/android/support/camera/ImageManager$DataLocation;

    if-ne v0, v4, :cond_5

    .line 319
    :cond_4
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_5

    .line 320
    new-instance v0, Lcom/instagram/android/support/camera/gallery/ImageList;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/instagram/android/support/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 328
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 329
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/gallery/BaseImageList;

    .line 330
    invoke-virtual {v0}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 331
    invoke-virtual {v0}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->close()V

    .line 332
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 336
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 337
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/gallery/BaseImageList;

    goto :goto_0

    .line 341
    :cond_8
    new-instance v1, Lcom/instagram/android/support/camera/gallery/ImageListUber;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/instagram/android/support/camera/gallery/IImageList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/support/camera/gallery/IImageList;

    invoke-direct {v1, v0, v2}, Lcom/instagram/android/support/camera/gallery/ImageListUber;-><init>([Lcom/instagram/android/support/camera/gallery/IImageList;I)V

    move-object v0, v1

    .line 343
    goto :goto_0
.end method

.method public static makeSingleImageList(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/instagram/android/support/camera/gallery/IImageList;
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 449
    invoke-static {p1}, Lcom/instagram/android/support/camera/ImageManager;->getSingleImageListParam(Landroid/net/Uri;)Lcom/instagram/android/support/camera/ImageManager$ImageListParam;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instagram/android/support/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/instagram/android/support/camera/ImageManager$ImageListParam;)Lcom/instagram/android/support/camera/gallery/IImageList;

    move-result-object v0

    return-object v0
.end method

.method private static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v0, 0x0

    .line 505
    if-nez p0, :cond_0

    .line 511
    :goto_0
    return-object v0

    .line 508
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static saveImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Ljava/io/File;
    .locals 4
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"
    .parameter "degree"

    .prologue
    const/4 v2, 0x0

    .line 206
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 212
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 214
    if-eqz p2, :cond_1

    .line 215
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x4b

    invoke-virtual {p2, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 216
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p4, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 226
    :goto_0
    invoke-static {v3}, Lcom/instagram/android/support/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 228
    :goto_1
    return-object v0

    .line 218
    :cond_1
    :try_start_3
    invoke-virtual {v3, p3}, Ljava/io/OutputStream;->write([B)V

    .line 219
    const/4 v2, 0x0

    invoke-static {v1}, Lcom/instagram/android/support/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    aput v1, p4, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 222
    :goto_2
    :try_start_4
    const-string v3, "ImageManager"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 226
    invoke-static {v2}, Lcom/instagram/android/support/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 223
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 224
    :goto_3
    :try_start_5
    const-string v3, "ImageManager"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 226
    invoke-static {v2}, Lcom/instagram/android/support/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v2}, Lcom/instagram/android/support/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_4

    .line 223
    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v2, v3

    goto :goto_3

    .line 221
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_2
.end method
