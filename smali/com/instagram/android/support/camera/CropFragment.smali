.class public Lcom/instagram/android/support/camera/CropFragment;
.super Lcom/instagram/android/support/camera/MonitoredFragment;
.source "CropFragment.java"


# static fields
.field public static final EXTRAS_CROP_RECT:Ljava/lang/String; = "EXTRAS_CROP_RECT"

.field public static final EXTRAS_IMAGE_URI:Ljava/lang/String; = "EXTRAS_IMAGE_URI"

.field public static final EXTRAS_IS_CROP:Ljava/lang/String; = "EXTRAS_IS_CROP"

.field public static final EXTRAS_LATITUDE:Ljava/lang/String; = "EXTRAS_LATITUDE"

.field public static final EXTRAS_LONGITUDE:Ljava/lang/String; = "EXTRAS_LONGITUDE"

.field public static final EXTRAS_REQUEST_CROP_RECT:Ljava/lang/String; = "EXTRAS_REQUEST_CROP_RECT"

.field public static final EXTRAS_SHOW_DONE_BUTTON:Ljava/lang/String; = "EXTRAS_SHOW_DONE_BUTTON"

.field public static final EXTRA_LARGEST_DIMENSION:Ljava/lang/String; = "largestDimension"

.field public static final EXTRA_SMALLEST_DIMENSION:Ljava/lang/String; = "smallestDimension"

.field public static final MAX_PERCENTAGE_MEMORY:D = 0.37

.field private static final OUTPUT_FORMAT:Landroid/graphics/Bitmap$CompressFormat; = null

.field private static final TAG:Ljava/lang/String; = "CropFragment"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mCrop:Lcom/instagram/android/support/camera/HighlightView;

.field private mCropFragmentListener:Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;

.field private final mHandler:Landroid/os/Handler;

.field private mImage:Lcom/instagram/android/support/camera/gallery/IImage;

.field private mImageView:Lcom/instagram/android/support/camera/CropImageView;

.field private mLargestDimension:I

.field private mLatitude:Ljava/lang/Double;

.field private mLoadImageTask:Lcom/instagram/android/support/camera/LoadImageTask;

.field private mLongitude:Ljava/lang/Double;

.field private mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

.field mRunMakeCropView:Ljava/lang/Runnable;

.field private mSaveUri:Landroid/net/Uri;

.field mSaving:Z

.field private mSmallestDimension:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/instagram/android/support/camera/CropFragment;->OUTPUT_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/instagram/android/support/camera/MonitoredFragment;-><init>()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mHandler:Landroid/os/Handler;

    .line 445
    new-instance v0, Lcom/instagram/android/support/camera/CropFragment$7;

    invoke-direct {v0, p0}, Lcom/instagram/android/support/camera/CropFragment$7;-><init>(Lcom/instagram/android/support/camera/CropFragment;)V

    iput-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mRunMakeCropView:Ljava/lang/Runnable;

    .line 517
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/support/camera/CropFragment;)Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mCropFragmentListener:Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/support/camera/CropFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/instagram/android/support/camera/CropFragment;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/support/camera/CropFragment;)Lcom/instagram/android/support/camera/gallery/IImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    return-object v0
.end method

.method static synthetic access$202(Lcom/instagram/android/support/camera/CropFragment;Lcom/instagram/android/support/camera/gallery/IImage;)Lcom/instagram/android/support/camera/gallery/IImage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/instagram/android/support/camera/CropFragment;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    return-object p1
.end method

.method static synthetic access$300(Lcom/instagram/android/support/camera/CropFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/instagram/android/support/camera/CropFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/instagram/android/support/camera/CropFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/instagram/android/support/camera/CropFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/instagram/android/support/camera/CropFragment;->onImageLoaded()V

    return-void
.end method

.method static synthetic access$500(Lcom/instagram/android/support/camera/CropFragment;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/instagram/android/support/camera/CropFragment;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/instagram/android/support/camera/CropFragment;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/instagram/android/support/camera/CropFragment;->cleanup(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$700(Lcom/instagram/android/support/camera/CropFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/instagram/android/support/camera/CropFragment;)Lcom/instagram/android/support/camera/CropImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/instagram/android/support/camera/CropFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mSmallestDimension:I

    return v0
.end method

.method private addLocationExtras(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extras"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mLatitude:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mLongitude:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 440
    const-string v0, "EXTRAS_LATITUDE"

    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mLatitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 441
    const-string v0, "EXTRAS_LONGITUDE"

    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mLongitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 443
    :cond_0
    return-void
.end method

.method private cleanup(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "croppedImage"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/CropImageView;->clear()V

    .line 433
    :cond_0
    if-eqz p1, :cond_1

    .line 434
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 436
    :cond_1
    return-void
.end method

.method private fetchLocationData(Landroid/net/Uri;)V
    .locals 7
    .parameter "imageUri"

    .prologue
    const/4 v6, 0x0

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "latitude"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "longitude"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_1

    .line 235
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v6

    :goto_0
    iput-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mLatitude:Ljava/lang/Double;

    .line 237
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v6

    :goto_1
    iput-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mLongitude:Ljava/lang/Double;

    .line 239
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mLatitude:Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 240
    const-string v0, "CropFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/support/camera/CropFragment;->mLatitude:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/support/camera/CropFragment;->mLongitude:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_1
    :goto_3
    return-void

    .line 236
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 237
    :cond_3
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 242
    :cond_4
    const-string v0, "CropFragment"

    const-string v2, "lat lon null"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 248
    :catch_0
    move-exception v0

    .line 249
    const-string v1, "CropFragment"

    const-string v2, "Exception caught getting location data"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private finishWithCropRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "scaledSrcRect"

    .prologue
    .line 344
    const-string v0, "CropFragment"

    const-string v1, "Image is JPEG, using native region decoding to load into GL"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 346
    const-string v1, "EXTRAS_CROP_RECT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 347
    const-string v1, "originalWidth"

    iget-object v2, p0, Lcom/instagram/android/support/camera/CropFragment;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    invoke-interface {v2}, Lcom/instagram/android/support/camera/gallery/IImage;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    const-string v1, "originalHeight"

    iget-object v2, p0, Lcom/instagram/android/support/camera/CropFragment;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    invoke-interface {v2}, Lcom/instagram/android/support/camera/gallery/IImage;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    invoke-direct {p0, v0}, Lcom/instagram/android/support/camera/CropFragment;->addLocationExtras(Landroid/os/Bundle;)V

    .line 351
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mCropFragmentListener:Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mCropFragmentListener:Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;

    iget-object v2, p0, Lcom/instagram/android/support/camera/CropFragment;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    invoke-interface {v2}, Lcom/instagram/android/support/camera/gallery/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;->onFinishCrop(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 354
    :cond_0
    return-void
.end method

.method private finishWithImageRender(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "croppedBitmap"

    .prologue
    .line 332
    sget v0, Lcom/facebook/k;->processing:I

    .line 333
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/support/camera/CropFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/support/camera/CropFragment$4;-><init>(Lcom/instagram/android/support/camera/CropFragment;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/instagram/android/support/camera/CropFragment;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v1, v0, v2, v3}, Lcom/instagram/android/support/camera/Util;->startBackgroundJob(Lcom/instagram/android/support/camera/MonitoredFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 341
    return-void
.end method

.method private generateCroppedBitmap(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "cropRect"
    .parameter "smallestThumbDimension"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 357
    const-string v0, "CropFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/support/camera/CropFragment;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    invoke-interface {v2}, Lcom/instagram/android/support/camera/gallery/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " using Java to write new JPEG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-double v0, v0

    const-wide v2, 0x3fd7ae147ae147aeL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 360
    const-string v1, "CropFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max number of pixels: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    const/4 v2, -0x1

    invoke-interface {v1, v2, v0, v4, v4}, Lcom/instagram/android/support/camera/gallery/IImage;->fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 370
    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 371
    invoke-static {p1, v1}, Lcom/instagram/util/RectUtil;->scaleAndSquareRect(Landroid/graphics/Rect;F)V

    .line 372
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 373
    iget v2, p0, Lcom/instagram/android/support/camera/CropFragment;->mLargestDimension:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 374
    const-string v2, "CropFragment"

    const-string v3, "Final dimension: %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/facebook/common/i/b;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 380
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 381
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 382
    const/4 v1, 0x0

    invoke-virtual {v3, v0, p1, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 383
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 384
    return-object v2
.end method

.method private handleFailure(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "croppedImage"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/support/camera/CropFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/support/camera/CropFragment$6;-><init>(Lcom/instagram/android/support/camera/CropFragment;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method

.method private onImageLoaded()V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    if-eqz v0, :cond_0

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->dismiss()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Unable to download file"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 265
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mCropFragmentListener:Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mCropFragmentListener:Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;

    invoke-interface {v0}, Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;->onCancelCrop()V

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 271
    :cond_2
    invoke-direct {p0}, Lcom/instagram/android/support/camera/CropFragment;->startCropView()V

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onSaveClicked()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 292
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mCrop:Lcom/instagram/android/support/camera/HighlightView;

    if-nez v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-boolean v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mSaving:Z

    if-nez v0, :cond_0

    .line 299
    iput-boolean v7, p0, Lcom/instagram/android/support/camera/CropFragment;->mSaving:Z

    .line 301
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 302
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 303
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 305
    const-string v3, "CropFragment"

    const-string v4, "Large thumb size: %dx%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Lcom/facebook/common/i/b;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mCrop:Lcom/instagram/android/support/camera/HighlightView;

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 310
    invoke-static {v0}, Lcom/instagram/util/RectUtil;->squareRect(Landroid/graphics/Rect;)V

    .line 312
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;

    iget-object v1, v1, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 319
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    invoke-interface {v1}, Lcom/instagram/android/support/camera/gallery/IImage;->isJpeg()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "EXTRAS_REQUEST_CROP_RECT"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    invoke-interface {v1}, Lcom/instagram/android/support/camera/gallery/IImage;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/instagram/android/support/camera/CropFragment;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    invoke-interface {v3}, Lcom/instagram/android/support/camera/gallery/IImage;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 322
    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 323
    invoke-static {v0, v1}, Lcom/instagram/util/RectUtil;->scaleAndSquareRect(Landroid/graphics/Rect;F)V

    .line 324
    invoke-direct {p0, v0}, Lcom/instagram/android/support/camera/CropFragment;->finishWithCropRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 326
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/instagram/android/support/camera/CropFragment;->generateCroppedBitmap(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 327
    invoke-direct {p0, v0}, Lcom/instagram/android/support/camera/CropFragment;->finishWithImageRender(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "croppedImage"

    .prologue
    .line 388
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 389
    invoke-direct {p0, v0}, Lcom/instagram/android/support/camera/CropFragment;->addLocationExtras(Landroid/os/Bundle;)V

    .line 390
    invoke-direct {p0, p1, v0}, Lcom/instagram/android/support/camera/CropFragment;->saveOutputForProvidedUri(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 391
    return-void
.end method

.method private saveOutputForProvidedUri(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 5
    .parameter "croppedImage"
    .parameter "extras"

    .prologue
    .line 394
    const/4 v1, 0x0

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/instagram/android/support/camera/CropFragment;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 397
    if-eqz v1, :cond_0

    .line 398
    sget-object v0, Lcom/instagram/android/support/camera/CropFragment;->OUTPUT_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5f

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_0
    invoke-static {v1}, Lcom/instagram/android/support/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 408
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/support/camera/CropFragment$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/instagram/android/support/camera/CropFragment$5;-><init>(Lcom/instagram/android/support/camera/CropFragment;Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 402
    :try_start_1
    const-string v2, "CropFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/support/camera/CropFragment;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    invoke-direct {p0, p1}, Lcom/instagram/android/support/camera/CropFragment;->handleFailure(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    invoke-static {v1}, Lcom/instagram/android/support/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/instagram/android/support/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private setLayerTypeSdk11()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/support/camera/CropImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 225
    return-void
.end method

.method private startCropView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 275
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;

    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/support/camera/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 281
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;

    invoke-virtual {v0, v2, v2}, Lcom/instagram/android/support/camera/CropImageView;->center(ZZ)V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mRunMakeCropView:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/instagram/android/support/camera/MonitoredFragment;->onAttach(Landroid/content/Context;)V

    .line 104
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;

    move-object v1, v0

    iput-object v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mCropFragmentListener:Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-void

    .line 105
    :catch_0
    move-exception v1

    .line 106
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement CropFragmentListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/instagram/android/support/camera/MonitoredFragment;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 172
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 174
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 177
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRAS_IMAGE_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 179
    const-string v1, "output"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mSaveUri:Landroid/net/Uri;

    .line 180
    const-string v1, "largestDimension"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mLargestDimension:I

    .line 181
    const-string v1, "smallestDimension"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mSmallestDimension:I

    .line 184
    invoke-direct {p0, v0}, Lcom/instagram/android/support/camera/CropFragment;->fetchLocationData(Landroid/net/Uri;)V

    .line 186
    new-instance v1, Lcom/instagram/android/support/camera/LoadImageTask;

    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/support/camera/CropFragment$3;

    invoke-direct {v3, p0}, Lcom/instagram/android/support/camera/CropFragment$3;-><init>(Lcom/instagram/android/support/camera/CropFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/instagram/android/support/camera/LoadImageTask;-><init>(Landroid/content/Context;Lcom/instagram/android/support/camera/LoadImageTask$LoadImageListener;)V

    iput-object v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mLoadImageTask:Lcom/instagram/android/support/camera/LoadImageTask;

    .line 197
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mLoadImageTask:Lcom/instagram/android/support/camera/LoadImageTask;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/instagram/android/support/camera/LoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 120
    sget v0, Lcom/facebook/h;->fragment_crop:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 122
    sget v0, Lcom/facebook/g;->image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/CropImageView;

    iput-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;

    .line 123
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;

    invoke-virtual {v0, p0}, Lcom/instagram/android/support/camera/CropImageView;->setCropFragment(Lcom/instagram/android/support/camera/CropFragment;)V

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/instagram/android/support/camera/CropFragment;->setLayerTypeSdk11()V

    .line 129
    :cond_0
    sget v0, Lcom/facebook/g;->button_back:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/support/camera/CropFragment$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/support/camera/CropFragment$1;-><init>(Lcom/instagram/android/support/camera/CropFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    sget v0, Lcom/facebook/g;->save:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 139
    new-instance v2, Lcom/instagram/android/support/camera/CropFragment$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/support/camera/CropFragment$2;-><init>(Lcom/instagram/android/support/camera/CropFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRAS_SHOW_DONE_BUTTON"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    sget v2, Lcom/facebook/f;->action_bar_glyph_done:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    sget v2, Lcom/facebook/f;->action_bar_dark_green_right_button:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 150
    :cond_1
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/instagram/android/support/camera/MonitoredFragment;->onDestroy()V

    .line 203
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->dismiss()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    .line 207
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-super {p0}, Lcom/instagram/android/support/camera/MonitoredFragment;->onDestroyView()V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mSaving:Z

    .line 217
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;

    invoke-virtual {v0, v1}, Lcom/instagram/android/support/camera/CropImageView;->setCropFragment(Lcom/instagram/android/support/camera/CropFragment;)V

    .line 218
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/CropImageView;->removeHighlightViews()V

    .line 219
    iput-object v1, p0, Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;

    .line 220
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/instagram/android/support/camera/MonitoredFragment;->onDetach()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mCropFragmentListener:Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;

    .line 114
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Lcom/instagram/android/support/camera/MonitoredFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 157
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mLoadImageTask:Lcom/instagram/android/support/camera/LoadImageTask;

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/LoadImageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/instagram/android/support/camera/CropFragment;->onImageLoaded()V

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v0, Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    .line 161
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    sget v1, Lcom/facebook/k;->loading:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/support/camera/CropFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->show()V

    goto :goto_0
.end method
