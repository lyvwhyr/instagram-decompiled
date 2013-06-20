.class public Lcom/instagram/api/request/CreateMediaRequest;
.super Lcom/instagram/api/request/AbstractIgRequest;
.source "CreateMediaRequest.java"


# instance fields
.field private final mPendingMedia:Lcom/instagram/android/model/PendingMedia;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V
    .locals 0
    .parameter "context"
    .parameter "pendingMedia"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/instagram/api/request/AbstractIgRequest;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p2, p0, Lcom/instagram/api/request/CreateMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    .line 19
    return-void
.end method


# virtual methods
.method public getMethod()Lcom/instagram/api/request/AbstractRequest$Method;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/instagram/api/request/AbstractRequest$Method;->POST:Lcom/instagram/api/request/AbstractRequest$Method;

    return-object v0
.end method

.method public getParams()Lcom/instagram/api/RequestParams;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/instagram/api/RequestParams;

    invoke-direct {v0}, Lcom/instagram/api/RequestParams;-><init>()V

    .line 34
    const-string v1, "media_type"

    sget-object v2, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    invoke-virtual {v2}, Lcom/instagram/android/model/Media$MediaType;->toServerValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "device_timestamp"

    iget-object v2, p0, Lcom/instagram/api/request/CreateMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v2}, Lcom/instagram/android/model/PendingMedia;->getDeviceTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "media/create/"

    return-object v0
.end method
