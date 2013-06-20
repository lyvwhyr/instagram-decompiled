.class public Lcom/instagram/twitter/TwitterAccount;
.super Lcom/instagram/oauth/OAuthAccount;
.source "TwitterAccount.java"


# static fields
.field private static sStoreTokenRequestQueued:Z


# instance fields
.field private final mUsername:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "secret"
    .parameter "username"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/instagram/oauth/OAuthAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-object p3, p0, Lcom/instagram/twitter/TwitterAccount;->mUsername:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/instagram/twitter/TwitterAccount;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-static {p0}, Lcom/instagram/twitter/TwitterAccount;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 28
    const-string v2, "oauth_token"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    const-string v3, "oauth_secret"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    const-string v4, "username"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/instagram/twitter/TwitterAccount;

    invoke-direct {v0, v2, v3, v1}, Lcom/instagram/twitter/TwitterAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const-string v0, "twitterPreferences"

    invoke-static {v0}, Lcom/instagram/util/PreferenceUtil;->getUserSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static hasQueuedStoreTokenRequest()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/instagram/twitter/TwitterAccount;->sStoreTokenRequestQueued:Z

    return v0
.end method

.method public static isConfigured(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-static {p0}, Lcom/instagram/twitter/TwitterAccount;->get(Landroid/content/Context;)Lcom/instagram/twitter/TwitterAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static performClearTokenRequest()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/twitter/TwitterAccount;->get(Landroid/content/Context;)Lcom/instagram/twitter/TwitterAccount;

    move-result-object v0

    .line 90
    const-string v1, "twitter/clear_token/"

    invoke-static {v1, v0}, Lcom/instagram/twitter/TwitterAccount;->performTokenRequest(Ljava/lang/String;Lcom/instagram/twitter/TwitterAccount;)V

    .line 91
    return-void
.end method

.method public static performStoreTokenRequest()V
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/twitter/TwitterAccount;->sStoreTokenRequestQueued:Z

    .line 84
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/twitter/TwitterAccount;->get(Landroid/content/Context;)Lcom/instagram/twitter/TwitterAccount;

    move-result-object v0

    .line 85
    const-string v1, "twitter/store_token/"

    invoke-static {v1, v0}, Lcom/instagram/twitter/TwitterAccount;->performTokenRequest(Ljava/lang/String;Lcom/instagram/twitter/TwitterAccount;)V

    .line 86
    return-void
.end method

.method private static performTokenRequest(Ljava/lang/String;Lcom/instagram/twitter/TwitterAccount;)V
    .locals 1
    .parameter "path"
    .parameter "account"

    .prologue
    .line 94
    new-instance v0, Lcom/instagram/twitter/TwitterAccount$1;

    invoke-direct {v0, p0, p1}, Lcom/instagram/twitter/TwitterAccount$1;-><init>(Ljava/lang/String;Lcom/instagram/twitter/TwitterAccount;)V

    invoke-virtual {v0}, Lcom/instagram/twitter/TwitterAccount$1;->perform()V

    .line 103
    return-void
.end method

.method private static queueStoreTokenRequest()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/twitter/TwitterAccount;->sStoreTokenRequestQueued:Z

    .line 80
    return-void
.end method

.method public static remove(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "clearTokenOnServer"

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-static {}, Lcom/instagram/twitter/TwitterAccount;->performClearTokenRequest()V

    .line 48
    :cond_0
    invoke-static {p0}, Lcom/instagram/twitter/TwitterAccount;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    const-string v1, "oauth_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    const-string v1, "oauth_secret"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    const-string v1, "username"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public static store(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/twitter/TwitterAccount;
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "secret"
    .parameter "username"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/instagram/twitter/TwitterAccount;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    const-string v1, "oauth_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    const-string v1, "oauth_secret"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    const-string v1, "username"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    invoke-static {}, Lcom/instagram/util/PreferenceUtil;->getGlobalPreferences()Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/instagram/twitter/TwitterAccount;->performStoreTokenRequest()V

    .line 71
    :goto_0
    invoke-static {p0}, Lcom/instagram/twitter/TwitterAccount;->get(Landroid/content/Context;)Lcom/instagram/twitter/TwitterAccount;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    invoke-static {}, Lcom/instagram/twitter/TwitterAccount;->queueStoreTokenRequest()V

    goto :goto_0
.end method


# virtual methods
.method public getSharingInfo()Ljava/util/HashMap;
    .locals 3
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
    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    const-string v1, "share_to_twitter"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "twitter_access_token_key"

    invoke-virtual {p0}, Lcom/instagram/twitter/TwitterAccount;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "twitter_access_token_secret"

    invoke-virtual {p0}, Lcom/instagram/twitter/TwitterAccount;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Lcom/instagram/twitter/TwitterAccount;->getUsername()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "twitter_username"

    invoke-virtual {p0}, Lcom/instagram/twitter/TwitterAccount;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/twitter/TwitterAccount;->mUsername:Ljava/lang/String;

    return-object v0
.end method
