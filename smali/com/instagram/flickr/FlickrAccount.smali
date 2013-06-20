.class public Lcom/instagram/flickr/FlickrAccount;
.super Lcom/instagram/oauth/OAuthAccount;
.source "FlickrAccount.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "secret"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/instagram/oauth/OAuthAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static get()Lcom/instagram/flickr/FlickrAccount;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-static {}, Lcom/instagram/flickr/FlickrAccount;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 23
    const-string v2, "oauth_token"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    const-string v3, "oauth_secret"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/instagram/flickr/FlickrAccount;

    invoke-direct {v0, v2, v1}, Lcom/instagram/flickr/FlickrAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 34
    const-string v0, "flickrPreferences"

    invoke-static {v0}, Lcom/instagram/util/PreferenceUtil;->getUserSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isConfigured()Z
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/instagram/flickr/FlickrAccount;->get()Lcom/instagram/flickr/FlickrAccount;

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
    .line 68
    invoke-static {}, Lcom/instagram/flickr/FlickrAccount;->get()Lcom/instagram/flickr/FlickrAccount;

    move-result-object v0

    .line 69
    const-string v1, "flickr/clear_token/"

    invoke-static {v1, v0}, Lcom/instagram/flickr/FlickrAccount;->performTokenRequest(Ljava/lang/String;Lcom/instagram/flickr/FlickrAccount;)V

    .line 70
    return-void
.end method

.method public static performStoreTokenRequest()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/instagram/flickr/FlickrAccount;->get()Lcom/instagram/flickr/FlickrAccount;

    move-result-object v0

    .line 64
    const-string v1, "flickr/store_token/"

    invoke-static {v1, v0}, Lcom/instagram/flickr/FlickrAccount;->performTokenRequest(Ljava/lang/String;Lcom/instagram/flickr/FlickrAccount;)V

    .line 65
    return-void
.end method

.method private static performTokenRequest(Ljava/lang/String;Lcom/instagram/flickr/FlickrAccount;)V
    .locals 1
    .parameter "path"
    .parameter "account"

    .prologue
    .line 73
    new-instance v0, Lcom/instagram/flickr/FlickrAccount$1;

    invoke-direct {v0, p0, p1}, Lcom/instagram/flickr/FlickrAccount$1;-><init>(Ljava/lang/String;Lcom/instagram/flickr/FlickrAccount;)V

    invoke-virtual {v0}, Lcom/instagram/flickr/FlickrAccount$1;->perform()V

    .line 81
    return-void
.end method

.method public static remove(Z)V
    .locals 2
    .parameter "clearTokenOnServer"

    .prologue
    .line 38
    if-eqz p0, :cond_0

    .line 39
    invoke-static {}, Lcom/instagram/flickr/FlickrAccount;->performClearTokenRequest()V

    .line 42
    :cond_0
    invoke-static {}, Lcom/instagram/flickr/FlickrAccount;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    const-string v1, "oauth_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    const-string v1, "oauth_secret"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    return-void
.end method

.method public static store(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/flickr/FlickrAccount;
    .locals 2
    .parameter "key"
    .parameter "secret"

    .prologue
    .line 51
    invoke-static {}, Lcom/instagram/flickr/FlickrAccount;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    const-string v1, "oauth_token"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    const-string v1, "oauth_secret"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    invoke-static {}, Lcom/instagram/flickr/FlickrAccount;->performStoreTokenRequest()V

    .line 59
    invoke-static {}, Lcom/instagram/flickr/FlickrAccount;->get()Lcom/instagram/flickr/FlickrAccount;

    move-result-object v0

    return-object v0
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
    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    const-string v1, "share_to_flickr"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "flickr_access_token_key"

    invoke-virtual {p0}, Lcom/instagram/flickr/FlickrAccount;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "flickr_access_token_secret"

    invoke-virtual {p0}, Lcom/instagram/flickr/FlickrAccount;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-object v0
.end method
