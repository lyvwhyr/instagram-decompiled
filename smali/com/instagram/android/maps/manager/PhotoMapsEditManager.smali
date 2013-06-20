.class public Lcom/instagram/android/maps/manager/PhotoMapsEditManager;
.super Ljava/lang/Object;
.source "PhotoMapsEditManager.java"


# static fields
.field private static final GENERAL_PREF_FILE:Ljava/lang/String; = "PhotoMapsEditManagerGeneralPrefs"

.field public static final INTENT_ACTION_MAP_REVIEWED:Ljava/lang/String; = "com.instagram.android.maps.manager.MapReviewed"

.field private static final ITEM_MAP_FILE:Ljava/lang/String; = "PhotoMapsEditManagerItemMap"

.field private static final PREF_ON_OFF:Ljava/lang/String; = "MapsPrefOnOff"

.field private static sEditManagerPhoto:Lcom/instagram/android/maps/manager/PhotoMapsEditManager;


# instance fields
.field private mEditing:Z

.field private mEditingResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneralPrefs:Landroid/content/SharedPreferences;

.field private mGeophotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;"
        }
    .end annotation
.end field

.field private mItemMap:Landroid/content/SharedPreferences;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMapsChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

.field private mMapsModeChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;

.field private mModeChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMostRecentUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v2, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mEditing:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mListeners:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mModeChangeListeners:Ljava/util/List;

    .line 46
    const-string v0, "PhotoMapsEditManagerItemMap"

    invoke-static {v0}, Lcom/instagram/util/PreferenceUtil;->getUserSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    .line 47
    const-string v0, "PhotoMapsEditManagerGeneralPrefs"

    invoke-static {v0}, Lcom/instagram/util/PreferenceUtil;->getUserSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mGeneralPrefs:Landroid/content/SharedPreferences;

    .line 48
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mGeneralPrefs:Landroid/content/SharedPreferences;

    const-string v1, "MapsPrefOnOff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mEditing:Z

    .line 50
    new-instance v0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$1;-><init>(Lcom/instagram/android/maps/manager/PhotoMapsEditManager;)V

    iput-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMapsChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    .line 59
    new-instance v0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$2;-><init>(Lcom/instagram/android/maps/manager/PhotoMapsEditManager;)V

    iput-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMapsModeChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/maps/manager/PhotoMapsEditManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/maps/manager/PhotoMapsEditManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mModeChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->sEditManagerPhoto:Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    invoke-direct {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;-><init>()V

    sput-object v0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->sEditManagerPhoto:Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    .line 74
    :cond_0
    sget-object v0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->sEditManagerPhoto:Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    return-object v0
.end method

.method private setFlagForAllMedia(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 227
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 230
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMapsChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMapsChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    invoke-interface {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;->mapsChanged()V

    .line 234
    :cond_1
    return-void
.end method

.method private setPublishFlag(Ljava/util/Collection;Z)V
    .locals 3
    .parameter
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, geoPhotos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/instagram/android/model/GeoMedia;>;"
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 103
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    .line 104
    invoke-virtual {v0}, Lcom/instagram/android/model/GeoMedia;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMapsChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMapsChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    invoke-interface {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;->mapsChanged()V

    .line 110
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public addModeChangeListener(Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mModeChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public addPublishFlag(Lcom/instagram/android/model/GeoMedia;)V
    .locals 3
    .parameter "geoPhoto"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/GeoMedia;->getMediaId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMapsChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMapsChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    invoke-interface {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;->mapsChanged()V

    .line 125
    :cond_0
    return-void
.end method

.method public addPublishFlag(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, geoPhotos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/instagram/android/model/GeoMedia;>;"
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 129
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    .line 130
    invoke-virtual {v0}, Lcom/instagram/android/model/GeoMedia;->getMediaId()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 132
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMapsChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMapsChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    invoke-interface {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;->mapsChanged()V

    .line 136
    :cond_1
    return-void
.end method

.method public getCurrentlyDeletedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mGeophotos:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->photosToBeDeleted(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMostRecentUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMostRecentUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getNumToBeAdded()I
    .locals 3

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    iget-object v1, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 253
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 256
    goto :goto_0

    .line 257
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getNumToBeRemoved()I
    .locals 3

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    iget-object v1, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 243
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 246
    goto :goto_0

    .line 247
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isAnyOfThesePhotosRemoved(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, photos:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;"
    const/4 v1, 0x1

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    .line 263
    iget-object v3, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Lcom/instagram/android/model/GeoMedia;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 267
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEditing()Z
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMostRecentUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mEditing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mGeophotos:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, geoPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;"
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    iput-object p1, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mGeophotos:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    .line 89
    invoke-virtual {v0}, Lcom/instagram/android/model/GeoMedia;->getMediaId()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void
.end method

.method public markEditSuccessful()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mGeophotos:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->photosToBePublished(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mEditingResult:Ljava/util/List;

    .line 272
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.instagram.android.maps.manager.MapReviewed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 273
    return-void
.end method

.method public photosToBeDeleted(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, photos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/instagram/android/model/GeoMedia;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    .line 151
    iget-object v3, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Lcom/instagram/android/model/GeoMedia;->getMediaId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_1
    return-object v1
.end method

.method public photosToBePublished(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, photos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/instagram/android/model/GeoMedia;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    .line 141
    iget-object v3, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Lcom/instagram/android/model/GeoMedia;->getMediaId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_1
    return-object v1
.end method

.method public removeAllPublishFlag()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->setFlagForAllMedia(Z)V

    .line 218
    return-void
.end method

.method public removeListener(Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;)V
    .locals 1
    .parameter "mapsEditManagerChangeListener"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public removeModeChangeListener(Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;)V
    .locals 1
    .parameter "mapsEditManagerModeChangeListener"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mModeChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public removePublishFlag(Lcom/instagram/android/model/GeoMedia;)V
    .locals 3
    .parameter "geoPhoto"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/GeoMedia;->getMediaId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMapsChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMapsChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    invoke-interface {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;->mapsChanged()V

    .line 99
    :cond_0
    return-void
.end method

.method public removePublishFlag(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, geoPhotos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/instagram/android/model/GeoMedia;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->setPublishFlag(Ljava/util/Collection;Z)V

    .line 114
    return-void
.end method

.method public reverse(Lcom/instagram/android/model/GeoMedia;)V
    .locals 1
    .parameter "media"

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->willBePublished(Lcom/instagram/android/model/GeoMedia;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->removePublishFlag(Lcom/instagram/android/model/GeoMedia;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->addPublishFlag(Lcom/instagram/android/model/GeoMedia;)V

    goto :goto_0
.end method

.method public reverseAllPublishFlag()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->setFlagForAllMedia(Z)V

    .line 223
    return-void
.end method

.method public reversePublishFlag(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, geoPhotos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/instagram/android/model/GeoMedia;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->setPublishFlag(Ljava/util/Collection;Z)V

    .line 118
    return-void
.end method

.method public setEditMode(Z)V
    .locals 2
    .parameter "editMode"

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mEditing:Z

    .line 184
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mGeneralPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MapsPrefOnOff"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    iget-boolean v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mEditing:Z

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMapsChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMapsChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    invoke-interface {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;->mapsChanged()V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMapsModeChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMapsModeChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;

    invoke-interface {v0, p1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;->modeChange(Z)V

    .line 196
    :cond_2
    return-void
.end method

.method public setMostRecentMapsUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "mostRecentUserId"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mMostRecentUserId:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public takeEditingResult()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mEditingResult:Ljava/util/List;

    .line 277
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mEditingResult:Ljava/util/List;

    .line 278
    return-object v0
.end method

.method public willBePublished(Lcom/instagram/android/model/GeoMedia;)Z
    .locals 3
    .parameter "media"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mItemMap:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/instagram/android/model/GeoMedia;->getMediaId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
