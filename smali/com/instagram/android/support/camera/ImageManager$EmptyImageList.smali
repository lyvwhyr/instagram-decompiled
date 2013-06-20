.class Lcom/instagram/android/support/camera/ImageManager$EmptyImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/instagram/android/support/camera/gallery/IImageList;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/support/camera/ImageManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/instagram/android/support/camera/ImageManager$EmptyImageList;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 380
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public getImageAt(I)Lcom/instagram/android/support/camera/gallery/IImage;
    .locals 1
    .parameter "i"

    .prologue
    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/instagram/android/support/camera/gallery/IImage;
    .locals 1
    .parameter "uri"

    .prologue
    .line 399
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageIndex(Lcom/instagram/android/support/camera/gallery/IImage;)I
    .locals 1
    .parameter "image"

    .prologue
    .line 411
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method public removeImage(Lcom/instagram/android/support/camera/gallery/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public removeImageAt(I)Z
    .locals 1
    .parameter "i"

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method
