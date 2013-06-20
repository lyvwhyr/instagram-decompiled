.class Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;
.super Lcom/instagram/android/loader/ImmediateAsyncTaskLoaderAsyncTask;
.source "StreamingApiRequestLoaderCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/loader/ImmediateAsyncTaskLoaderAsyncTask",
        "<",
        "Lcom/instagram/api/ApiResponse",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;


# direct methods
.method constructor <init>(Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 47
    .local p0, this:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;,"Lcom/instagram/api/StreamingApiRequestLoaderCallbacks.1;"
    iput-object p1, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    invoke-direct {p0, p2}, Lcom/instagram/android/loader/ImmediateAsyncTaskLoaderAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/instagram/api/ApiResponse;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, this:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;,"Lcom/instagram/api/StreamingApiRequestLoaderCallbacks.1;"
    .local p1, data:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<TT;>;"
    invoke-super {p0, p1}, Lcom/instagram/android/loader/ImmediateAsyncTaskLoaderAsyncTask;->deliverResult(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    .local p0, this:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;,"Lcom/instagram/api/StreamingApiRequestLoaderCallbacks.1;"
    check-cast p1, Lcom/instagram/api/ApiResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->deliverResult(Lcom/instagram/api/ApiResponse;)V

    return-void
.end method

.method public loadInBackground()Lcom/instagram/api/StreamingApiResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/api/StreamingApiResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v1, Lcom/instagram/api/StreamingApiResponse;

    iget-object v0, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    iget-object v0, v0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/instagram/api/StreamingApiResponse;-><init>(Landroid/content/Context;)V

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    #getter for: Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
    invoke-static {v0}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->access$000(Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;)Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;->preProcessInBackground()V
    :try_end_0
    .catch Lcom/instagram/api/loaderrequest/AbstractLoaderRequest$PreProcessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 59
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    iget-object v0, v0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/api/ApiHttpClient;->getInstance(Landroid/content/Context;)Lcom/instagram/api/ApiHttpClient;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 61
    const/4 v0, 0x0

    .line 64
    :try_start_2
    iget-object v3, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    #getter for: Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
    invoke-static {v3}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->access$000(Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;)Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;->getRequest()Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/api/ApiHttpClient;->sendRequest(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    .line 68
    new-instance v4, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v4}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    .line 69
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 70
    iget-object v2, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    #getter for: Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
    invoke-static {v2}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->access$000(Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;)Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;->cacheResponseFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 71
    new-instance v2, Lcom/instagram/util/InputStreamWrapper;

    iget-object v5, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    #getter for: Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
    invoke-static {v5}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->access$000(Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;)Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;->cacheResponseFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/instagram/util/InputStreamWrapper;-><init>(Ljava/io/InputStream;Ljava/io/File;)V

    .line 74
    :goto_1
    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v3

    .line 76
    :cond_0
    :goto_2
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v5, :cond_7

    .line 77
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 78
    const-string v5, "status"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 80
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-virtual {v1, v4}, Lcom/instagram/api/StreamingApiResponse;->setStatus(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 107
    :catch_0
    move-exception v1

    .line 108
    :try_start_3
    iget-object v1, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    iget-object v1, v1, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->mContext:Landroid/content/Context;

    sget v2, Lcom/facebook/k;->network_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/api/StreamingApiResponse;->createWithError(Ljava/lang/String;)Lcom/instagram/api/StreamingApiResponse;

    move-result-object v1

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 112
    :goto_3
    if-eqz v0, :cond_2

    .line 113
    if-eqz v1, :cond_1

    .line 114
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/StreamingApiResponse;->setStatusLine(Lch/boye/httpclientandroidlib/StatusLine;)V

    .line 117
    :cond_1
    invoke-virtual {v0}, Lcom/instagram/api/StreamingApiResponse;->isOk()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/instagram/api/StreamingApiResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 118
    iget-object v1, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    invoke-virtual {v1, v0}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->onApiResponseObjectCreated(Lcom/instagram/api/StreamingApiResponse;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 129
    :cond_2
    :goto_4
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/api/StreamingApiResponse;->setIsNetworkResponse(Z)V

    .line 130
    return-object v0

    .line 55
    :catch_1
    move-exception v0

    .line 56
    :try_start_4
    iget-object v0, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    iget-object v0, v0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->mContext:Landroid/content/Context;

    sget v2, Lcom/facebook/k;->unknown_error_occured:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/StreamingApiResponse;->createWithError(Ljava/lang/String;)Lcom/instagram/api/StreamingApiResponse;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 123
    :catch_2
    move-exception v0

    .line 125
    const-string v0, "StreamingApiRequestLoaderCallbacks"

    const-string v1, "Unexpected networking exception"

    invoke-static {v0, v1}, Lcom/instagram/crash/IgErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    iget-object v0, v0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->mContext:Landroid/content/Context;

    sget v1, Lcom/facebook/k;->error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/StreamingApiResponse;->createWithError(Ljava/lang/String;)Lcom/instagram/api/StreamingApiResponse;

    move-result-object v0

    goto :goto_4

    .line 82
    :cond_3
    :try_start_5
    const-string v5, "message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 83
    iget-object v4, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    #calls: Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->parseMessage(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->access$100(Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/instagram/api/StreamingApiResponse;->setErrorMessage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 84
    :cond_4
    const-string v5, "_messages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 85
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 86
    iget-object v4, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    #calls: Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->parseSystemMessages(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/Collection;
    invoke-static {v4, v3}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->access$200(Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/instagram/api/StreamingApiResponse;->setSystemMessages(Ljava/util/Collection;)V

    goto/16 :goto_2

    .line 87
    :cond_5
    const-string v5, "checkpoint_url"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 88
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 89
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {v1, v4}, Lcom/instagram/api/StreamingApiResponse;->setCheckpointUrl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 91
    :cond_6
    iget-object v5, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    #getter for: Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
    invoke-static {v5}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->access$000(Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;)Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v1}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;->processResponseField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;Lcom/instagram/api/StreamingApiResponse;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 93
    if-eqz v4, :cond_0

    .line 95
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_2

    .line 100
    :cond_7
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    .line 101
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 105
    iget-object v2, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    #getter for: Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
    invoke-static {v2}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->access$000(Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;)Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;->onResponseParsed(Lcom/instagram/api/StreamingApiResponse;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 110
    goto/16 :goto_3

    .line 120
    :cond_8
    :try_start_6
    iget-object v1, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    #getter for: Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
    invoke-static {v1}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->access$000(Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;)Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;->handleErrorInBackground(Lcom/instagram/api/StreamingApiResponse;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    :cond_9
    move-object v2, v3

    goto/16 :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;->loadInBackground()Lcom/instagram/api/StreamingApiResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcom/instagram/android/loader/ImmediateAsyncTaskLoaderAsyncTask;->onStartLoading()V

    .line 136
    return-void
.end method
