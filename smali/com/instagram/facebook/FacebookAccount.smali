.class public Lcom/instagram/facebook/FacebookAccount;
.super Ljava/lang/Object;
.source "FacebookAccount.java"


# static fields
.field public static final OpenGraphActionLike:I = 0x0

.field private static final PREF_FILE:Ljava/lang/String; = "facebookPreferences"

.field private static final PREF_KEY_ACCESS_EXPIRES:Ljava/lang/String; = "access_expires"

.field private static final PREF_KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final PREF_KEY_IS_SHARING_LIKES:Ljava/lang/String; = "is_sharing_likes"

.field private static final PREF_KEY_PAGE_ACCESS_TOKEN:Ljava/lang/String; = "page_access_token"

.field private static final PREF_KEY_PAGE_ID:Ljava/lang/String; = "page_id"

.field private static final PREF_KEY_PAGE_NAME:Ljava/lang/String; = "page_name"

.field private static sFacebook:Lcom/facebook/a/b;

.field private static sStoreTokenRequestQueued:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/facebook/FacebookAccount;->sFacebook:Lcom/facebook/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/api/RequestParams;Ljava/lang/String;)Lcom/instagram/api/RequestParams;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-static {p0, p1}, Lcom/instagram/facebook/FacebookAccount;->constructParams(Lcom/instagram/api/RequestParams;Ljava/lang/String;)Lcom/instagram/api/RequestParams;

    move-result-object v0

    return-object v0
.end method

.method public static clearPageToken()V
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    const-string v1, "page_access_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    const-string v1, "page_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    const-string v1, "page_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    return-void
.end method

.method private static constructParams(Lcom/instagram/api/RequestParams;Ljava/lang/String;)Lcom/instagram/api/RequestParams;
    .locals 2
    .parameter "params"
    .parameter "accessToken"

    .prologue
    .line 120
    const-string v0, "fb_access_token"

    invoke-virtual {p0, v0, p1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "share_to_facebook"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "fb_has_publish_actions"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-object p0
.end method

.method public static deleteCredentials(Z)V
    .locals 3
    .parameter "clearTokenOnServer"

    .prologue
    .line 41
    if-eqz p0, :cond_0

    .line 42
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->performClearTokenRequest()V

    .line 45
    :cond_0
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/a/b;->a(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/a/b;->a(J)V

    .line 49
    return-void
.end method

.method public static getAccountParams()Lcom/instagram/api/RequestParams;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/instagram/api/RequestParams;

    invoke-direct {v0}, Lcom/instagram/api/RequestParams;-><init>()V

    .line 128
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/facebook/FacebookAccount;->constructParams(Lcom/instagram/api/RequestParams;Ljava/lang/String;)Lcom/instagram/api/RequestParams;

    move-result-object v0

    return-object v0
.end method

.method public static getFacebook()Lcom/facebook/a/b;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/instagram/facebook/FacebookAccount;->sFacebook:Lcom/facebook/a/b;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/facebook/a/b;

    invoke-static {}, Lcom/instagram/facebook/FacebookConstants;->getFacebookAppId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/a/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/facebook/FacebookAccount;->sFacebook:Lcom/facebook/a/b;

    .line 35
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->loadCredentials()V

    .line 37
    :cond_0
    sget-object v0, Lcom/instagram/facebook/FacebookAccount;->sFacebook:Lcom/facebook/a/b;

    return-object v0
.end method

.method public static getPageAccount()Lcom/instagram/android/model/FacebookPostingAccount;
    .locals 4

    .prologue
    .line 157
    new-instance v0, Lcom/instagram/android/model/FacebookPostingAccount;

    invoke-direct {v0}, Lcom/instagram/android/model/FacebookPostingAccount;-><init>()V

    .line 158
    const-string v1, "facebookPreferences"

    invoke-static {v1}, Lcom/instagram/util/PreferenceUtil;->getUserSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 159
    const-string v2, "page_access_token"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/android/model/FacebookPostingAccount;->setAccessToken(Ljava/lang/String;)V

    .line 160
    const-string v2, "page_name"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/android/model/FacebookPostingAccount;->setName(Ljava/lang/String;)V

    .line 161
    const-string v2, "page_id"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/FacebookPostingAccount;->setId(Ljava/lang/String;)V

    .line 162
    return-object v0
.end method

.method private static getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 132
    const-string v0, "facebookPreferences"

    invoke-static {v0}, Lcom/instagram/util/PreferenceUtil;->getUserSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static hasPageToken()Z
    .locals 2

    .prologue
    .line 166
    const-string v0, "facebookPreferences"

    invoke-static {v0}, Lcom/instagram/util/PreferenceUtil;->getUserSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    const-string v1, "page_access_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasQueuedStoreTokenRequest()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/instagram/facebook/FacebookAccount;->sStoreTokenRequestQueued:Z

    return v0
.end method

.method private static isNewToken()Z
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "access_token"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    :cond_0
    const/4 v0, 0x1

    .line 89
    :cond_1
    return v0
.end method

.method public static isSharingLikes()Z
    .locals 3

    .prologue
    .line 136
    const-string v0, "facebookPreferences"

    invoke-static {v0}, Lcom/instagram/util/PreferenceUtil;->getUserSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    const-string v1, "is_sharing_likes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static loadCredentials()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 52
    const-string v0, "facebookPreferences"

    invoke-static {v0}, Lcom/instagram/util/PreferenceUtil;->getUserSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    const-string v1, "access_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v2, "access_expires"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 56
    if-eqz v1, :cond_0

    .line 57
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/a/b;->a(Ljava/lang/String;)V

    .line 60
    :cond_0
    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 61
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/a/b;->a(J)V

    .line 63
    :cond_1
    return-void
.end method

.method private static performClearTokenRequest()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "fb/clear_token/"

    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/facebook/FacebookAccount;->performTokenRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static performStoreTokenRequest()V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/facebook/FacebookAccount;->sStoreTokenRequestQueued:Z

    .line 102
    const-string v0, "fb/store_token/"

    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/facebook/FacebookAccount;->performTokenRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method private static performTokenRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "accessToken"

    .prologue
    .line 110
    new-instance v0, Lcom/instagram/facebook/FacebookAccount$1;

    invoke-direct {v0, p0, p1}, Lcom/instagram/facebook/FacebookAccount$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/facebook/FacebookAccount$1;->perform()V

    .line 116
    return-void
.end method

.method private static queueStoreTokenRequest()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/facebook/FacebookAccount;->sStoreTokenRequestQueued:Z

    .line 98
    return-void
.end method

.method public static resetLocalAccount()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/facebook/FacebookAccount;->sFacebook:Lcom/facebook/a/b;

    .line 180
    return-void
.end method

.method public static saveCredentials()V
    .locals 5

    .prologue
    .line 66
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->isNewToken()Z

    move-result v1

    .line 69
    const-string v2, "access_token"

    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    const-string v2, "access_expires"

    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/a/b;->d()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->performStoreTokenRequest()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->queueStoreTokenRequest()V

    goto :goto_0
.end method

.method public static setPageToken(Lcom/instagram/android/model/FacebookPostingAccount;)V
    .locals 3
    .parameter "page"

    .prologue
    .line 171
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    const-string v1, "page_access_token"

    invoke-virtual {p0}, Lcom/instagram/android/model/FacebookPostingAccount;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    const-string v1, "page_id"

    invoke-virtual {p0}, Lcom/instagram/android/model/FacebookPostingAccount;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    const-string v1, "page_name"

    invoke-virtual {p0}, Lcom/instagram/android/model/FacebookPostingAccount;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    return-void
.end method
