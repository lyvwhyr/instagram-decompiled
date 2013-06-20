.class public abstract Lcom/instagram/android/support/camera/gallery/BaseImage;
.super Ljava/lang/Object;
.source "BaseImage.java"

# interfaces
.implements Lcom/instagram/android/support/camera/gallery/IImage;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseImage"

.field private static final UNKNOWN_LENGTH:I = -0x1


# instance fields
.field protected mContainer:Lcom/instagram/android/support/camera/gallery/BaseImageList;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mDataPath:Ljava/lang/String;

.field private final mDateTaken:J

.field private final mDisplayName:Ljava/lang/String;

.field private mHeight:I

.field protected mId:J

.field protected final mIndex:I

.field protected mMimeType:Ljava/lang/String;

.field protected mMiniThumbMagic:J

.field private mTitle:Ljava/lang/String;

.field protected mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method protected constructor <init>(Lcom/instagram/android/support/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "container"
    .parameter "cr"
    .parameter "id"
    .parameter "index"
    .parameter "uri"
    .parameter "dataPath"
    .parameter "miniThumbMagic"
    .parameter "mimeType"
    .parameter "dateTaken"
    .parameter "title"
    .parameter "displayName"

    .prologue
    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mWidth:I

    .line 61
    iput v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mHeight:I

    .line 66
    iput-object p1, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mContainer:Lcom/instagram/android/support/camera/gallery/BaseImageList;

    .line 67
    iput-object p2, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 68
    iput-wide p3, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mId:J

    .line 69
    iput p5, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mIndex:I

    .line 70
    iput-object p6, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    .line 71
    iput-object p7, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    .line 72
    iput-wide p8, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mMiniThumbMagic:J

    .line 73
    iput-object p10, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mMimeType:Ljava/lang/String;

    .line 74
    iput-wide p11, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mDateTaken:J

    .line 75
    iput-object p13, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mTitle:Ljava/lang/String;

    .line 76
    iput-object p14, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mDisplayName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private setupDimension()V
    .locals 5

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    const-string v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 163
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 164
    invoke-static {}, Lcom/instagram/android/support/camera/BitmapManager;->instance()Lcom/instagram/android/support/camera/BitmapManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/instagram/android/support/camera/BitmapManager;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 166
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mWidth:I

    .line 167
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    invoke-static {v0}, Lcom/instagram/android/support/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 174
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v1

    .line 169
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mWidth:I

    .line 170
    const/4 v1, 0x0

    iput v1, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    invoke-static {v0}, Lcom/instagram/android/support/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    invoke-static {v1}, Lcom/instagram/android/support/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 85
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/instagram/android/support/camera/gallery/Image;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 86
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    check-cast p1, Lcom/instagram/android/support/camera/gallery/Image;

    .end local p1
    iget-object v1, p1, Lcom/instagram/android/support/camera/gallery/Image;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullSizeBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "minSideLength"
    .parameter "maxNumberOfPixels"

    .prologue
    .line 95
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/instagram/android/support/camera/gallery/BaseImage;->fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "minSideLength"
    .parameter "maxNumberOfPixels"
    .parameter "rotateAsNeeded"
    .parameter "useNative"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mContainer:Lcom/instagram/android/support/camera/gallery/BaseImageList;

    iget-wide v1, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 102
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2, v0, v1, p4}, Lcom/instagram/android/support/camera/Util;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/gallery/BaseImage;->getDegreesRotated()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/android/support/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mId:J

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getContainer()Lcom/instagram/android/support/camera/gallery/IImageList;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mContainer:Lcom/instagram/android/support/camera/gallery/BaseImageList;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mDateTaken:J

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/support/camera/gallery/BaseImage;->setupDimension()V

    .line 183
    :cond_0
    iget v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mHeight:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/support/camera/gallery/BaseImage;->setupDimension()V

    .line 178
    :cond_0
    iget v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public isJpeg()Z
    .locals 2

    .prologue
    .line 211
    const-string v0, "image/jpeg"

    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 187
    .line 189
    :try_start_0
    iget-wide v1, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mId:J

    .line 190
    iget-object v3, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v3, v1, v2, v4, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/gallery/BaseImage;->getDegreesRotated()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/android/support/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    :cond_0
    :goto_0
    return-object v0

    .line 192
    :catch_0
    move-exception v1

    .line 193
    const-string v2, "BaseImage"

    const-string v3, "miniThumbBitmap got exception"

    invoke-static {v2, v3, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onRemove()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
