.class Lcom/instagram/android/service/VideoUploader;
.super Ljava/lang/Object;
.source "VideoUploader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoUploader"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHttpClient:Lcom/instagram/api/ApiHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/api/ApiHttpClient;)V
    .locals 0
    .parameter "context"
    .parameter "httpClient"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/instagram/android/service/VideoUploader;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/instagram/android/service/VideoUploader;->mHttpClient:Lcom/instagram/api/ApiHttpClient;

    .line 35
    return-void
.end method


# virtual methods
.method public upload(Lcom/instagram/android/model/PendingMedia;)Lcom/instagram/android/service/VideoUploader$Result;
    .locals 8
    .parameter "media"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 38
    .line 43
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getVideoUploadUrls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    move v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/api/VideoUploadUrl;

    .line 44
    const-string v5, "VideoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/instagram/android/video/api/VideoUploadUrl;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :try_start_0
    new-instance v5, Lcom/instagram/android/video/api/request/UploadVideoRequest;

    iget-object v6, p0, Lcom/instagram/android/service/VideoUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/instagram/android/video/api/VideoUploadUrl;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/instagram/android/video/api/VideoUploadUrl;->getJob()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, p1, v7, v0}, Lcom/instagram/android/video/api/request/UploadVideoRequest;-><init>(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/instagram/android/service/VideoUploader;->mHttpClient:Lcom/instagram/api/ApiHttpClient;

    invoke-virtual {v0, v5}, Lcom/instagram/api/ApiHttpClient;->perform(Lcom/instagram/api/request/AbstractRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    .line 51
    if-nez v1, :cond_4

    .line 52
    const-string v0, "VideoUploader"

    const-string v5, "Timed out waiting for server response on upload video."

    invoke-static {v0, v5}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-nez v3, :cond_2

    .line 55
    new-instance v0, Lcom/instagram/api/request/CheckConnectivityRequest;

    iget-object v3, p0, Lcom/instagram/android/service/VideoUploader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/instagram/api/request/CheckConnectivityRequest;-><init>(Landroid/content/Context;)V

    .line 56
    iget-object v3, p0, Lcom/instagram/android/service/VideoUploader;->mHttpClient:Lcom/instagram/api/ApiHttpClient;

    invoke-virtual {v3, v0}, Lcom/instagram/api/ApiHttpClient;->perform(Lcom/instagram/api/request/AbstractRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    const-string v0, "VideoUploader"

    const-string v2, "No connectivity, failing."

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v0, Lcom/instagram/android/service/VideoUploader$Result;->FAIL:Lcom/instagram/android/service/VideoUploader$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    if-eqz v1, :cond_0

    .line 105
    :try_start_1
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 116
    :cond_0
    :goto_1
    return-object v0

    .line 61
    :cond_1
    const/4 v3, 0x1

    .line 65
    :cond_2
    :try_start_2
    const-string v0, "VideoUploader"

    const-string v5, "Have connectivity, trying next server"

    invoke-static {v0, v5}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v3

    .line 103
    :goto_2
    if-eqz v1, :cond_3

    .line 105
    :try_start_3
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_3
    move v3, v0

    .line 110
    goto :goto_0

    .line 67
    :cond_4
    :try_start_4
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    if-nez v0, :cond_5

    .line 68
    const-string v0, "VideoUploader"

    const-string v5, "Bad response from server on upload video, retrying new server."

    invoke-static {v0, v5}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_2

    .line 70
    :cond_5
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_6

    .line 71
    const-string v0, "VideoUploader"

    const-string v2, "Video upload success!"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lcom/instagram/android/service/VideoUploader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/instagram/android/service/CustomObjectMapper;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v2

    const-class v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v2, v0, v3}, Lcom/instagram/android/service/CustomObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 74
    const-string v2, "result"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setVideoResult(Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED_VIDEO:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setServerStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    .line 76
    sget-object v0, Lcom/instagram/android/service/VideoUploader$Result;->SUCCESS:Lcom/instagram/android/service/VideoUploader$Result;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    if-eqz v1, :cond_0

    .line 105
    :try_start_5
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 106
    :catch_0
    move-exception v1

    goto :goto_1

    .line 78
    :cond_6
    :try_start_6
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v5, 0x1a6

    if-ne v0, v5, :cond_7

    .line 80
    const-string v0, "VideoUploader"

    const-string v2, "Video is corrupt? (received 422), failing"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getVideoUploadUrls()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/instagram/android/service/VideoUploader$Result;->FAIL:Lcom/instagram/android/service/VideoUploader$Result;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 103
    if-eqz v1, :cond_0

    .line 105
    :try_start_7
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 106
    :catch_1
    move-exception v1

    goto/16 :goto_1

    .line 87
    :cond_7
    :try_start_8
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v5, 0x193

    if-ne v0, v5, :cond_8

    .line 89
    const-string v0, "VideoUploader"

    const-string v2, "Received 403, retrying media creation"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setVideoUploadUrls(Ljava/util/List;)V

    .line 91
    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->NOT_UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setServerStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    .line 92
    sget-object v0, Lcom/instagram/android/service/VideoUploader$Result;->EXPIRED_RETRY:Lcom/instagram/android/service/VideoUploader$Result;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 103
    if-eqz v1, :cond_0

    .line 105
    :try_start_9
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 106
    :catch_2
    move-exception v1

    goto/16 :goto_1

    .line 94
    :cond_8
    :try_start_a
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v5, 0x1f7

    if-ne v0, v5, :cond_9

    .line 96
    const-string v0, "VideoUploader"

    const-string v5, "Received 503 on video upload, retrying new server"

    invoke-static {v0, v5}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto/16 :goto_2

    .line 98
    :cond_9
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v5, 0x1f4

    if-ne v0, v5, :cond_a

    .line 100
    const-string v0, "VideoUploader"

    const-string v5, "Received 500 on video upload, retrying new server"

    invoke-static {v0, v5}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_a
    move v0, v3

    goto/16 :goto_2

    .line 103
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_b

    .line 105
    :try_start_b
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 107
    :cond_b
    :goto_4
    throw v0

    .line 114
    :cond_c
    invoke-virtual {p1, v2}, Lcom/instagram/android/model/PendingMedia;->setVideoUploadUrls(Ljava/util/List;)V

    .line 115
    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->NOT_UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/PendingMedia;->setServerStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    .line 116
    sget-object v0, Lcom/instagram/android/service/VideoUploader$Result;->FAIL:Lcom/instagram/android/service/VideoUploader$Result;

    goto/16 :goto_1

    .line 106
    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v3

    goto/16 :goto_3

    :catch_5
    move-exception v1

    goto/16 :goto_1
.end method
