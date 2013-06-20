.class public Lcom/instagram/android/service/PendingMediaStore;
.super Ljava/lang/Object;
.source "PendingMediaStore.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final FILENAME:Ljava/lang/String; = "pending_media.json"

.field public static final INTENT_ACTION_PENDING_MEDIA_CHANGED:Ljava/lang/String; = "com.instagram.android.PendingMediaStore.INTENT_ACTION_PENDING_MEDIA_CHANGED"

.field private static final TAG:Ljava/lang/String; = "PendingMediaStore"

.field private static sInstance:Lcom/instagram/android/service/PendingMediaStore;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final mPendingMediaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/android/model/PendingMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mPendingMediaMap:Ljava/util/Map;

    .line 77
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/service/PendingMediaStore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/instagram/android/service/PendingMediaStore;->deserialize()V

    return-void
.end method

.method private static declared-synchronized createInstance()V
    .locals 2

    .prologue
    .line 62
    const-class v1, Lcom/instagram/android/service/PendingMediaStore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/android/service/PendingMediaStore;->sInstance:Lcom/instagram/android/service/PendingMediaStore;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/instagram/android/service/PendingMediaStore;

    invoke-direct {v0}, Lcom/instagram/android/service/PendingMediaStore;-><init>()V

    sput-object v0, Lcom/instagram/android/service/PendingMediaStore;->sInstance:Lcom/instagram/android/service/PendingMediaStore;

    .line 67
    sget-object v0, Lcom/instagram/android/service/PendingMediaStore;->sInstance:Lcom/instagram/android/service/PendingMediaStore;

    invoke-direct {v0}, Lcom/instagram/android/service/PendingMediaStore;->deserializeAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit v1

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private deserialize()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 243
    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mContext:Landroid/content/Context;

    const-string v2, "pending_media.json"

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 251
    :goto_0
    if-nez v2, :cond_0

    .line 284
    :goto_1
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string v0, "PendingMediaStore"

    const-string v2, "No serialized pending media file found, pending_media.json"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Lcom/instagram/android/service/PendingMediaStore$3;

    invoke-direct {v0, p0}, Lcom/instagram/android/service/PendingMediaStore$3;-><init>(Lcom/instagram/android/service/PendingMediaStore;)V

    .line 262
    :try_start_1
    invoke-direct {p0}, Lcom/instagram/android/service/PendingMediaStore;->getMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 274
    :goto_2
    if-eqz v0, :cond_2

    .line 275
    const-string v1, "PendingMediaStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading serialized pending media list, size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/PendingMedia;

    .line 277
    if-eqz v0, :cond_1

    .line 278
    iget-object v2, p0, Lcom/instagram/android/service/PendingMediaStore;->mPendingMediaMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 263
    :catch_1
    move-exception v0

    .line 264
    :try_start_3
    const-string v3, "PendingMediaStore"

    const-string v4, "Failed to decode pending_media.json, deleting file."

    invoke-static {v3, v4, v0}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mContext:Landroid/content/Context;

    const-string v3, "pending_media.json"

    invoke-virtual {v0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .line 270
    goto :goto_2

    .line 269
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 271
    goto :goto_2

    .line 267
    :catchall_0
    move-exception v0

    .line 268
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 270
    :goto_4
    throw v0

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/service/PendingMediaStore;->sendPendingMediaChangeBroadcast()V

    goto :goto_1

    .line 269
    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_4
.end method

.method private deserializeAsync()V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/instagram/android/service/PendingMediaStore$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/service/PendingMediaStore$2;-><init>(Lcom/instagram/android/service/PendingMediaStore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 239
    return-void
.end method

.method public static getInstance()Lcom/instagram/android/service/PendingMediaStore;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/instagram/android/service/PendingMediaStore;->sInstance:Lcom/instagram/android/service/PendingMediaStore;

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lcom/instagram/android/service/PendingMediaStore;->createInstance()V

    .line 58
    :cond_0
    sget-object v0, Lcom/instagram/android/service/PendingMediaStore;->sInstance:Lcom/instagram/android/service/PendingMediaStore;

    return-object v0
.end method

.method private getMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 4

    .prologue
    .line 287
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    const-string v1, "PendingMediaModule"

    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;)V

    .line 290
    const-class v1, Lcom/instagram/android/model/PendingMedia;

    new-instance v2, Lcom/instagram/android/model/serialization/PendingMediaSerializer;

    invoke-direct {v2}, Lcom/instagram/android/model/serialization/PendingMediaSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 291
    const-class v1, Lcom/instagram/android/location/Venue;

    new-instance v2, Lcom/instagram/android/model/serialization/VenueSerializer;

    invoke-direct {v2}, Lcom/instagram/android/model/serialization/VenueSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 292
    const-class v1, Lcom/instagram/android/people/model/PeopleTag;

    new-instance v2, Lcom/instagram/android/people/model/serialization/PeopleTagSerializer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/instagram/android/people/model/serialization/PeopleTagSerializer;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 293
    const-class v1, Lcom/instagram/android/video/api/VideoUploadUrl;

    new-instance v2, Lcom/instagram/android/model/serialization/VideoUploadUrlSerializer;

    invoke-direct {v2}, Lcom/instagram/android/model/serialization/VideoUploadUrlSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 295
    const-class v1, Lcom/instagram/android/model/PendingMedia;

    new-instance v2, Lcom/instagram/android/model/serialization/PendingMediaDeserializer;

    invoke-direct {v2}, Lcom/instagram/android/model/serialization/PendingMediaDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 296
    const-class v1, Lcom/instagram/android/location/Venue;

    new-instance v2, Lcom/instagram/android/model/serialization/VenueDeserializer;

    invoke-direct {v2}, Lcom/instagram/android/model/serialization/VenueDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 297
    const-class v1, Lcom/instagram/android/people/model/PeopleTag;

    new-instance v2, Lcom/instagram/android/people/model/serialization/PeopleTagDeserializer;

    invoke-direct {v2}, Lcom/instagram/android/people/model/serialization/PeopleTagDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 298
    const-class v1, Lcom/instagram/android/video/api/VideoUploadUrl;

    new-instance v2, Lcom/instagram/android/model/serialization/VideoUploadUrlDeserializer;

    invoke-direct {v2}, Lcom/instagram/android/model/serialization/VideoUploadUrlDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 300
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/instagram/android/model/PendingMedia;
    .locals 1
    .parameter "mediaKey"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mPendingMediaMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/PendingMedia;

    return-object v0
.end method

.method public getDisplayableMedia()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/PendingMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mPendingMediaMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mPendingMediaMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/PendingMedia;

    .line 148
    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getTargetStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v3

    sget-object v4, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    if-ne v3, v4, :cond_0

    .line 149
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_1
    return-object v1
.end method

.method public isFinishedRendering()Z
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mPendingMediaMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/PendingMedia;

    .line 161
    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v2

    sget-object v3, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getVideoFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method put(Ljava/lang/String;Lcom/instagram/android/model/PendingMedia;)V
    .locals 1
    .parameter "mediaKey"
    .parameter "media"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mPendingMediaMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p0}, Lcom/instagram/android/service/PendingMediaStore;->sendPendingMediaChangeBroadcast()V

    .line 99
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 4
    .parameter "mediaKey"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mPendingMediaMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/PendingMedia;

    .line 109
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/instagram/android/service/PendingMediaStore;->sendPendingMediaChangeBroadcast()V

    .line 112
    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v1, v2, :cond_0

    .line 113
    const-string v1, "PendingMediaStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished configure, render is done, deleting clips & stitched file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getVideoSessionPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getVideoSessionPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/instagram/android/video/util/VideoFileUtil;->deleteFiles(Ljava/lang/String;Z)V

    .line 119
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getImageFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 124
    :cond_1
    return-void
.end method

.method removeUnconfiguredMedia()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mPendingMediaMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 132
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getTargetStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v0

    sget-object v2, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    if-eq v0, v2, :cond_0

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 138
    :cond_1
    return-void
.end method

.method sendPendingMediaChangeBroadcast()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.instagram.android.PendingMediaStore.INTENT_ACTION_PENDING_MEDIA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/instagram/android/service/PendingMediaStore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 172
    return-void
.end method

.method declared-synchronized serialize()V
    .locals 5

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mContext:Landroid/content/Context;

    const-string v1, "pending_media.json"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mPendingMediaMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/PendingMedia;

    .line 197
    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getServerStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v3

    sget-object v4, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    if-eq v3, v4, :cond_0

    .line 198
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 230
    :goto_1
    monitor-exit p0

    return-void

    .line 208
    :cond_2
    const/4 v1, 0x0

    .line 210
    :try_start_2
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaStore;->mContext:Landroid/content/Context;

    const-string v3, "pending_media.json"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 215
    :goto_2
    if-nez v1, :cond_3

    .line 216
    :try_start_3
    const-string v0, "PendingMediaStore"

    const-string v1, "Failed to acquire output stream for pending_media.json"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string v3, "PendingMediaStore"

    const-string v4, "File not found wile getting output stream for pending_media.json"

    invoke-static {v3, v4, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 221
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/instagram/android/service/PendingMediaStore;->getMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 226
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 227
    :catch_1
    move-exception v0

    goto :goto_1

    .line 222
    :catch_2
    move-exception v0

    .line 223
    :try_start_6
    const-string v2, "PendingMediaStore"

    const-string v3, "Exception while writing out pending_media.json"

    invoke-static {v2, v3, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 226
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 227
    :catch_3
    move-exception v0

    goto :goto_1

    .line 225
    :catchall_1
    move-exception v0

    .line 226
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 228
    :goto_3
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 227
    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method serializeAsync()V
    .locals 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/instagram/android/service/PendingMediaStore$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/service/PendingMediaStore$1;-><init>(Lcom/instagram/android/service/PendingMediaStore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    return-void
.end method
