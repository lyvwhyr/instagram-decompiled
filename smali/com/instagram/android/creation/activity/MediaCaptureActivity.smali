.class public Lcom/instagram/android/creation/activity/MediaCaptureActivity;
.super Lcom/instagram/android/fragment/IgFragmentActivity;
.source "MediaCaptureActivity.java"

# interfaces
.implements Lcom/instagram/android/creation/NearbyVenuesFragment$NearbyVenuesResultListener;
.implements Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;


# static fields
.field public static final INTENT_EXTRA_FROM_CAMERA_ROTATION:Ljava/lang/String; = "cameraRotation"

.field public static final INTENT_EXTRA_MEDIA_FILE_PATH:Ljava/lang/String; = "mediaFilePath"

.field public static final INTENT_EXTRA_MEDIA_SOURCE:Ljava/lang/String; = "mediaSource"

.field public static final INTENT_EXTRA_MIRROR_MEDIA:Ljava/lang/String; = "mirrorMedia"

.field public static final INTENT_EXTRA_ORIGINAL_HEIGHT:Ljava/lang/String; = "originalHeight"

.field public static final INTENT_EXTRA_ORIGINAL_WIDTH:Ljava/lang/String; = "originalWidth"

.field public static final MEDIA_SOURCE_FROM_CAMERA:I = 0x1

.field public static final MEDIA_SOURCE_FROM_GALLERY:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "MediaCaptureActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragmentActivity;-><init>()V

    return-void
.end method

.method private buildFilterFragment(Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 4
    .parameter "extras"

    .prologue
    .line 90
    new-instance v1, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;

    invoke-direct {v1}, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;-><init>()V

    .line 91
    const-string v0, "mediaSource"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->setMediaSource(I)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;

    move-result-object v0

    const-string v2, "mediaFilePath"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->setFilePath(Ljava/lang/String;)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;

    move-result-object v0

    const-string v2, "mirrorMedia"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->setMirror(Z)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;

    .line 97
    const-string v0, "EXTRAS_LATITUDE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "EXTRAS_LATITUDE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->setLatitude(Ljava/lang/Double;)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;

    .line 101
    :cond_0
    const-string v0, "EXTRAS_LONGITUDE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const-string v0, "EXTRAS_LONGITUDE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->setLongitude(Ljava/lang/Double;)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;

    .line 105
    :cond_1
    const-string v0, "cameraRotation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    const-string v0, "cameraRotation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->setCameraRotation(Ljava/lang/Integer;)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;

    .line 109
    :cond_2
    const-string v0, "originalWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    const-string v0, "originalWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->setOriginalImageWidth(Ljava/lang/Integer;)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;

    .line 113
    :cond_3
    const-string v0, "originalHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    const-string v0, "originalHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->setOriginalImageHeight(Ljava/lang/Integer;)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;

    .line 117
    :cond_4
    const-string v0, "EXTRAS_CROP_RECT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    const-string v0, "EXTRAS_CROP_RECT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->setCropRect(Landroid/os/Parcelable;)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;

    .line 121
    :cond_5
    invoke-virtual {v1}, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->create()Lcom/instagram/android/creation/fragment/FilterFragment;

    move-result-object v0

    .line 122
    return-object v0
.end method

.method private handleCropResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "uri"
    .parameter "data"

    .prologue
    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 144
    const-string v1, "mediaSource"

    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "mediaSource"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    const-string v1, "mediaFilePath"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/ac;

    move-result-object v1

    .line 152
    sget v2, Lcom/facebook/g;->layout_container_main:I

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->buildFilterFragment(Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/ac;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;

    .line 153
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/ac;->a(Ljava/lang/String;)Landroid/support/v4/app/ac;

    .line 154
    invoke-virtual {v1}, Landroid/support/v4/app/ac;->a()I

    .line 155
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->b()Z

    .line 156
    return-void
.end method


# virtual methods
.method public onCancelCrop()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->setResult(I)V

    .line 136
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->finish()V

    .line 137
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {p0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {p0}, Lcom/instagram/android/activity/ActivityHelper;->redirectToSignedOutState(Landroid/app/Activity;)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 54
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 56
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/camera/CameraUtil;->initializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 58
    sget v0, Lcom/facebook/h;->activity_capture:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 64
    const-string v2, "EXTRAS_IS_CROP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    new-instance v0, Lcom/instagram/android/support/camera/CropFragment;

    invoke-direct {v0}, Lcom/instagram/android/support/camera/CropFragment;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    .line 80
    sget v2, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/p;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 81
    if-nez v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/ac;

    move-result-object v1

    .line 83
    sget v2, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/ac;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;

    .line 84
    invoke-virtual {v1}, Landroid/support/v4/app/ac;->a()I

    .line 86
    :cond_1
    return-void

    .line 67
    :cond_2
    const-string v2, "mediaFilePath"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    invoke-direct {p0, v1}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->buildFilterFragment(Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->getLastMediaMode()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/instagram/android/video/VideoFileSizeManager;->hasEnoughSpaceToStartRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    new-instance v0, Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-direct {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;-><init>()V

    goto :goto_0

    .line 75
    :cond_4
    new-instance v0, Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-direct {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;-><init>()V

    goto :goto_0
.end method

.method public onFinishCrop(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "uri"
    .parameter "extras"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->handleCropResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method public onVenueCleared()V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    const-string v1, "METADATA_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/creation/fragment/MetadataFragment;

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/fragment/MetadataFragment;->setVenue(Lcom/instagram/android/location/Venue;)V

    .line 181
    return-void
.end method

.method public onVenueSelected(Lcom/instagram/android/location/Venue;)V
    .locals 3
    .parameter "venue"

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    const-string v1, "METADATA_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/creation/fragment/MetadataFragment;

    .line 163
    invoke-virtual {v0, p1}, Lcom/instagram/android/creation/fragment/MetadataFragment;->setVenue(Lcom/instagram/android/location/Venue;)V

    .line 166
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    const-string v1, "NearbyVenuesFragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I)V

    .line 169
    return-void
.end method
