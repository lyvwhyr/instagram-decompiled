.class public Lcom/instagram/api/loaderrequest/FetchFollowingStatus;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "FetchFollowingStatus.java"


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
.field private mUser:Lcom/instagram/android/model/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/android/model/User;)V
    .locals 3
    .parameter "context"
    .parameter "loaderManager"
    .parameter "user"

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 22
    iput-object p3, p0, Lcom/instagram/api/loaderrequest/FetchFollowingStatus;->mUser:Lcom/instagram/android/model/User;

    .line 24
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FetchFollowingStatus;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusUnknown:Lcom/instagram/android/model/User$FollowStatus;

    if-ne v0, v1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FetchFollowingStatus;->mUser:Lcom/instagram/android/model/User;

    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFetching:Lcom/instagram/android/model/User$FollowStatus;

    invoke-virtual {v0, v1, v2, p1}, Lcom/instagram/android/model/User;->updateFollowStatus(Lcom/instagram/android/model/User$FollowStatus;Lcom/instagram/android/model/User$UserAction;Landroid/content/Context;)V

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 37
    invoke-virtual {p1, p2}, Lcom/instagram/api/ApiHttpClient;->getRequest(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    const-string v0, "friendships/show/%s/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/FetchFollowingStatus;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v3}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 50
    .local p1, objectApiResponse:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FetchFollowingStatus;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFetching:Lcom/instagram/android/model/User$FollowStatus;

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FetchFollowingStatus;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/FetchFollowingStatus;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/User;->revertFollowStatus(Landroid/content/Context;)V

    .line 53
    :cond_0
    return-void
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 3
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
    .line 42
    .local p1, objectApiResponse:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FetchFollowingStatus;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/FetchFollowingStatus;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/instagram/android/model/User;->updateFollowStatus(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;Landroid/content/Context;)V

    .line 43
    return-object p1
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
    .line 57
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return v0
.end method
