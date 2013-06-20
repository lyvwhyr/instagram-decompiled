.class public Lcom/instagram/android/support/camera/gallery/Image;
.super Lcom/instagram/android/support/camera/gallery/BaseImage;
.source "Image.java"

# interfaces
.implements Lcom/instagram/android/support/camera/gallery/IImage;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseImage"

.field private static final THUMB_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mExif:Landroid/media/ExifInterface;

.field private mRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 151
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/android/support/camera/gallery/Image;->THUMB_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/instagram/android/support/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
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
    .parameter "rotation"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p14}, Lcom/instagram/android/support/camera/gallery/BaseImage;-><init>(Lcom/instagram/android/support/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 53
    iput p15, p0, Lcom/instagram/android/support/camera/gallery/Image;->mRotation:I

    .line 54
    return-void
.end method

.method private loadExifData()V
    .locals 3

    .prologue
    .line 96
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/Image;->mDataPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/android/support/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string v1, "BaseImage"

    const-string v2, "cannot read exif"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private saveExifData()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;

    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 106
    :cond_0
    return-void
.end method

.method private setExifRotation(I)V
    .locals 4
    .parameter "degrees"

    .prologue
    const/4 v0, 0x1

    .line 110
    :try_start_0
    rem-int/lit16 p1, p1, 0x168

    .line 111
    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    .line 114
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 129
    :goto_0
    :sswitch_0
    const-string v1, "Orientation"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/support/camera/gallery/Image;->replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/instagram/android/support/camera/gallery/Image;->saveExifData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_1
    return-void

    .line 119
    :sswitch_1
    const/4 v0, 0x6

    .line 120
    goto :goto_0

    .line 122
    :sswitch_2
    const/4 v0, 0x3

    .line 123
    goto :goto_0

    .line 125
    :sswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v1, "BaseImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to save exif data with new orientation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/support/camera/gallery/Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 114
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/instagram/android/support/camera/gallery/Image;->mRotation:I

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/gallery/Image;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "image/jpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/instagram/android/support/camera/gallery/Image;->loadExifData()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;

    invoke-virtual {v0, p1, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/gallery/Image;->getDegreesRotated()I

    move-result v0

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    .line 145
    invoke-direct {p0, v0}, Lcom/instagram/android/support/camera/gallery/Image;->setExifRotation(I)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/gallery/Image;->setDegreesRotated(I)V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method protected setDegreesRotated(I)V
    .locals 4
    .parameter "degrees"

    .prologue
    const/4 v3, 0x0

    .line 62
    iget v0, p0, Lcom/instagram/android/support/camera/gallery/Image;->mRotation:I

    if-ne v0, p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 63
    :cond_0
    iput p1, p0, Lcom/instagram/android/support/camera/gallery/Image;->mRotation:I

    .line 64
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 65
    const-string v1, "orientation"

    iget v2, p0, Lcom/instagram/android/support/camera/gallery/Image;->mRotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/Image;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/instagram/android/support/camera/gallery/Image;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public thumbBitmap(Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "rotateAsNeeded"

    .prologue
    .line 156
    .line 157
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 158
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 159
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 160
    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/Image;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/instagram/android/support/camera/gallery/Image;->mId:J

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/gallery/Image;->getDegreesRotated()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/android/support/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    :cond_0
    return-object v0
.end method
