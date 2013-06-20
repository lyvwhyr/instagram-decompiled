.class public Lcom/instagram/android/UserPreferences;
.super Ljava/lang/Object;
.source "UserPreferences.java"


# static fields
.field public static final BROADCAST_UPDATED_SEARCHES:Ljava/lang/String; = "BROADCAST_UPDATED_SEARCHES"

.field private static final CURRENT_VERSION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Preferences"

.field private static final MAX_SAVED_TAGS:I = 0xf

.field private static final MAX_SAVED_USERS:I = 0x5

.field private static final PREFERENCE_BORDERS_ENABLED:Ljava/lang/String; = "borders_enabled"

.field private static final PREFERENCE_FEED_AUTO_PLAY_VIDEO:Ljava/lang/String; = "feed_auto_play_video"

.field private static final PREFERENCE_GEOTAG_ENABLED:Ljava/lang/String; = "geotag_enabled"

.field private static final PREFERENCE_GRIDLINES_ENABLED:Ljava/lang/String; = "gridlines_enabled"

.field private static final PREFERENCE_NEEDS_PEOPLE_TAG_EDUCATION:Ljava/lang/String; = "needs_people_tag_education"

.field private static final PREFERENCE_NEEDS_PHOTO_MAP_EDUCATION:Ljava/lang/String; = "needs_photo_map_education"

.field private static final PREFERENCE_RECENT_HASHTAG_SEARCHES:Ljava/lang/String; = "recent_hashtag_searches"

.field private static final PREFERENCE_RECENT_USER_SEARCHES:Ljava/lang/String; = "recent_user_searches"

.field private static final PREFERENCE_SAVE_ORIGINAL_PHOTOS:Ljava/lang/String; = "save_original_photos"

.field private static final PREFERENCE_VERSION:Ljava/lang/String; = "user_pref_version_number"

.field public static final USER_PREFERENCES:Ljava/lang/String; = "USER_PREFERENCES"

.field private static mInstance:Lcom/instagram/android/UserPreferences;


# instance fields
.field private final mBroadcastManager:Lcom/facebook/b/a/k;

.field private final mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/UserPreferences;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 57
    const-string v0, "USER_PREFERENCES"

    invoke-static {v0}, Lcom/instagram/util/PreferenceUtil;->getUserSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    .line 58
    new-instance v0, Lcom/facebook/b/a/k;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/b/a/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/UserPreferences;->mBroadcastManager:Lcom/facebook/b/a/k;

    .line 59
    invoke-direct {p0}, Lcom/instagram/android/UserPreferences;->checkMigration()V

    .line 60
    return-void
.end method

.method private checkMigration()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 67
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "user_pref_version_number"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v4, :cond_5

    .line 68
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 72
    const-string v2, "borders_enabled"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v2, "borders_enabled"

    const-string v3, "borders_enabled"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    :cond_0
    const-string v2, "recent_user_searches"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    const-string v2, "recent_user_searches"

    const-string v3, "recent_user_searches"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    :cond_1
    const-string v2, "recent_hashtag_searches"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    const-string v2, "recent_hashtag_searches"

    const-string v3, "recent_hashtag_searches"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    :cond_2
    const-string v2, "geotag_enabled"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    const-string v2, "geotag_enabled"

    const-string v3, "geotag_enabled"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 88
    :cond_3
    const-string v2, "needs_photo_map_education"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 89
    const-string v2, "needs_photo_map_education"

    const-string v3, "needs_photo_map_education"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    :cond_4
    const-string v0, "user_pref_version_number"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    :cond_5
    return-void
.end method

.method public static getInstance()Lcom/instagram/android/UserPreferences;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/instagram/android/UserPreferences;->mInstance:Lcom/instagram/android/UserPreferences;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/instagram/android/UserPreferences;

    invoke-direct {v0}, Lcom/instagram/android/UserPreferences;-><init>()V

    sput-object v0, Lcom/instagram/android/UserPreferences;->mInstance:Lcom/instagram/android/UserPreferences;

    .line 264
    :cond_0
    sget-object v0, Lcom/instagram/android/UserPreferences;->mInstance:Lcom/instagram/android/UserPreferences;

    return-object v0
.end method

.method private populateHashtagsFromData(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    const-class v1, Ljava/util/ArrayList;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/instagram/android/UserPreferences;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, p2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p1

    .end local p1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast p1, Ljava/util/ArrayList;

    .line 223
    .restart local p1       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object p1
.end method


# virtual methods
.method public clearRecentSearches()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recent_user_searches"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recent_hashtag_searches"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mBroadcastManager:Lcom/facebook/b/a/k;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "BROADCAST_UPDATED_SEARCHES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/b/a/k;->a(Landroid/content/Intent;)V

    .line 183
    invoke-static {}, Lcom/instagram/android/service/AutoCompleteHashtagService;->clear()V

    .line 184
    return-void
.end method

.method public getFeedAutoPlayVideos()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 244
    invoke-static {}, Lcom/instagram/android/video/util/VideoUtil;->needsLegacyVideoPlayer()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "feed_auto_play_video"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHasBordersEnabled()Z
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "borders_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHasGeotagEnabled()Z
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "geotag_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHasGridlinesEnabled()Z
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "gridlines_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRecentHashtagSearches()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 164
    const/4 v1, 0x0

    .line 165
    iget-object v2, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "recent_hashtag_searches"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    if-eqz v2, :cond_0

    .line 168
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/instagram/android/UserPreferences;->populateHashtagsFromData(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    :cond_0
    :goto_0
    return-object v0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    const-string v1, "Preferences"

    const-string v2, "Error reading from recent hash tags. Clearing results"

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "recent_hashtag_searches"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public getRecentUserSearches()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 115
    .line 116
    iget-object v1, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "recent_user_searches"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/service/UserStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/UserStore;

    move-result-object v3

    .line 119
    if-eqz v1, :cond_0

    .line 120
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :try_start_1
    invoke-static {v1}, Lcom/instagram/android/model/User;->getUserListFromSerializedData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 124
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/instagram/android/service/UserStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/model/User;

    .line 125
    if-nez v1, :cond_1

    .line 126
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Lcom/instagram/android/service/UserStore;->put(Ljava/lang/String;Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;

    .line 130
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 134
    :goto_2
    const-string v1, "Preferences"

    const-string v2, "Error reading from recent users. Clearing results"

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "recent_user_searches"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    :cond_0
    :goto_3
    return-object v0

    .line 128
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/instagram/android/service/UserStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 133
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_3
.end method

.method public getSaveOriginalPhotos()Z
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "save_original_photos"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasSeenPeopleTagEducation()Z
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "needs_people_tag_education"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasSeenPhotoMapEducation()Z
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "needs_photo_map_education"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveRecentHashtag(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xf

    .line 187
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "recent_hashtag_searches"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    const/4 v1, 0x0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/instagram/android/UserPreferences;->populateHashtagsFromData(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 192
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string v0, "Preferences"

    const-string v1, "Error reading from recent hash tags.  Clearing results"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recent_hashtag_searches"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    :goto_1
    return-void

    .line 196
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 201
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "recent_hashtag_searches"

    iget-object v3, p0, Lcom/instagram/android/UserPreferences;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public saveRecentUser(Lcom/instagram/android/model/User;)V
    .locals 4
    .parameter "user"

    .prologue
    const/4 v3, 0x5

    .line 141
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "recent_user_searches"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    :try_start_0
    invoke-static {v0}, Lcom/instagram/android/model/User;->getUserListFromSerializedData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const-string v0, "Preferences"

    const-string v1, "Error reading from recent users. Clearing results"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recent_user_searches"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    :goto_1
    return-void

    .line 150
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 156
    iget-object v1, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "recent_user_searches"

    invoke-static {v0}, Lcom/instagram/android/model/User;->getUserListSerialized(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setFeedAutoPlayVideos(Z)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "feed_auto_play_video"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public setHasBordersEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "borders_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    return-void
.end method

.method public setHasGeotagEnabled(Z)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "geotag_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 211
    return v0
.end method

.method public setHasGridlinesEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gridlines_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method public setHasSeenPeopleTagEducation(Z)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "needs_people_tag_education"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public setHasSeenPhotoMapEducation(Z)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "needs_photo_map_education"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public setSaveOriginalPhotos(Z)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/instagram/android/UserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "save_original_photos"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
