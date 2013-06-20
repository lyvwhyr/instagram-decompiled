.class public Lcom/instagram/android/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field public static final MEDIA_MODE_CAMCORDER:I = 0x0

.field public static final MEDIA_MODE_CAMERA:I = 0x1

.field public static final PREFERENCES_SERVICE:Ljava/lang/String; = "com.instagram.android.Preferences"

.field private static final PREFERENCE_ADVANCED_CAMERA_ENABLED:Ljava/lang/String; = "advanced_camera_enabled"

.field private static final PREFERENCE_ADVANCED_RESIZE_ENABLED:Ljava/lang/String; = "advanced_resize_enabled"

.field private static final PREFERENCE_CURRENT_USER:Ljava/lang/String; = "current"

.field private static final PREFERENCE_CURRENT_USER_ID:Ljava/lang/String; = "id"

.field private static final PREFERENCE_CURRENT_VERSION:Ljava/lang/String; = "current_version"

.field private static final PREFERENCE_DOUBLE_TAP_TO_LIKE_HINT_IMPRESSIONS:Ljava/lang/String; = "used_double_tap_hint_impressions"

.field private static final PREFERENCE_HAS_USED_DOUBLE_TAP_TO_LIKE:Ljava/lang/String; = "used_double_tap"

.field private static final PREFERENCE_LAST_MEDIA_MODE:Ljava/lang/String; = "media_mode"

.field private static final PREFERENCE_PUSH_REGISTRATION_DATE:Ljava/lang/String; = "push_reg_date"

.field private static final PREFERENCE_SYSTEM_MESSAGES:Ljava/lang/String; = "system_message_"

.field private static final PREFERENCE_UNIQUE_ID:Ljava/lang/String; = "unique_id"

.field private static final PREFERENCE_USERS_THAT_HAVE_SIGNED_IN:Ljava/lang/String; = "users_that_have_signed_in"

.field private static final PREFERENCE_USER_ID:Ljava/lang/String; = "id"

.field private static final PREFERENCE_USER_NAME:Ljava/lang/String; = "user_name"

.field private static final PREFERENCE_VIDEO_ENABLED:Ljava/lang/String; = "advanced_video_enabled"

.field private static final TAG:Ljava/lang/String; = "Preferences"

.field private static final TWO_DAYS:J = 0xa4cb800L

.field private static sUniqueID:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/android/Preferences;->sUniqueID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/instagram/android/Preferences;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    .line 71
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    const-string v0, "com.instagram.android.Preferences"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/Preferences;

    .line 57
    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 59
    const-string v0, "com.instagram.android.Preferences"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/Preferences;

    .line 61
    :cond_0
    if-nez v0, :cond_1

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ApiHttpClient not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    return-object v0
.end method

.method private getSystemMessageKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "messageKey"

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system_message_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearLogin()V
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/PersistentCookieStore;->getInstance(Landroid/content/Context;)Lcom/instagram/api/PersistentCookieStore;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/instagram/api/PersistentCookieStore;->clear()V

    .line 240
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 241
    invoke-virtual {p0, v0}, Lcom/instagram/android/Preferences;->clearUser(Landroid/content/SharedPreferences$Editor;)V

    .line 242
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    return-void
.end method

.method public clearUser(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter "editor"

    .prologue
    .line 246
    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 247
    return-void
.end method

.method public containsVideoEnabledKey()Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "advanced_video_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCurrentUserData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "current"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleTappedToLikeHintImpressions()I
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "used_double_tap_hint_impressions"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHasAdvancedCameraEnabled()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/Preferences;->getHasAdvancedCameraEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public getHasAdvancedCameraEnabled(Z)Z
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "advanced_camera_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHasAdvancedResizeEnabled()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/Preferences;->getHasAdvancedResizeEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public getHasAdvancedResizeEnabled(Z)Z
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "advanced_resize_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHasUsedDoubleTapToLike()Z
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "used_double_tap"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHasVideoEnabled(Z)Z
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "advanced_video_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastInstalledVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "current_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastMediaMode()I
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "media_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSystemMessageTime(Ljava/lang/String;)Ljava/lang/Float;
    .locals 3
    .parameter "messageKey"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1}, Lcom/instagram/android/Preferences;->getSystemMessageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const/high16 v2, -0x4080

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 143
    :cond_0
    return-object v0
.end method

.method public declared-synchronized getUniqueId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/instagram/android/Preferences;->sUniqueID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "unique_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/Preferences;->sUniqueID:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/instagram/android/Preferences;->sUniqueID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/Preferences;->sUniqueID:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    const-string v1, "unique_id"

    sget-object v2, Lcom/instagram/android/Preferences;->sUniqueID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    :cond_0
    sget-object v0, Lcom/instagram/android/Preferences;->sUniqueID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUsersThatHaveSignedIn()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "users_that_have_signed_in"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    :try_start_0
    invoke-static {v0}, Lcom/instagram/android/model/User;->getUserListFromSerializedData(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 198
    :try_start_1
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/UserStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/UserStore;

    move-result-object v2

    .line 199
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 200
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/instagram/android/service/UserStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Lcom/instagram/android/service/UserStore;->put(Ljava/lang/String;Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 207
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    .line 206
    goto :goto_1

    .line 204
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/instagram/android/Preferences;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPushExpired()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 131
    iget-object v1, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "push_reg_date"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "push_reg_date"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0xa4cb800

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveInstallVersion()V
    .locals 3

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 104
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "current_version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCurrentUserData(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    return-void
.end method

.method public setDoubleTappedToLikeHintImpressions(I)V
    .locals 2
    .parameter "numberOfImpressions"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "used_double_tap_hint_impressions"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    return-void
.end method

.method public setHasAdvancedCameraEnabled(Z)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "advanced_camera_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 164
    return v0
.end method

.method public setHasAdvancedResizeEnabled(Z)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "advanced_resize_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 189
    return v0
.end method

.method public setHasUsedDoubleTapToLike(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "used_double_tap"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    return-void
.end method

.method public setHasVideoEnabled(Z)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "advanced_video_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public setLastMediaMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "media_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    return-void
.end method

.method public setPushRegistrationDate(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "push_reg_date"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 128
    return-void
.end method

.method public setSystemMessageTime(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 3
    .parameter "messageKey"
    .parameter "thisTime"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/instagram/android/Preferences;->getSystemMessageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    return-void
.end method

.method public setUsersThatHaveSignedIn(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, usersThatHaveSignedIn:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/User;>;"
    const/4 v0, 0x0

    .line 213
    :try_start_0
    invoke-static {p1}, Lcom/instagram/android/model/User;->getUserListSerialized(Ljava/util/ArrayList;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 218
    :goto_0
    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "users_that_have_signed_in"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    :goto_1
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "users_that_have_signed_in"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 214
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public storeUser(Lcom/instagram/android/model/User;)Z
    .locals 3
    .parameter "user"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/instagram/android/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 251
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    return v0

    .line 255
    :cond_1
    const-string v0, "id"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    const-string v0, "user_name"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    const/4 v0, 0x1

    goto :goto_0
.end method
