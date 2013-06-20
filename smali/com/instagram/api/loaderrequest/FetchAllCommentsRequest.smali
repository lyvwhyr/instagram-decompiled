.class public Lcom/instagram/api/loaderrequest/FetchAllCommentsRequest;
.super Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
.source "FetchAllCommentsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mMedia:Lcom/instagram/android/model/Media;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V
    .locals 0
    .parameter "context"
    .parameter "loaderManager"
    .parameter "loaderId"
    .parameter "abstractApiCallbacks"

    .prologue
    .line 26
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
    .line 43
    invoke-virtual {p1, p2}, Lcom/instagram/api/ApiHttpClient;->getRequest(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    const-string v0, "media/%s/comments/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/FetchAllCommentsRequest;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v3}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleErrorInBackground(Lcom/instagram/api/StreamingApiResponse;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/StreamingApiResponse",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, response:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FetchAllCommentsRequest;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->commentsRequestFailed()V

    .line 66
    return-void
.end method

.method public onResponseParsed(Lcom/instagram/api/StreamingApiResponse;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/StreamingApiResponse",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, response:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FetchAllCommentsRequest;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->commentsRequestFinished()V

    .line 61
    return-void
.end method

.method public perform(Lcom/instagram/android/model/Media;)V
    .locals 1
    .parameter "media"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/FetchAllCommentsRequest;->mMedia:Lcom/instagram/android/model/Media;

    .line 31
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FetchAllCommentsRequest;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->commentsRequestStarted()V

    .line 32
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/FetchAllCommentsRequest;->perform()V

    .line 33
    return-void
.end method

.method public processResponseField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;Lcom/instagram/api/StreamingApiResponse;)Z
    .locals 1
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
    .line 50
    .local p3, response:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FetchAllCommentsRequest;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0, p1}, Lcom/instagram/android/model/Media;->canParseAsCommentField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FetchAllCommentsRequest;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0, p2}, Lcom/instagram/android/model/Media;->parseAsCommentField(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
