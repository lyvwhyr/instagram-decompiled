.class public Lcom/instagram/android/support/camera/CropIntentBuilder;
.super Ljava/lang/Object;
.source "CropIntentBuilder.java"


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 3
    .parameter "context"
    .parameter "cls"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/instagram/android/support/camera/CropIntentBuilder;->mIntent:Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRAS_IS_CROP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    invoke-static {p1}, Lcom/instagram/util/FileUtil;->generateTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 68
    invoke-static {}, Lcom/instagram/util/CameraUsageReportingUtil;->didOpenCropScreen()V

    .line 69
    return-void
.end method

.method public static cropIntentForAvatar(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/android/support/camera/CropIntentBuilder;
    .locals 2
    .parameter "context"
    .parameter "photoUri"

    .prologue
    .line 52
    new-instance v0, Lcom/instagram/android/support/camera/CropIntentBuilder;

    const-class v1, Lcom/instagram/android/support/camera/CropActivity;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/support/camera/CropIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Lcom/instagram/android/support/camera/CropIntentBuilder;->setPhotoUri(Landroid/net/Uri;)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/support/camera/CropIntentBuilder;->setRequestCropRect(Z)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/instagram/android/support/camera/CropIntentBuilder;->setMaxPhotoDimensions(I)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/CropIntentBuilder;->showDoneButton()Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static cropIntentForFilterFragment(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/android/support/camera/CropIntentBuilder;
    .locals 2
    .parameter "context"
    .parameter "photoUri"

    .prologue
    .line 34
    new-instance v0, Lcom/instagram/android/support/camera/CropIntentBuilder;

    const-class v1, Lcom/instagram/android/creation/activity/MediaCaptureActivity;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/support/camera/CropIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Lcom/instagram/android/support/camera/CropIntentBuilder;->setPhotoUri(Landroid/net/Uri;)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/support/camera/CropIntentBuilder;->setRequestCropRect(Z)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v1

    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->getIsLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x400

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/android/support/camera/CropIntentBuilder;->setMaxPhotoDimensions(I)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/instagram/android/support/camera/CropIntentBuilder;->setMinimumCrop(I)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x800

    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropIntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setMaxPhotoDimensions(I)Lcom/instagram/android/support/camera/CropIntentBuilder;
    .locals 2
    .parameter "maxPhotoDimensions"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "largestDimension"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    return-object p0
.end method

.method public setMediaSource(I)Lcom/instagram/android/support/camera/CropIntentBuilder;
    .locals 2
    .parameter "mediaSource"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "mediaSource"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    return-object p0
.end method

.method public setMinimumCrop(I)Lcom/instagram/android/support/camera/CropIntentBuilder;
    .locals 2
    .parameter "minimumCrop"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "smallestDimension"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    return-object p0
.end method

.method public setPhotoUri(Landroid/net/Uri;)Lcom/instagram/android/support/camera/CropIntentBuilder;
    .locals 2
    .parameter "photoUri"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRAS_IMAGE_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    return-object p0
.end method

.method public setRequestCropRect(Z)Lcom/instagram/android/support/camera/CropIntentBuilder;
    .locals 2
    .parameter "requestCropRect"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRAS_REQUEST_CROP_RECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    return-object p0
.end method

.method public showDoneButton()Lcom/instagram/android/support/camera/CropIntentBuilder;
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRAS_SHOW_DONE_BUTTON"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    return-object p0
.end method
