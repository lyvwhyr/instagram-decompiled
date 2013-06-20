.class public Lcom/instagram/android/support/camera/gallery/SingleImageList;
.super Ljava/lang/Object;
.source "SingleImageList.java"

# interfaces
.implements Lcom/instagram/android/support/camera/gallery/IImageList;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseImageList"


# instance fields
.field private mSingleImage:Lcom/instagram/android/support/camera/gallery/IImage;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/instagram/android/support/camera/gallery/SingleImageList;->mUri:Landroid/net/Uri;

    .line 40
    new-instance v0, Lcom/instagram/android/support/camera/gallery/UriImage;

    invoke-direct {v0, p0, p1, p2}, Lcom/instagram/android/support/camera/gallery/UriImage;-><init>(Lcom/instagram/android/support/camera/gallery/IImageList;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/instagram/android/support/camera/gallery/SingleImageList;->mSingleImage:Lcom/instagram/android/support/camera/gallery/IImage;

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/instagram/android/support/camera/gallery/SingleImageList;->mSingleImage:Lcom/instagram/android/support/camera/gallery/IImage;

    .line 77
    iput-object v0, p0, Lcom/instagram/android/support/camera/gallery/SingleImageList;->mUri:Landroid/net/Uri;

    .line 78
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
    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public getImageAt(I)Lcom/instagram/android/support/camera/gallery/IImage;
    .locals 1
    .parameter "i"

    .prologue
    .line 60
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/SingleImageList;->mSingleImage:Lcom/instagram/android/support/camera/gallery/IImage;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/instagram/android/support/camera/gallery/IImage;
    .locals 1
    .parameter "uri"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/SingleImageList;->mSingleImage:Lcom/instagram/android/support/camera/gallery/IImage;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageIndex(Lcom/instagram/android/support/camera/gallery/IImage;)I
    .locals 1
    .parameter "image"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/SingleImageList;->mSingleImage:Lcom/instagram/android/support/camera/gallery/IImage;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public removeImage(Lcom/instagram/android/support/camera/gallery/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public removeImageAt(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
