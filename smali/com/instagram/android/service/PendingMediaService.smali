.class public Lcom/instagram/android/service/PendingMediaService;
.super Landroid/app/IntentService;
.source "PendingMediaService.java"


# static fields
.field public static final BROADCAST_INTENT_CHECKPOINT_REQUIRED:Ljava/lang/String; = "com.instagram.android.PendingMediaService.BROADCAST_INTENT_CHECKPOINT_REQUIRED"

.field public static final BROADCAST_INTENT_NEW_MEDIA:Ljava/lang/String; = "com.instagram.android.PendingMediaService.BROADCAST_INTENT_NEW_MEDIA"

.field private static final INTENT_EXTRA_PENDING_MEDIA_KEY:Ljava/lang/String; = "com.instagram.android.PendingMediaService.INTENT_EXTRA_PENDING_MEDIA_ID"

.field private static final INTENT_EXTRA_PERFORM_ACTION:Ljava/lang/String; = "com.instagram.android.PendingMediaService.INTENT_EXTRA_PERFORM_ACTION"

.field private static final PERFORM_ACTION_CANCEL:I = 0x1

.field private static final PERFORM_ACTION_GO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PendingMediaService"

.field private static sNewMediaUploaded:Z

.field private static final sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mExpiredRetry:Z

.field private mFinalRenderController:Lcom/instagram/android/video/render/FinalRenderController;

.field private mHttpClient:Lcom/instagram/api/ApiHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/instagram/android/service/PendingMediaStore;->getInstance()Lcom/instagram/android/service/PendingMediaStore;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/android/service/PendingMediaService;->sNewMediaUploaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "PendingMediaService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/instagram/android/service/PendingMediaService$ServiceBinder;

    invoke-direct {v0, p0}, Lcom/instagram/android/service/PendingMediaService$ServiceBinder;-><init>(Lcom/instagram/android/service/PendingMediaService;)V

    iput-object v0, p0, Lcom/instagram/android/service/PendingMediaService;->mBinder:Landroid/os/IBinder;

    .line 81
    return-void
.end method

.method public static cancel(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V
    .locals 1
    .parameter "context"
    .parameter "media"

    .prologue
    .line 479
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/instagram/android/service/PendingMediaService;->startService(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;I)V

    .line 480
    return-void
.end method

.method public static configure(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V
    .locals 1
    .parameter "context"
    .parameter "media"

    .prologue
    .line 468
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/service/PendingMediaService;->sNewMediaUploaded:Z

    .line 470
    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setTargetStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    .line 471
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/instagram/android/service/PendingMediaService;->startService(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;I)V

    .line 472
    return-void
.end method

.method private configureMedia(Lcom/instagram/android/model/PendingMedia;)V
    .locals 6
    .parameter "pendingMedia"

    .prologue
    .line 342
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getCaption()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/AutoCompleteHashtagService;->addTagsFromText(Ljava/lang/String;)V

    .line 344
    new-instance v0, Lcom/instagram/api/request/ConfigureMediaRequest;

    invoke-direct {v0, p0, p1}, Lcom/instagram/api/request/ConfigureMediaRequest;-><init>(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V

    .line 345
    const/4 v1, 0x0

    .line 348
    :try_start_0
    iget-object v2, p0, Lcom/instagram/android/service/PendingMediaService;->mHttpClient:Lcom/instagram/api/ApiHttpClient;

    invoke-virtual {v2, v0}, Lcom/instagram/api/ApiHttpClient;->perform(Lcom/instagram/api/request/AbstractRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v2

    .line 349
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    .line 350
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {p0}, Lcom/instagram/android/service/CustomObjectMapper;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v3

    .line 354
    const-class v4, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v3, v0, v4}, Lcom/instagram/android/service/CustomObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 355
    const-string v4, "message"

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    .line 357
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v5, 0xc8

    if-eq v2, v5, :cond_3

    .line 358
    :cond_0
    const-string v2, "PendingMediaService"

    const-string v3, "Bad response from server"

    invoke-static {v2, v3}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v2, "checkpoint_required"

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    const-string v2, "checkpoint_url"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/service/PendingMediaService;->sendCheckpointBroadcast(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 386
    :try_start_1
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 391
    :cond_2
    :goto_1
    return-void

    .line 366
    :cond_3
    if-eqz v4, :cond_5

    :try_start_2
    const-string v2, "media_needs_reupload"

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 367
    invoke-static {p0, p1}, Lcom/instagram/android/service/PendingMediaService;->reupload(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    .line 385
    if-eqz v1, :cond_4

    .line 386
    :try_start_3
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 389
    :cond_4
    :goto_2
    throw v0

    .line 369
    :cond_5
    :try_start_4
    sget-object v2, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-virtual {p1, v2}, Lcom/instagram/android/model/PendingMedia;->setServerStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    .line 371
    const-string v2, "media"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-class v2, Lcom/instagram/android/model/Media;

    invoke-virtual {v3, v0, v2}, Lcom/instagram/android/service/CustomObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media;

    .line 373
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/android/model/Media;->setLocalBitmapUri(Landroid/net/Uri;)V

    .line 376
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v2

    sget-object v3, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v2, v3, :cond_6

    .line 377
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getVideoFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/android/model/Media;->setLocalVideoUri(Ljava/lang/String;)V

    .line 380
    :cond_6
    invoke-direct {p0}, Lcom/instagram/android/service/PendingMediaService;->sendNewMediaBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private handleCancelIntent(Lcom/instagram/android/model/PendingMedia;)V
    .locals 2
    .parameter "media"

    .prologue
    .line 115
    sget-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/PendingMediaStore;->remove(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private handleGoIntent(Lcom/instagram/android/model/PendingMedia;)V
    .locals 2
    .parameter "media"

    .prologue
    const/4 v1, 0x0

    .line 119
    iput-boolean v1, p0, Lcom/instagram/android/service/PendingMediaService;->mExpiredRetry:Z

    .line 122
    sget-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaStore;->serialize()V

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setInProgress(Z)V

    .line 125
    sget-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaStore;->sendPendingMediaChangeBroadcast()V

    .line 127
    invoke-direct {p0, p1}, Lcom/instagram/android/service/PendingMediaService;->handleMedia(Lcom/instagram/android/model/PendingMedia;)V

    .line 131
    iget-boolean v0, p0, Lcom/instagram/android/service/PendingMediaService;->mExpiredRetry:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0, p1}, Lcom/instagram/android/service/PendingMediaService;->handleMedia(Lcom/instagram/android/model/PendingMedia;)V

    .line 135
    :cond_0
    invoke-virtual {p1, v1}, Lcom/instagram/android/model/PendingMedia;->setInProgress(Z)V

    .line 136
    sget-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaStore;->sendPendingMediaChangeBroadcast()V

    .line 137
    return-void
.end method

.method private handleImageMedia(Lcom/instagram/android/model/PendingMedia;)V
    .locals 3
    .parameter "media"

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getServerStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->NOT_UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getTargetStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    invoke-direct {p0, p1}, Lcom/instagram/android/service/PendingMediaService;->uploadImage(Lcom/instagram/android/model/PendingMedia;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getServerStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getTargetStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    if-ne v0, v1, :cond_1

    .line 160
    :try_start_1
    invoke-direct {p0, p1}, Lcom/instagram/android/service/PendingMediaService;->configureMedia(Lcom/instagram/android/model/PendingMedia;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    :cond_1
    :goto_1
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string v1, "PendingMediaService"

    const-string v2, "Media failed upload"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 161
    :catch_1
    move-exception v0

    .line 162
    const-string v1, "PendingMediaService"

    const-string v2, "Media failed configure"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private handleMedia(Lcom/instagram/android/model/PendingMedia;)V
    .locals 2
    .parameter "media"

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v1, :cond_1

    .line 141
    invoke-direct {p0, p1}, Lcom/instagram/android/service/PendingMediaService;->handleImageMedia(Lcom/instagram/android/model/PendingMedia;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v1, :cond_0

    .line 143
    invoke-direct {p0, p1}, Lcom/instagram/android/service/PendingMediaService;->handleVideoMedia(Lcom/instagram/android/model/PendingMedia;)V

    goto :goto_0
.end method

.method private handleVideoMedia(Lcom/instagram/android/model/PendingMedia;)V
    .locals 4
    .parameter "media"

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getServerStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->CREATED_MEDIA:Lcom/instagram/android/model/PendingMedia$Status;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED_VIDEO:Lcom/instagram/android/model/PendingMedia$Status;

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    sget-object v2, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getTargetStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getVideoUploadUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getVideoUploadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getVideoUploadUrls()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/api/VideoUploadUrl;

    invoke-virtual {v0}, Lcom/instagram/android/video/api/VideoUploadUrl;->getExpires()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 178
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setVideoUploadUrls(Ljava/util/List;)V

    .line 179
    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->NOT_UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setServerStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    .line 182
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getServerStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->NOT_UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->CREATED_MEDIA:Lcom/instagram/android/model/PendingMedia$Status;

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED_VIDEO:Lcom/instagram/android/model/PendingMedia$Status;

    sget-object v2, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    sget-object v3, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getTargetStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    :try_start_0
    invoke-direct {p0, p1}, Lcom/instagram/android/service/PendingMediaService;->newVideoRequest(Lcom/instagram/android/model/PendingMedia;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getServerStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->CREATED_MEDIA:Lcom/instagram/android/model/PendingMedia$Status;

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED_VIDEO:Lcom/instagram/android/model/PendingMedia$Status;

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    sget-object v2, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getTargetStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 200
    :try_start_1
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getVideoFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 202
    invoke-direct {p0, p1}, Lcom/instagram/android/service/PendingMediaService;->renderVideo(Lcom/instagram/android/model/PendingMedia;)V

    .line 206
    :cond_3
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getVideoFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 207
    const-string v0, "PendingMediaService"

    const-string v1, "Could not render video"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 244
    :cond_4
    :goto_1
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string v1, "PendingMediaService"

    const-string v2, "Media failed new video request"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 212
    :cond_5
    :try_start_2
    sget-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaStore;->sendPendingMediaChangeBroadcast()V

    .line 214
    new-instance v0, Lcom/instagram/android/service/VideoUploader;

    iget-object v1, p0, Lcom/instagram/android/service/PendingMediaService;->mHttpClient:Lcom/instagram/api/ApiHttpClient;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/service/VideoUploader;-><init>(Landroid/content/Context;Lcom/instagram/api/ApiHttpClient;)V

    .line 215
    invoke-virtual {v0, p1}, Lcom/instagram/android/service/VideoUploader;->upload(Lcom/instagram/android/model/PendingMedia;)Lcom/instagram/android/service/VideoUploader$Result;

    move-result-object v0

    .line 216
    sget-object v1, Lcom/instagram/android/service/VideoUploader$Result;->EXPIRED_RETRY:Lcom/instagram/android/service/VideoUploader$Result;

    if-ne v0, v1, :cond_8

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/service/PendingMediaService;->mExpiredRetry:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 226
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getServerStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED_VIDEO:Lcom/instagram/android/model/PendingMedia$Status;

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getTargetStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 230
    :try_start_3
    invoke-direct {p0, p1}, Lcom/instagram/android/service/PendingMediaService;->uploadImage(Lcom/instagram/android/model/PendingMedia;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 236
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getServerStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getTargetStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    if-ne v0, v1, :cond_4

    .line 239
    :try_start_4
    invoke-direct {p0, p1}, Lcom/instagram/android/service/PendingMediaService;->configureMedia(Lcom/instagram/android/model/PendingMedia;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 240
    :catch_1
    move-exception v0

    .line 241
    const-string v1, "PendingMediaService"

    const-string v2, "Media failed configure"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 218
    :cond_8
    :try_start_5
    sget-object v1, Lcom/instagram/android/service/VideoUploader$Result;->SUCCESS:Lcom/instagram/android/service/VideoUploader$Result;

    if-ne v0, v1, :cond_6

    .line 219
    sget-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaStore;->serialize()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 221
    :catch_2
    move-exception v0

    .line 222
    const-string v1, "PendingMediaService"

    const-string v2, "Media failed video render/upload"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 231
    :catch_3
    move-exception v0

    .line 232
    const-string v1, "PendingMediaService"

    const-string v2, "Media failed cover photo upload"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public static isFinishedRendering()Z
    .locals 1

    .prologue
    .line 483
    sget-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaStore;->isFinishedRendering()Z

    move-result v0

    return v0
.end method

.method private newVideoRequest(Lcom/instagram/android/model/PendingMedia;)V
    .locals 4
    .parameter "media"

    .prologue
    .line 247
    new-instance v0, Lcom/instagram/api/request/CreateMediaRequest;

    invoke-direct {v0, p0, p1}, Lcom/instagram/api/request/CreateMediaRequest;-><init>(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V

    .line 248
    iget-object v1, p0, Lcom/instagram/android/service/PendingMediaService;->mHttpClient:Lcom/instagram/api/ApiHttpClient;

    invoke-virtual {v1, v0}, Lcom/instagram/api/ApiHttpClient;->perform(Lcom/instagram/api/request/AbstractRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 250
    const-string v1, "PendingMediaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New video request response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :try_start_0
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v1, Lcom/instagram/android/video/api/response/CreateMediaResponse;

    invoke-static {p0}, Lcom/instagram/android/service/CustomObjectMapper;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v2

    const-class v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v2, v0, v3}, Lcom/instagram/android/service/CustomObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-direct {v1, v0}, Lcom/instagram/android/video/api/response/CreateMediaResponse;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 257
    invoke-virtual {v1}, Lcom/instagram/android/video/api/response/CreateMediaResponse;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setMediaId(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v1}, Lcom/instagram/android/video/api/response/CreateMediaResponse;->getVideoUploadUrls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setVideoUploadUrls(Ljava/util/List;)V

    .line 259
    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->CREATED_MEDIA:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setServerStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    .line 261
    sget-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaStore;->serialize()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    const-string v0, "PendingMediaService"

    const-string v1, "Error in new video"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private renderVideo(Lcom/instagram/android/model/PendingMedia;)V
    .locals 4
    .parameter "media"

    .prologue
    const/4 v3, 0x0

    .line 268
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getFilterType()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/android/creation/widget/FilterTileUtil;->getVideoFilterById(I)Lcom/instagram/android/video/filters/VideoFilter;

    move-result-object v0

    .line 270
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getShortestOriginalSide()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/android/video/render/FinalRenderController;->sizeForFinalRender(I)I

    move-result v1

    .line 271
    new-instance v2, Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-direct {v2, v3, v1}, Lcom/instagram/android/video/gl/GLRenderContext;-><init>(Landroid/graphics/SurfaceTexture;I)V

    .line 272
    invoke-virtual {v2}, Lcom/instagram/android/video/gl/GLRenderContext;->setUseYUV()V

    .line 274
    new-instance v1, Lcom/instagram/android/video/render/FinalRenderController;

    invoke-direct {v1, p0, v2, p1}, Lcom/instagram/android/video/render/FinalRenderController;-><init>(Landroid/content/Context;Lcom/instagram/android/video/gl/GLRenderContext;Lcom/instagram/android/model/PendingMedia;)V

    iput-object v1, p0, Lcom/instagram/android/service/PendingMediaService;->mFinalRenderController:Lcom/instagram/android/video/render/FinalRenderController;

    .line 275
    iget-object v1, p0, Lcom/instagram/android/service/PendingMediaService;->mFinalRenderController:Lcom/instagram/android/video/render/FinalRenderController;

    invoke-virtual {v2, v1}, Lcom/instagram/android/video/gl/GLRenderContext;->setController(Lcom/instagram/android/video/gl/RenderController;)V

    .line 276
    invoke-virtual {v2, v0}, Lcom/instagram/android/video/gl/GLRenderContext;->setFilter(Lcom/instagram/android/video/filters/VideoFilter;)V

    .line 277
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getOrientation()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/instagram/android/video/gl/GLRenderContext;->setRotation(I)V

    .line 279
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/instagram/android/video/gl/GLRenderContext;->flipFinalRender(Z)V

    .line 281
    invoke-virtual {v2}, Lcom/instagram/android/video/gl/GLRenderContext;->run()V

    .line 283
    iput-object v3, p0, Lcom/instagram/android/service/PendingMediaService;->mFinalRenderController:Lcom/instagram/android/video/render/FinalRenderController;

    .line 285
    sget-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaStore;->serialize()V

    .line 286
    return-void
.end method

.method public static retry(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V
    .locals 1
    .parameter "context"
    .parameter "media"

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/instagram/android/service/PendingMediaService;->startService(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;I)V

    .line 476
    return-void
.end method

.method private static reupload(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V
    .locals 1
    .parameter "context"
    .parameter "media"

    .prologue
    .line 459
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setMediaId(Ljava/lang/String;)V

    .line 460
    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->NOT_UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setServerStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    .line 461
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/instagram/android/service/PendingMediaService;->startService(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;I)V

    .line 462
    return-void
.end method

.method private sendCheckpointBroadcast(Ljava/lang/String;)V
    .locals 2
    .parameter "checkpointUrl"

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.instagram.android.PendingMediaService.BROADCAST_INTENT_CHECKPOINT_REQUIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    const-string v1, "checkpointUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 397
    return-void
.end method

.method private sendNewMediaBroadcast()V
    .locals 2

    .prologue
    .line 400
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.instagram.android.PendingMediaService.BROADCAST_INTENT_NEW_MEDIA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 402
    return-void
.end method

.method public static startImageMedia(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V
    .locals 2
    .parameter "context"
    .parameter "media"

    .prologue
    .line 445
    sget-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaStore;->removeUnconfiguredMedia()V

    .line 446
    sget-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/instagram/android/service/PendingMediaStore;->put(Ljava/lang/String;Lcom/instagram/android/model/PendingMedia;)V

    .line 448
    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setTargetStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    .line 449
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/instagram/android/service/PendingMediaService;->startService(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;I)V

    .line 450
    return-void
.end method

.method private static startService(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;I)V
    .locals 3
    .parameter "context"
    .parameter "media"
    .parameter "actionId"

    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 413
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/service/PendingMediaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    const-string v1, "com.instagram.android.PendingMediaService.INTENT_EXTRA_PERFORM_ACTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    const-string v1, "com.instagram.android.PendingMediaService.INTENT_EXTRA_PENDING_MEDIA_ID"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 419
    return-void
.end method

.method public static startVideoMedia(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V
    .locals 2
    .parameter "context"
    .parameter "media"

    .prologue
    .line 430
    sget-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaStore;->removeUnconfiguredMedia()V

    .line 431
    sget-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/instagram/android/service/PendingMediaStore;->put(Ljava/lang/String;Lcom/instagram/android/model/PendingMedia;)V

    .line 433
    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->CREATED_MEDIA:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setTargetStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    .line 434
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/instagram/android/service/PendingMediaService;->startService(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;I)V

    .line 435
    return-void
.end method

.method public static takeNewMediaUploaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 65
    sget-boolean v1, Lcom/instagram/android/service/PendingMediaService;->sNewMediaUploaded:Z

    if-eqz v1, :cond_0

    .line 66
    sput-boolean v0, Lcom/instagram/android/service/PendingMediaService;->sNewMediaUploaded:Z

    .line 67
    const/4 v0, 0x1

    .line 69
    :cond_0
    return v0
.end method

.method private uploadImage(Lcom/instagram/android/model/PendingMedia;)V
    .locals 4
    .parameter "media"

    .prologue
    .line 308
    const/4 v1, 0x0

    .line 311
    :try_start_0
    new-instance v0, Lcom/instagram/api/request/UploadImageRequest;

    invoke-direct {v0, p0, p1}, Lcom/instagram/api/request/UploadImageRequest;-><init>(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V

    .line 312
    iget-object v2, p0, Lcom/instagram/android/service/PendingMediaService;->mHttpClient:Lcom/instagram/api/ApiHttpClient;

    invoke-virtual {v2, v0}, Lcom/instagram/api/ApiHttpClient;->perform(Lcom/instagram/api/request/AbstractRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    .line 314
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_2

    .line 315
    :cond_0
    const-string v0, "PendingMediaService"

    const-string v2, "Bad response from server"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :goto_0
    if-eqz v1, :cond_1

    .line 333
    :try_start_1
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 338
    :cond_1
    :goto_1
    return-void

    .line 318
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getMediaId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 320
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {p0}, Lcom/instagram/android/service/CustomObjectMapper;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v2

    const-class v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v2, v0, v3}, Lcom/instagram/android/service/CustomObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 322
    const-string v2, "media_id"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setMediaId(Ljava/lang/String;)V

    .line 325
    :cond_3
    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setServerStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    .line 327
    sget-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaStore;->serialize()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 333
    :try_start_3
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 335
    :cond_4
    :goto_2
    throw v0

    .line 334
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static uploadVideo(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V
    .locals 1
    .parameter "context"
    .parameter "media"

    .prologue
    .line 453
    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setTargetStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    .line 454
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setVideoFilePath(Ljava/lang/String;)V

    .line 455
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/instagram/android/service/PendingMediaService;->startService(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;I)V

    .line 456
    return-void
.end method


# virtual methods
.method public cancelRender()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaService;->mFinalRenderController:Lcom/instagram/android/video/render/FinalRenderController;

    if-eqz v0, :cond_0

    .line 290
    const-string v0, "PendingMediaService"

    const-string v1, "Cancelling Final Render"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaService;->mFinalRenderController:Lcom/instagram/android/video/render/FinalRenderController;

    invoke-virtual {v0}, Lcom/instagram/android/video/render/FinalRenderController;->cancel()V

    .line 293
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 86
    invoke-static {p0}, Lcom/instagram/api/ApiHttpClient;->getInstance(Landroid/content/Context;)Lcom/instagram/api/ApiHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/service/PendingMediaService;->mHttpClient:Lcom/instagram/api/ApiHttpClient;

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 406
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 407
    sget-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaStore;->serializeAsync()V

    .line 408
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 97
    :try_start_0
    const-string v0, "com.instagram.android.PendingMediaService.INTENT_EXTRA_PERFORM_ACTION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 98
    const-string v1, "com.instagram.android.PendingMediaService.INTENT_EXTRA_PENDING_MEDIA_ID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    sget-object v2, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {v2, v1}, Lcom/instagram/android/service/PendingMediaStore;->get(Ljava/lang/String;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v1

    .line 101
    if-nez v1, :cond_1

    .line 102
    const-string v0, "PendingMediaService"

    const-string v1, "Pending media did not exist on handle intent"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    :goto_0
    sget-object v0, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaStore;->serialize()V

    .line 112
    return-void

    .line 103
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 104
    :try_start_1
    invoke-direct {p0, v1}, Lcom/instagram/android/service/PendingMediaService;->handleCancelIntent(Lcom/instagram/android/model/PendingMedia;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/instagram/android/service/PendingMediaService;->sPendingMediaStore:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {v1}, Lcom/instagram/android/service/PendingMediaStore;->serialize()V

    throw v0

    .line 105
    :cond_2
    if-nez v0, :cond_0

    .line 106
    :try_start_2
    invoke-direct {p0, v1}, Lcom/instagram/android/service/PendingMediaService;->handleGoIntent(Lcom/instagram/android/model/PendingMedia;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public waitUntilRenderFinished()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaService;->mFinalRenderController:Lcom/instagram/android/video/render/FinalRenderController;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaService;->mFinalRenderController:Lcom/instagram/android/video/render/FinalRenderController;

    invoke-virtual {v0}, Lcom/instagram/android/video/render/FinalRenderController;->waitUntilRenderFinished()V

    .line 299
    :cond_0
    return-void
.end method
