.class public Lcom/instagram/api/request/FlytrapRequest;
.super Lcom/instagram/api/request/AbstractRequest;
.source "FlytrapRequest.java"


# static fields
.field private static final INSTAGRAM_CATEGORY_ID:Ljava/lang/String; = "493186350727442"

.field private static final TAG_INSTAGRAM:Ljava/lang/String; = "340654432643170"

.field private static final TAG_INSTAGRAM_ANDROID:Ljava/lang/String; = "120254861459529"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mFbAccessToken:Ljava/lang/String;

.field private mScreenShotPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "description"
    .parameter "fbAccessToken"
    .parameter "screenShotPath"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/instagram/api/request/AbstractRequest;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/instagram/api/request/FlytrapRequest;->mDescription:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/instagram/api/request/FlytrapRequest;->mFbAccessToken:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/instagram/api/request/FlytrapRequest;->mScreenShotPath:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/instagram/api/request/FlytrapRequest;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFbAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/instagram/api/request/FlytrapRequest;->mFbAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lcom/instagram/api/request/AbstractRequest$Method;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/instagram/api/request/AbstractRequest$Method;->POST:Lcom/instagram/api/request/AbstractRequest$Method;

    return-object v0
.end method

.method public getParams()Lcom/instagram/api/RequestParams;
    .locals 5

    .prologue
    .line 55
    new-instance v0, Lcom/instagram/api/RequestParams;

    invoke-direct {v0}, Lcom/instagram/api/RequestParams;-><init>()V

    .line 56
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/instagram/api/request/FlytrapRequest;->mFbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "format"

    const-string v2, "json-strings"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "desc"

    iget-object v2, p0, Lcom/instagram/api/request/FlytrapRequest;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "app"

    const-string v2, "Instagram for Android"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "category_id"

    const-string v2, "493186350727442"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "subscriber_ids"

    const-string v2, "[31117, 26402746]"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/b/a;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/instagram/util/BuildInfoUtil;->getAppType()Lcom/instagram/android/InstagramAppType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/InstagramAppType;->getBugReportTagId()Ljava/lang/String;

    move-result-object v1

    .line 66
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    const-string v3, "340654432643170"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "120254861459529"

    aput-object v3, v2, v1

    .line 67
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 68
    const-string v2, "tag_ids"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v1, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v1}, Lcom/instagram/util/JsonBuilder;-><init>()V

    .line 71
    const-string v2, "IG_Username"

    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    .line 72
    const-string v2, "Git_Hash"

    invoke-virtual {p0}, Lcom/instagram/api/request/FlytrapRequest;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/common/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    .line 73
    const-string v2, "Build_Num"

    invoke-virtual {p0}, Lcom/instagram/api/request/FlytrapRequest;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/util/BuildInfoUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;I)Lcom/instagram/util/JsonBuilder;

    .line 74
    const-string v2, "Branch"

    invoke-virtual {p0}, Lcom/instagram/api/request/FlytrapRequest;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/util/BuildInfoUtil;->getBuildBranch(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    .line 75
    const-string v2, "OS_Version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    .line 76
    const-string v2, "Manufacturer"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    .line 77
    const-string v2, "Model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    .line 78
    const-string v2, "Locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    .line 79
    const-string v2, "info"

    invoke-virtual {v1}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/instagram/api/request/FlytrapRequest;->mScreenShotPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/instagram/api/request/FlytrapRequest;->mScreenShotPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    :try_start_0
    const-string v1, "file"

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/instagram/api/request/FlytrapRequest;->mScreenShotPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v3, "bugreport.png"

    const-string v4, "image/png"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getScreenShotPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/api/request/FlytrapRequest;->mScreenShotPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "https://api.facebook.com/method/bug.create"

    return-object v0
.end method
