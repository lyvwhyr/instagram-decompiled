.class public Lcom/instagram/api/loaderrequest/LikeRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "LikeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mLikeIntention:Z

.field private mLikeSrcData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMedia:Lcom/instagram/android/model/Media;

.field private mMediaId:Ljava/lang/String;

.field private mWasDoubleTap:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/android/model/Media;ZZLjava/util/Map;)V
    .locals 2
    .parameter "context"
    .parameter "loaderManager"
    .parameter "media"
    .parameter "likeIntention"
    .parameter "wasDoubleTap"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/af;",
            "Lcom/instagram/android/model/Media;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p6, likeSrcData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 31
    iput-object p3, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mMedia:Lcom/instagram/android/model/Media;

    .line 32
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mMediaId:Ljava/lang/String;

    .line 33
    iput-boolean p4, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mLikeIntention:Z

    .line 34
    iput-boolean p5, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mWasDoubleTap:Z

    .line 35
    iput-object p6, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mLikeSrcData:Ljava/util/Map;

    .line 36
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 3
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 66
    new-instance v0, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v0}, Lcom/instagram/util/JsonBuilder;-><init>()V

    const-string v1, "media_id"

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {p3, v0}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Lcom/instagram/api/RequestParams;
    .locals 4

    .prologue
    .line 49
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v2

    .line 50
    iget-boolean v0, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mWasDoubleTap:Z

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "d"

    const-string v1, "1"

    invoke-virtual {v2, v0, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mLikeSrcData:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mLikeSrcData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 53
    :cond_0
    const-string v0, "d"

    const-string v1, "0"

    invoke-virtual {v2, v0, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    return-object v2
.end method

.method protected getPath()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 40
    iget-boolean v0, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mLikeIntention:Z

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "media/%s/like/"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mMediaId:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "media/%s/unlike/"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mMediaId:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public handleErrorInBackground(Lcom/instagram/api/ApiResponse;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, objectApiResponse:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mMedia:Lcom/instagram/android/model/Media;

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mMedia:Lcom/instagram/android/model/Media;

    iget-object v0, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->isHasLiked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/android/model/Media;->updatedHasLiked(Z)V

    .line 86
    :cond_0
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, objectApiResponse:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/LikeRequest;->mMedia:Lcom/instagram/android/model/Media;

    return-object v0
.end method

.method public shouldShowAlertForRequest(Lcom/instagram/api/ApiResponse;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return v0
.end method
