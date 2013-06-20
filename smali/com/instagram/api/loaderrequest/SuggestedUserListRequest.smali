.class public Lcom/instagram/api/loaderrequest/SuggestedUserListRequest;
.super Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
.source "SuggestedUserListRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/android/model/SuggestedUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mIsDuringSignup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;IZLcom/instagram/api/AbstractStreamingApiCallbacks;)V
    .locals 0
    .parameter "context"
    .parameter "loaderManager"
    .parameter "loaderId"
    .parameter "isDuringSignup"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/af;",
            "IZ",
            "Lcom/instagram/api/AbstractStreamingApiCallbacks",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/SuggestedUser;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p5, arrayListAbstractApiCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Ljava/util/ArrayList<Lcom/instagram/android/model/SuggestedUser;>;>;"
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 30
    iput-boolean p4, p0, Lcom/instagram/api/loaderrequest/SuggestedUserListRequest;->mIsDuringSignup:Z

    .line 31
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 41
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/instagram/api/loaderrequest/SuggestedUserListRequest;->mIsDuringSignup:Z

    if-eqz v0, :cond_0

    const-string v0, "friendships/suggested/?in_signup=true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "friendships/suggested/"

    goto :goto_0
.end method

.method public processResponseField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;Lcom/instagram/api/StreamingApiResponse;)Z
    .locals 3
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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/SuggestedUser;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 48
    .local p3, response:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<Ljava/util/ArrayList<Lcom/instagram/android/model/SuggestedUser;>;>;"
    const-string v0, "groups"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    .line 55
    iget-object v1, p0, Lcom/instagram/api/loaderrequest/SuggestedUserListRequest;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/instagram/android/model/SuggestedUser;->fromJsonParser(Landroid/content/Context;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/SuggestedUser;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p3, v0}, Lcom/instagram/api/StreamingApiResponse;->setSuccessObject(Ljava/lang/Object;)V

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
