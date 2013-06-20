.class public Lcom/instagram/util/CameraUsageReportingUtil;
.super Ljava/lang/Object;
.source "CameraUsageReportingUtil.java"


# static fields
.field private static BUILTIN_CAMERA_OPENED:Ljava/lang/String; = null

.field private static BUILTIN_SOURCE_PICKER_OPENED:Ljava/lang/String; = null

.field private static CROP_SCREEN_OPENED:Ljava/lang/String; = null

.field private static EXTERNAL_SHARE_INTENT_OPENED:Ljava/lang/String; = null

.field private static FILTER_SCREEN_OPENED:Ljava/lang/String; = null

.field private static GALLERY_OPENED_VIA_INSTAGRAM_CAMERA:Ljava/lang/String; = null

.field private static GALLERY_OPENED_VIA_SOURCE_PICKER:Ljava/lang/String; = null

.field private static INSTAGRAM_CAMERA_OPENED:Ljava/lang/String; = null

.field private static POST_METADATA_SCREEN_OPENED:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "CameraUsageReportingUtil"

.field private static sCameraReportingSession:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSessionGuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "ic-camera-opened"

    sput-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->INSTAGRAM_CAMERA_OPENED:Ljava/lang/String;

    .line 22
    const-string v0, "ic-gallery-opened"

    sput-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->GALLERY_OPENED_VIA_INSTAGRAM_CAMERA:Ljava/lang/String;

    .line 23
    const-string v0, "share-intent"

    sput-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->EXTERNAL_SHARE_INTENT_OPENED:Ljava/lang/String;

    .line 25
    const-string v0, "sc-picker-opened"

    sput-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->BUILTIN_SOURCE_PICKER_OPENED:Ljava/lang/String;

    .line 26
    const-string v0, "sc-camera-opened"

    sput-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->BUILTIN_CAMERA_OPENED:Ljava/lang/String;

    .line 27
    const-string v0, "sc-gallery-opened"

    sput-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->GALLERY_OPENED_VIA_SOURCE_PICKER:Ljava/lang/String;

    .line 29
    const-string v0, "crop-opened"

    sput-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->CROP_SCREEN_OPENED:Ljava/lang/String;

    .line 31
    const-string v0, "filters-opened"

    sput-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->FILTER_SCREEN_OPENED:Ljava/lang/String;

    .line 32
    const-string v0, "post-metadata-opened"

    sput-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->POST_METADATA_SCREEN_OPENED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static didOpenBuiltinCamera()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->BUILTIN_CAMERA_OPENED:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/util/CameraUsageReportingUtil;->reportUsage(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static didOpenBuiltinGallery(Z)V
    .locals 1
    .parameter "viaInstagramCamera"

    .prologue
    .line 59
    if-eqz p0, :cond_0

    sget-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->GALLERY_OPENED_VIA_INSTAGRAM_CAMERA:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lcom/instagram/util/CameraUsageReportingUtil;->reportUsage(Ljava/lang/String;)V

    .line 60
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->GALLERY_OPENED_VIA_SOURCE_PICKER:Ljava/lang/String;

    goto :goto_0
.end method

.method public static didOpenBuiltinSourcePicker()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/instagram/util/CameraUsageReportingUtil;->resetSession()V

    .line 46
    sget-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->BUILTIN_SOURCE_PICKER_OPENED:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/util/CameraUsageReportingUtil;->reportUsage(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static didOpenCropScreen()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->CROP_SCREEN_OPENED:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/util/CameraUsageReportingUtil;->reportUsage(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static didOpenExternalShareIntent()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/instagram/util/CameraUsageReportingUtil;->resetSession()V

    .line 51
    sget-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->EXTERNAL_SHARE_INTENT_OPENED:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/util/CameraUsageReportingUtil;->reportUsage(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static didOpenFilters()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->FILTER_SCREEN_OPENED:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/util/CameraUsageReportingUtil;->reportUsage(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static didOpenInstagramCamera()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/instagram/util/CameraUsageReportingUtil;->resetSession()V

    .line 41
    sget-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->INSTAGRAM_CAMERA_OPENED:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/util/CameraUsageReportingUtil;->reportUsage(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static didOpenPostMetadata()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->POST_METADATA_SCREEN_OPENED:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/util/CameraUsageReportingUtil;->reportUsage(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private static getSessionCounterForAction(Ljava/lang/String;)I
    .locals 3
    .parameter "cameraAction"

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 76
    sget-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->sCameraReportingSession:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->sCameraReportingSession:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    :goto_0
    sget-object v1, Lcom/instagram/util/CameraUsageReportingUtil;->sCameraReportingSession:Ljava/util/Map;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static getSessionGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->sSessionGuid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->sSessionGuid:Ljava/lang/String;

    .line 90
    :cond_0
    sget-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->sSessionGuid:Ljava/lang/String;

    return-object v0
.end method

.method private static reportUsage(Ljava/lang/String;)V
    .locals 5
    .parameter "cameraAction"

    .prologue
    .line 94
    invoke-static {p0}, Lcom/instagram/util/CameraUsageReportingUtil;->getSessionCounterForAction(Ljava/lang/String;)I

    move-result v1

    .line 95
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->getHasAdvancedCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    .line 96
    :goto_0
    const-string v2, "usage/?n=%s&action=%s&sid=%s&ic=%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p0, v3, v1

    const/4 v1, 0x2

    invoke-static {}, Lcom/instagram/util/CameraUsageReportingUtil;->getSessionGuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/loaderrequest/ApiUrlHelper;->expandPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/instagram/util/NoopUtil;->sendNoopRequest(Ljava/lang/String;)V

    .line 98
    return-void

    .line 95
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private static resetSession()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->sSessionGuid:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/instagram/util/CameraUsageReportingUtil;->sCameraReportingSession:Ljava/util/Map;

    .line 37
    return-void
.end method
