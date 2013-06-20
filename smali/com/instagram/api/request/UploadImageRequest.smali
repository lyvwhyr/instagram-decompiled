.class public Lcom/instagram/api/request/UploadImageRequest;
.super Lcom/instagram/api/request/AbstractIgRequest;
.source "UploadImageRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadImageRequest"


# instance fields
.field private final mPendingMedia:Lcom/instagram/android/model/PendingMedia;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V
    .locals 0
    .parameter "context"
    .parameter "pendingMedia"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/instagram/api/request/AbstractIgRequest;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/instagram/api/request/UploadImageRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    .line 25
    return-void
.end method


# virtual methods
.method public getMethod()Lcom/instagram/api/request/AbstractRequest$Method;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/instagram/api/request/AbstractRequest$Method;->POST:Lcom/instagram/api/request/AbstractRequest$Method;

    return-object v0
.end method

.method public getParams()Lcom/instagram/api/RequestParams;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lcom/instagram/api/RequestParams;

    invoke-direct {v0}, Lcom/instagram/api/RequestParams;-><init>()V

    .line 42
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/instagram/api/request/UploadImageRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v2}, Lcom/instagram/android/model/PendingMedia;->getImageFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v2, "photo"

    const-string v3, "file"

    invoke-virtual {v0, v2, v1, v3}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    iget-object v1, p0, Lcom/instagram/api/request/UploadImageRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getMediaId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "media_id"

    iget-object v2, p0, Lcom/instagram/api/request/UploadImageRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v2}, Lcom/instagram/android/model/PendingMedia;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string v0, "UploadImageRequest"

    const-string v1, "Pending Media image file not found."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :cond_0
    const-string v1, "device_timestamp"

    iget-object v2, p0, Lcom/instagram/api/request/UploadImageRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v2}, Lcom/instagram/android/model/PendingMedia;->getDeviceTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "media/upload/"

    return-object v0
.end method
