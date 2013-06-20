.class public Lcom/instagram/android/video/api/request/UploadVideoRequest;
.super Lcom/instagram/api/request/AbstractRequest;
.source "UploadVideoRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadVideoRequest"


# instance fields
.field private final mJob:Ljava/lang/String;

.field private final mPendingMedia:Lcom/instagram/android/model/PendingMedia;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "pendingMedia"
    .parameter "url"
    .parameter "job"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/instagram/api/request/AbstractRequest;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lcom/instagram/android/video/api/request/UploadVideoRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    .line 26
    iput-object p3, p0, Lcom/instagram/android/video/api/request/UploadVideoRequest;->mUrl:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/instagram/android/video/api/request/UploadVideoRequest;->mJob:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getMethod()Lcom/instagram/api/request/AbstractRequest$Method;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/instagram/api/request/AbstractRequest$Method;->POST:Lcom/instagram/api/request/AbstractRequest$Method;

    return-object v0
.end method

.method public getParams()Lcom/instagram/api/RequestParams;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/instagram/api/RequestParams;

    invoke-direct {v0}, Lcom/instagram/api/RequestParams;-><init>()V

    .line 46
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/instagram/android/video/api/request/UploadVideoRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v2}, Lcom/instagram/android/model/PendingMedia;->getVideoFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const-string v2, "job"

    iget-object v3, p0, Lcom/instagram/android/video/api/request/UploadVideoRequest;->mJob:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "video"

    invoke-virtual {v0, v2, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 55
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v0, "UploadVideoRequest"

    const-string v1, "Could not open pending media for reading"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/video/api/request/UploadVideoRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method
