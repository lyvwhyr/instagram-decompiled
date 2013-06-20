.class public Lcom/instagram/android/login/helper/LogoutHelper;
.super Ljava/lang/Object;
.source "LogoutHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcastLogout()V
    .locals 3

    .prologue
    .line 35
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.instagram.android.activity.BROADCAST_LOGOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 38
    return-void
.end method

.method public static executeClientLogout()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/Preferences;->clearLogin()V

    .line 47
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/service/AuthHelper;->clearCurrentUser()V

    .line 50
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/UserPreferences;->clearRecentSearches()V

    .line 53
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->resetLocalAccount()V

    .line 56
    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 57
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/fragment/MainFeedFragment;->getCachedHomeFeedFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 64
    :cond_0
    return-void
.end method

.method public static forceLogoutSynchronously()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/instagram/android/login/helper/LogoutHelper;->executeClientLogout()V

    .line 28
    invoke-static {}, Lcom/instagram/android/login/helper/LogoutHelper;->broadcastLogout()V

    .line 29
    return-void
.end method
