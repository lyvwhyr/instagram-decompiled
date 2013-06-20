.class public Lcom/instagram/android/InstagramApplication;
.super Landroid/app/Application;
.source "InstagramApplication.java"


# static fields
.field private static final HEADER_REFERER:Lch/boye/httpclientandroidlib/Header; = null

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.instagram.android"

.field public static final REQUEST_FILTER:Lcom/instagram/android/mediacache/IgBitmapCache$RequestFilter; = null

.field private static final TAG:Ljava/lang/String; = "InstagramApplication"

.field public static final TASK_LIMIT:I = 0x3

.field private static sFailedToLoadFileSystem:Z

.field private static sFailedToLoadLibrary:Z

.field private static sStickyHeaderSupported:Ljava/lang/Boolean;


# instance fields
.field private final mAutoCompleteUpdateReceiver:Lcom/instagram/android/service/AutoCompleteUserService$AutoCompleteUpdateReceiver;

.field private final mBestLocationListener:Lcom/instagram/android/location/BestLocationListener;

.field private mChangedUserReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mServiceListener:Lcom/facebook/a/f;

.field private serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 78
    sput-boolean v0, Lcom/instagram/android/InstagramApplication;->sFailedToLoadLibrary:Z

    .line 80
    sput-boolean v0, Lcom/instagram/android/InstagramApplication;->sFailedToLoadFileSystem:Z

    .line 87
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v1, "Referer"

    const-string v2, "android.instagram.com"

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/android/InstagramApplication;->HEADER_REFERER:Lch/boye/httpclientandroidlib/Header;

    .line 88
    new-instance v0, Lcom/instagram/android/InstagramApplication$1;

    invoke-direct {v0}, Lcom/instagram/android/InstagramApplication$1;-><init>()V

    sput-object v0, Lcom/instagram/android/InstagramApplication;->REQUEST_FILTER:Lcom/instagram/android/mediacache/IgBitmapCache$RequestFilter;

    .line 101
    :try_start_0
    const-string v0, "instagram_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/android/InstagramApplication;->sStickyHeaderSupported:Ljava/lang/Boolean;

    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/InstagramApplication;->sFailedToLoadLibrary:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 107
    new-instance v0, Lcom/instagram/android/location/BestLocationListener;

    invoke-direct {v0}, Lcom/instagram/android/location/BestLocationListener;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/InstagramApplication;->mBestLocationListener:Lcom/instagram/android/location/BestLocationListener;

    .line 111
    new-instance v0, Lcom/instagram/android/service/AutoCompleteUserService$AutoCompleteUpdateReceiver;

    invoke-direct {v0}, Lcom/instagram/android/service/AutoCompleteUserService$AutoCompleteUpdateReceiver;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/InstagramApplication;->mAutoCompleteUpdateReceiver:Lcom/instagram/android/service/AutoCompleteUserService$AutoCompleteUpdateReceiver;

    .line 113
    new-instance v0, Lcom/instagram/android/InstagramApplication$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/InstagramApplication$2;-><init>(Lcom/instagram/android/InstagramApplication;)V

    iput-object v0, p0, Lcom/instagram/android/InstagramApplication;->mChangedUserReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    new-instance v0, Lcom/instagram/android/InstagramApplication$3;

    invoke-direct {v0, p0}, Lcom/instagram/android/InstagramApplication$3;-><init>(Lcom/instagram/android/InstagramApplication;)V

    iput-object v0, p0, Lcom/instagram/android/InstagramApplication;->mServiceListener:Lcom/facebook/a/f;

    return-void
.end method

.method static synthetic access$000()Lch/boye/httpclientandroidlib/Header;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/instagram/android/InstagramApplication;->HEADER_REFERER:Lch/boye/httpclientandroidlib/Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/InstagramApplication;)Lcom/instagram/android/service/AutoCompleteUserService$AutoCompleteUpdateReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->mAutoCompleteUpdateReceiver:Lcom/instagram/android/service/AutoCompleteUserService$AutoCompleteUpdateReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/InstagramApplication;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/instagram/android/InstagramApplication;->reauthFacebook()V

    return-void
.end method

.method private detectWebViewCrashingBug()V
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/instagram/android/InstagramApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 257
    if-nez v0, :cond_0

    .line 258
    const-string v0, "failed_to_initialize_cache_dir"

    invoke-static {v0}, Lcom/instagram/util/NoopUtil;->report(Ljava/lang/String;)V

    .line 260
    :cond_0
    return-void
.end method

.method public static detectWriteableFileSystem()V
    .locals 1

    .prologue
    .line 390
    :try_start_0
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/ApplicationUuidHelper;->generateOldStyleUuid(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/InstagramApplication;->sFailedToLoadFileSystem:Z

    goto :goto_0
.end method

.method public static getFailedToLoadFilesystem()Z
    .locals 1

    .prologue
    .line 385
    sget-boolean v0, Lcom/instagram/android/InstagramApplication;->sFailedToLoadFileSystem:Z

    return v0
.end method

.method public static getFailedToLoadLibrary()Z
    .locals 1

    .prologue
    .line 381
    sget-boolean v0, Lcom/instagram/android/InstagramApplication;->sFailedToLoadLibrary:Z

    return v0
.end method

.method public static getStickyHeaderSupported()Z
    .locals 2

    .prologue
    .line 342
    sget-object v0, Lcom/instagram/android/InstagramApplication;->sStickyHeaderSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 343
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/ViewUtil;->getScreenHeightPixels(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x140

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/InstagramApplication;->sStickyHeaderSupported:Ljava/lang/Boolean;

    .line 345
    :cond_0
    sget-object v0, Lcom/instagram/android/InstagramApplication;->sStickyHeaderSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 343
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initACRACrashReports()V
    .locals 3

    .prologue
    .line 224
    new-instance v0, Lcom/instagram/crash/IgCrashReporter;

    invoke-direct {v0, p0}, Lcom/instagram/crash/IgCrashReporter;-><init>(Landroid/app/Application;)V

    invoke-static {}, Lcom/instagram/crash/IgErrorReporter;->getCrashReportEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/acra/ACRA;->init(Lorg/acra/reporter/ReportsCrashes;Ljava/lang/String;)Lorg/acra/ErrorReporter;

    move-result-object v0

    .line 228
    const-string v1, "app"

    const-string v2, "instagram"

    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    const-string v1, "fb_app_id"

    const-string v2, "124024574287414"

    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    invoke-static {}, Lcom/facebook/b/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const-wide/32 v1, 0x100000

    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->setMaxReportSize(J)V

    .line 236
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/InstagramApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    const-string v2, "android_id"

    invoke-virtual {v0, v2, v1}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    invoke-static {}, Lcom/instagram/util/BuildInfoUtil;->isProdBuild()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/af;->a(Z)V

    .line 249
    return-void

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 239
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private reauthFacebook()V
    .locals 3

    .prologue
    .line 252
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/InstagramApplication;->mServiceListener:Lcom/facebook/a/f;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/a/b;->b(Landroid/content/Context;Lcom/facebook/a/f;)Z

    .line 253
    return-void
.end method

.method private scanAdvancedCameraWhiteList()V
    .locals 7

    .prologue
    const/16 v5, 0xe

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 271
    const-string v2, "InstagramApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/16 v2, 0x14

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "Galaxy Nexus"

    aput-object v2, v3, v1

    const-string v2, "Nexus S"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "HTC_Amaze_4G"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "DROID3"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "DROID4"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "DROIDX"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "DROID BIONIC"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "SPH-D700"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "GT-I9100"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "SGH-T959V"

    aput-object v4, v3, v2

    const/16 v2, 0xa

    const-string v4, "SCH-I500"

    aput-object v4, v3, v2

    const/16 v2, 0xb

    const-string v4, "SCH-I510"

    aput-object v4, v3, v2

    const/16 v2, 0xc

    const-string v4, "ADR6425LVW"

    aput-object v4, v3, v2

    const/16 v2, 0xd

    const-string v4, "MB865"

    aput-object v4, v3, v2

    const-string v2, "LT15a"

    aput-object v2, v3, v5

    const/16 v2, 0xf

    const-string v4, "PC36100"

    aput-object v4, v3, v2

    const/16 v2, 0x10

    const-string v4, "PG86100"

    aput-object v4, v3, v2

    const/16 v2, 0x11

    const-string v4, "GT-N7000"

    aput-object v4, v3, v2

    const/16 v2, 0x12

    const-string v4, "GT-P7510"

    aput-object v4, v3, v2

    const/16 v2, 0x13

    const-string v4, "ThinkPad Tablet"

    aput-object v4, v3, v2

    .line 297
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_1

    .line 311
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/InstagramApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v1

    .line 312
    invoke-virtual {v1, v0}, Lcom/instagram/android/Preferences;->getHasAdvancedCameraEnabled(Z)Z

    move-result v0

    .line 313
    invoke-virtual {v1, v0}, Lcom/instagram/android/Preferences;->setHasAdvancedCameraEnabled(Z)Z

    .line 314
    return-void

    .line 301
    :cond_1
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 302
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private scanAdvancedResizeWhiteList()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 317
    new-array v3, v1, [Ljava/lang/String;

    .line 321
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v2, v4, :cond_1

    .line 333
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/InstagramApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v1

    .line 334
    invoke-virtual {v1, v0}, Lcom/instagram/android/Preferences;->getHasAdvancedResizeEnabled(Z)Z

    move-result v0

    .line 335
    invoke-virtual {v1, v0}, Lcom/instagram/android/Preferences;->setHasAdvancedResizeEnabled(Z)Z

    .line 336
    return-void

    .line 325
    :cond_1
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 326
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public clearLastKnownLocation()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->mBestLocationListener:Lcom/instagram/android/location/BestLocationListener;

    invoke-virtual {v0}, Lcom/instagram/android/location/BestLocationListener;->clearLastKnownLocation()V

    .line 378
    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->mBestLocationListener:Lcom/instagram/android/location/BestLocationListener;

    invoke-virtual {v0}, Lcom/instagram/android/location/BestLocationListener;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->serviceMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->serviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->serviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 401
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isLocationValid(Landroid/location/Location;)Z
    .locals 1
    .parameter "location"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->mBestLocationListener:Lcom/instagram/android/location/BestLocationListener;

    invoke-virtual {v0, p1}, Lcom/instagram/android/location/BestLocationListener;->isLocationValid(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 150
    invoke-virtual {p0}, Lcom/instagram/android/InstagramApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/AppContext;->setContext(Landroid/content/Context;)V

    .line 151
    invoke-virtual {p0}, Lcom/instagram/android/InstagramApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/BuildInfoUtil;->init(Landroid/content/Context;)V

    .line 154
    new-instance v0, Lcom/instagram/android/InstagramFbLog;

    invoke-direct {v0}, Lcom/instagram/android/InstagramFbLog;-><init>()V

    invoke-static {v0}, Lcom/facebook/c/b/a;->a(Lcom/facebook/c/b/b;)V

    .line 157
    invoke-direct {p0}, Lcom/instagram/android/InstagramApplication;->initACRACrashReports()V

    .line 159
    invoke-static {p0}, Lcom/instagram/util/IgGateKeeper;->init(Landroid/content/Context;)V

    .line 161
    invoke-virtual {p0}, Lcom/instagram/android/InstagramApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/camera/Storage;->initialize(Landroid/content/Context;)V

    .line 163
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/InstagramApplication;->mHandler:Landroid/os/Handler;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/InstagramApplication;->serviceMap:Ljava/util/Map;

    .line 168
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->serviceMap:Ljava/util/Map;

    const-string v1, "com.instagram.androidservice,AuthHelper"

    new-instance v2, Lcom/instagram/android/service/AuthHelper;

    invoke-direct {v2, p0}, Lcom/instagram/android/service/AuthHelper;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->serviceMap:Ljava/util/Map;

    const-string v1, "com.instagram.android.service.mediastore"

    new-instance v2, Lcom/instagram/android/service/MediaStore;

    invoke-direct {v2}, Lcom/instagram/android/service/MediaStore;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->serviceMap:Ljava/util/Map;

    const-string v1, "com.instagram.android.service.userstore"

    new-instance v2, Lcom/instagram/android/service/UserStore;

    invoke-direct {v2}, Lcom/instagram/android/service/UserStore;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->serviceMap:Ljava/util/Map;

    const-string v1, "com.instagram.android.service.venue_store"

    new-instance v2, Lcom/instagram/android/service/VenueStore;

    invoke-direct {v2}, Lcom/instagram/android/service/VenueStore;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->serviceMap:Ljava/util/Map;

    const-string v1, "com.instagram.android.service.customObjectMapper"

    new-instance v2, Lcom/instagram/android/service/CustomObjectMapper;

    invoke-direct {v2, p0}, Lcom/instagram/android/service/CustomObjectMapper;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v0, Lcom/instagram/api/PersistentCookieStore;

    invoke-direct {v0, p0}, Lcom/instagram/api/PersistentCookieStore;-><init>(Landroid/content/Context;)V

    .line 174
    iget-object v1, p0, Lcom/instagram/android/InstagramApplication;->serviceMap:Ljava/util/Map;

    const-string v2, "com.instagram.api.PersistentCookieStore"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v1, p0, Lcom/instagram/android/InstagramApplication;->serviceMap:Ljava/util/Map;

    const-string v2, "com.instagram.api.ApiHttpClient"

    new-instance v3, Lcom/instagram/api/ApiHttpClient;

    invoke-direct {v3, v0}, Lcom/instagram/api/ApiHttpClient;-><init>(Lcom/instagram/api/PersistentCookieStore;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->serviceMap:Ljava/util/Map;

    const-string v1, "com.instagram.android.Preferences"

    new-instance v2, Lcom/instagram/android/Preferences;

    invoke-direct {v2, p0}, Lcom/instagram/android/Preferences;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->serviceMap:Ljava/util/Map;

    const-string v1, "com.instagram.android.service.actionBarService"

    new-instance v2, Lcom/instagram/android/service/ActionBarService;

    invoke-direct {v2, p0}, Lcom/instagram/android/service/ActionBarService;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-direct {p0}, Lcom/instagram/android/InstagramApplication;->detectWebViewCrashingBug()V

    .line 182
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/InstagramApplication;->mChangedUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.service.BROADCAST_USER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 184
    invoke-static {p0}, Lcom/instagram/camera/CameraUtil;->initialize(Landroid/content/Context;)V

    .line 185
    invoke-static {}, Lcom/instagram/android/model/User;->initialize()V

    .line 187
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/instagram/android/InstagramApplication$4;

    invoke-direct {v1, p0}, Lcom/instagram/android/InstagramApplication$4;-><init>(Lcom/instagram/android/InstagramApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 195
    invoke-static {p0}, Lcom/instagram/android/mediacache/IgVideoCache;->initialize(Landroid/content/Context;)V

    .line 197
    invoke-direct {p0}, Lcom/instagram/android/InstagramApplication;->scanAdvancedCameraWhiteList()V

    .line 198
    invoke-direct {p0}, Lcom/instagram/android/InstagramApplication;->scanAdvancedResizeWhiteList()V

    .line 201
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/InstagramApplication$5;

    invoke-direct {v1, p0}, Lcom/instagram/android/InstagramApplication$5;-><init>(Lcom/instagram/android/InstagramApplication;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/InstagramApplication$6;

    invoke-direct {v1, p0}, Lcom/instagram/android/InstagramApplication$6;-><init>(Lcom/instagram/android/InstagramApplication;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 265
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/InstagramApplication;->mChangedUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 266
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->serviceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 267
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/android/service/AppContext;->setContext(Landroid/content/Context;)V

    .line 268
    return-void
.end method

.method public removeLocationUpdates()V
    .locals 2

    .prologue
    .line 360
    iget-object v1, p0, Lcom/instagram/android/InstagramApplication;->mBestLocationListener:Lcom/instagram/android/location/BestLocationListener;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/instagram/android/InstagramApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Lcom/instagram/android/location/BestLocationListener;->unregister(Landroid/location/LocationManager;)V

    .line 361
    return-void
.end method

.method public removeLocationUpdates(Ljava/util/Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->mBestLocationListener:Lcom/instagram/android/location/BestLocationListener;

    invoke-virtual {v0, p1}, Lcom/instagram/android/location/BestLocationListener;->deleteObserver(Ljava/util/Observer;)V

    .line 365
    invoke-virtual {p0}, Lcom/instagram/android/InstagramApplication;->removeLocationUpdates()V

    .line 366
    return-void
.end method

.method public requestLocationUpdates(Ljava/util/Observer;)Lcom/instagram/android/location/BestLocationListener;
    .locals 3
    .parameter "observer"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->mBestLocationListener:Lcom/instagram/android/location/BestLocationListener;

    invoke-virtual {v0, p1}, Lcom/instagram/android/location/BestLocationListener;->addObserver(Ljava/util/Observer;)V

    .line 355
    iget-object v1, p0, Lcom/instagram/android/InstagramApplication;->mBestLocationListener:Lcom/instagram/android/location/BestLocationListener;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/instagram/android/InstagramApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/location/BestLocationListener;->register(Landroid/location/LocationManager;Z)V

    .line 356
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->mBestLocationListener:Lcom/instagram/android/location/BestLocationListener;

    return-object v0
.end method

.method public requestLocationUpdates(Z)Lcom/instagram/android/location/BestLocationListener;
    .locals 2
    .parameter "gps"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/instagram/android/InstagramApplication;->mBestLocationListener:Lcom/instagram/android/location/BestLocationListener;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/instagram/android/InstagramApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v1, v0, p1}, Lcom/instagram/android/location/BestLocationListener;->register(Landroid/location/LocationManager;Z)V

    .line 350
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->mBestLocationListener:Lcom/instagram/android/location/BestLocationListener;

    return-object v0
.end method
