.class public Lcom/instagram/api/loaderrequest/UrlHelper;
.super Ljava/lang/Object;
.source "UrlHelper.java"


# static fields
.field public static final HOST:Ljava/lang/String; = "instagram.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expandPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "path"
    .parameter "secure"

    .prologue
    .line 15
    const-string v1, "instagram.com"

    .line 16
    if-eqz p1, :cond_1

    const-string v0, "https"

    .line 18
    :goto_0
    invoke-static {}, Lcom/instagram/api/loaderrequest/UrlHelper;->useDevelopmentServer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-static {}, Lcom/instagram/android/prefs/DevPreferences;->getInstance()Lcom/instagram/android/prefs/DevPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/prefs/DevPreferences;->getDevServerName()Ljava/lang/String;

    move-result-object v1

    .line 20
    const-string v0, "http"

    .line 23
    :cond_0
    const-string v2, "%s://%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object p0, v3, v0

    invoke-static {v2, v3}, Lcom/facebook/common/i/b;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 16
    :cond_1
    const-string v0, "http"

    goto :goto_0
.end method

.method private static useDevelopmentServer()Z
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/instagram/util/BuildInfoUtil;->isProdBuild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instagram/android/prefs/DevPreferences;->getInstance()Lcom/instagram/android/prefs/DevPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/prefs/DevPreferences;->isUsingDevServer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
