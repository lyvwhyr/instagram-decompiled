.class public Lcom/instagram/tumblr/TumblrAccount;
.super Lcom/instagram/oauth/OAuthAccount;
.source "TumblrAccount.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "secret"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/instagram/oauth/OAuthAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/instagram/tumblr/TumblrAccount;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-static {p0}, Lcom/instagram/tumblr/TumblrAccount;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 21
    const-string v2, "oauth_token"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    const-string v3, "oauth_secret"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/instagram/tumblr/TumblrAccount;

    invoke-direct {v0, v2, v1}, Lcom/instagram/tumblr/TumblrAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    const-string v0, "tumblrPreferences"

    invoke-static {v0}, Lcom/instagram/util/PreferenceUtil;->getUserSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isConfigured(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    invoke-static {p0}, Lcom/instagram/tumblr/TumblrAccount;->get(Landroid/content/Context;)Lcom/instagram/tumblr/TumblrAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static remove(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/instagram/tumblr/TumblrAccount;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    const-string v1, "oauth_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    const-string v1, "oauth_secret"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method public static store(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/tumblr/TumblrAccount;
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "secret"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/instagram/tumblr/TumblrAccount;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    const-string v1, "oauth_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    const-string v1, "oauth_secret"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    invoke-static {p0}, Lcom/instagram/tumblr/TumblrAccount;->get(Landroid/content/Context;)Lcom/instagram/tumblr/TumblrAccount;

    move-result-object v0

    return-object v0
.end method
