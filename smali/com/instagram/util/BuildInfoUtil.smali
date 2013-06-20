.class public Lcom/instagram/util/BuildInfoUtil;
.super Ljava/lang/Object;
.source "BuildInfoUtil.java"


# static fields
.field private static sAppType:Lcom/instagram/android/InstagramAppType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppType()Lcom/instagram/android/InstagramAppType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/instagram/util/BuildInfoUtil;->sAppType:Lcom/instagram/android/InstagramAppType;

    return-object v0
.end method

.method public static getBuildBranch(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 71
    new-instance v0, Lcom/facebook/common/c/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/common/c/c;-><init>(Landroid/content/Context;)V

    .line 72
    const-string v1, "com.facebook.versioncontrol.branch"

    invoke-virtual {v0, v1}, Lcom/facebook/common/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, -0x1

    .line 59
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 60
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return v0

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "appContext"

    .prologue
    .line 29
    new-instance v0, Lcom/facebook/common/c/c;

    invoke-direct {v0, p0}, Lcom/facebook/common/c/c;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v1, "com.instagram.raw_package_type"

    invoke-virtual {v0, v1}, Lcom/facebook/common/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    sget-object v0, Lcom/instagram/android/InstagramAppTypes;->DEBUG:Lcom/instagram/android/InstagramAppType;

    sput-object v0, Lcom/instagram/util/BuildInfoUtil;->sAppType:Lcom/instagram/android/InstagramAppType;

    .line 38
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v1, "inhouse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Lcom/instagram/android/InstagramAppTypes;->INHOUSE:Lcom/instagram/android/InstagramAppType;

    sput-object v0, Lcom/instagram/util/BuildInfoUtil;->sAppType:Lcom/instagram/android/InstagramAppType;

    goto :goto_0

    .line 36
    :cond_1
    sget-object v0, Lcom/instagram/android/InstagramAppTypes;->PROD:Lcom/instagram/android/InstagramAppType;

    sput-object v0, Lcom/instagram/util/BuildInfoUtil;->sAppType:Lcom/instagram/android/InstagramAppType;

    goto :goto_0
.end method

.method public static isDebugBuild()Z
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/instagram/android/InstagramAppTypes;->DEBUG:Lcom/instagram/android/InstagramAppType;

    invoke-static {}, Lcom/instagram/util/BuildInfoUtil;->getAppType()Lcom/instagram/android/InstagramAppType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInhouseBuild()Z
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/instagram/android/InstagramAppTypes;->INHOUSE:Lcom/instagram/android/InstagramAppType;

    invoke-static {}, Lcom/instagram/util/BuildInfoUtil;->getAppType()Lcom/instagram/android/InstagramAppType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isProdBuild()Z
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/instagram/android/InstagramAppTypes;->PROD:Lcom/instagram/android/InstagramAppType;

    invoke-static {}, Lcom/instagram/util/BuildInfoUtil;->getAppType()Lcom/instagram/android/InstagramAppType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
