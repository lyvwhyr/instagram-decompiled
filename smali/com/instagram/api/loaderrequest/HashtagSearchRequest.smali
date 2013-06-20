.class public Lcom/instagram/api/loaderrequest/HashtagSearchRequest;
.super Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
.source "HashtagSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/android/model/Hashtag;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mSearchHistory:Lcom/instagram/util/SearchSession;

.field private mSearchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V
    .locals 1
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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Hashtag;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p4, arrayListAbstractStreamingApiCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Ljava/util/ArrayList<Lcom/instagram/android/model/Hashtag;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 31
    new-instance v0, Lcom/instagram/util/SearchSession;

    invoke-direct {v0}, Lcom/instagram/util/SearchSession;-><init>()V

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/HashtagSearchRequest;->mSearchHistory:Lcom/instagram/util/SearchSession;

    .line 32
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 49
    invoke-virtual {p1, p2}, Lcom/instagram/api/ApiHttpClient;->getRequest(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    const-string v0, "tags/search/?%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/HashtagSearchRequest;->mSearchHistory:Lcom/instagram/util/SearchSession;

    invoke-virtual {v2, v3}, Lcom/instagram/util/SearchSession;->toQueryString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchHistory()Lcom/instagram/util/SearchSession;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/HashtagSearchRequest;->mSearchHistory:Lcom/instagram/util/SearchSession;

    return-object v0
.end method

.method public perform(Ljava/lang/String;)V
    .locals 1
    .parameter "searchString"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/HashtagSearchRequest;->mSearchHistory:Lcom/instagram/util/SearchSession;

    invoke-virtual {v0}, Lcom/instagram/util/SearchSession;->resetIfLastSearchWasSuccessful()V

    .line 36
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/HashtagSearchRequest;->mSearchHistory:Lcom/instagram/util/SearchSession;

    invoke-virtual {v0, p1}, Lcom/instagram/util/SearchSession;->add(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/HashtagSearchRequest;->mSearchString:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/HashtagSearchRequest;->perform()V

    .line 39
    return-void
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
            "Lcom/instagram/android/model/Hashtag;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p3, response:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<Ljava/util/ArrayList<Lcom/instagram/android/model/Hashtag;>;>;"
    const-string v0, "results"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    .line 61
    invoke-static {p2}, Lcom/instagram/android/model/Hashtag;->fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/Hashtag;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p3, v0}, Lcom/instagram/api/StreamingApiResponse;->setSuccessObject(Ljava/lang/Object;)V

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
