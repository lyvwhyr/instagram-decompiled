.class public Lcom/instagram/api/loaderrequest/FetchBulkFollowingStatusRequest;
.super Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
.source "FetchBulkFollowingStatusRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V
    .locals 0
    .parameter "context"
    .parameter "loaderManager"
    .parameter "loaderId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/af;",
            "I",
            "Lcom/instagram/api/AbstractStreamingApiCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p4, objectAbstractApiCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 51
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "friendships/show_many/"

    return-object v0
.end method

.method public performForUsers(Ljava/lang/Iterable;)V
    .locals 3
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
    .line 35
    .local p1, users:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/instagram/android/model/User;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 37
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/FetchBulkFollowingStatusRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v0

    const-string v2, "user_ids"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/FetchBulkFollowingStatusRequest;->perform()V

    .line 46
    return-void
.end method

.method public processResponseField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;Lcom/instagram/api/StreamingApiResponse;)Z
    .locals 2
    .parameter "fieldName"
    .parameter "jp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/instagram/api/StreamingApiResponse",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, response:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<Ljava/lang/Object;>;"
    const-string v0, "friendship_statuses"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 61
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 65
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/FetchBulkFollowingStatusRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/android/service/UserStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/UserStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/service/UserStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 66
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/FetchBulkFollowingStatusRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p2, p0, v1}, Lcom/instagram/android/model/User;->updateFollowStatus(Lcom/fasterxml/jackson/core/JsonParser;Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;Landroid/content/Context;)V

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x1

    .line 71
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
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
    .line 76
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return v0
.end method
