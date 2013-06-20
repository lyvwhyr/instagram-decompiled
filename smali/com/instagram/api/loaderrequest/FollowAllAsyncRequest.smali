.class public Lcom/instagram/api/loaderrequest/FollowAllAsyncRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "FollowAllAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
        "<",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mUsers:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractStreamingApiCallbacks;)V
    .locals 1
    .parameter "context"
    .parameter "loaderManager"
    .parameter "abstractApiCallbacks"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 24
    return-void
.end method

.method private createParams(Ljava/lang/Iterable;)Lcom/instagram/api/RequestParams;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)",
            "Lcom/instagram/api/RequestParams;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, users:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/instagram/android/model/User;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 53
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {}, Lcom/instagram/android/login/fragment/RegisterFragment;->incrementNumberOfUsersFollowed()V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 60
    :cond_1
    new-instance v0, Lcom/instagram/api/RequestParams;

    invoke-direct {v0}, Lcom/instagram/api/RequestParams;-><init>()V

    .line 61
    const-string v2, "user_ids"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-object v0
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FollowAllAsyncRequest;->mUsers:Ljava/lang/Iterable;

    invoke-direct {p0, v0}, Lcom/instagram/api/loaderrequest/FollowAllAsyncRequest;->createParams(Ljava/lang/Iterable;)Lcom/instagram/api/RequestParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/RequestParams;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "friendships/create_many/async/"

    return-object v0
.end method

.method public performForUsers(Ljava/lang/Iterable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, users:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/instagram/android/model/User;>;"
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/FollowAllAsyncRequest;->mUsers:Ljava/lang/Iterable;

    .line 47
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/FollowAllAsyncRequest;->perform()V

    .line 48
    return-void
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;>;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Iterable<Lcom/instagram/android/model/User;>;>;"
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FollowAllAsyncRequest;->mUsers:Ljava/lang/Iterable;

    return-object v0
.end method

.method public bridge synthetic processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/instagram/api/loaderrequest/FollowAllAsyncRequest;->processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
