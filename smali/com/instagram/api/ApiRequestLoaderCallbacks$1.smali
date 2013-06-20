.class Lcom/instagram/api/ApiRequestLoaderCallbacks$1;
.super Lcom/instagram/android/loader/ImmediateAsyncTaskLoaderAsyncTask;
.source "ApiRequestLoaderCallbacks.java"


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
.field final synthetic this$0:Lcom/instagram/api/ApiRequestLoaderCallbacks;


# direct methods
.method constructor <init>(Lcom/instagram/api/ApiRequestLoaderCallbacks;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 37
    .local p0, this:Lcom/instagram/api/ApiRequestLoaderCallbacks$1;,"Lcom/instagram/api/ApiRequestLoaderCallbacks.1;"
    iput-object p1, p0, Lcom/instagram/api/ApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/ApiRequestLoaderCallbacks;

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
    .line 100
    .local p0, this:Lcom/instagram/api/ApiRequestLoaderCallbacks$1;,"Lcom/instagram/api/ApiRequestLoaderCallbacks.1;"
    .local p1, data:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<TT;>;"
    invoke-super {p0, p1}, Lcom/instagram/android/loader/ImmediateAsyncTaskLoaderAsyncTask;->deliverResult(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    .local p0, this:Lcom/instagram/api/ApiRequestLoaderCallbacks$1;,"Lcom/instagram/api/ApiRequestLoaderCallbacks.1;"
    check-cast p1, Lcom/instagram/api/ApiResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/api/ApiRequestLoaderCallbacks$1;->deliverResult(Lcom/instagram/api/ApiResponse;)V

    return-void
.end method

.method public loadInBackground()Lcom/instagram/api/ApiResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/api/ApiResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/ApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/ApiRequestLoaderCallbacks;

    #getter for: Lcom/instagram/api/ApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
    invoke-static {v0}, Lcom/instagram/api/ApiRequestLoaderCallbacks;->access$000(Lcom/instagram/api/ApiRequestLoaderCallbacks;)Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->preProcessInBackground()V
    :try_end_0
    .catch Lcom/instagram/api/loaderrequest/AbstractLoaderRequest$PreProcessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/instagram/api/ApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/ApiRequestLoaderCallbacks;

    iget-object v0, v0, Lcom/instagram/api/ApiRequestLoaderCallbacks;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/api/ApiHttpClient;->getInstance(Landroid/content/Context;)Lcom/instagram/api/ApiHttpClient;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/instagram/api/ApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/ApiRequestLoaderCallbacks;

    #getter for: Lcom/instagram/api/ApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
    invoke-static {v1}, Lcom/instagram/api/ApiRequestLoaderCallbacks;->access$000(Lcom/instagram/api/ApiRequestLoaderCallbacks;)Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->getRequest()Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/ApiHttpClient;->sendRequest(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/instagram/api/ApiRequestLoaderCallbacks$1;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/api/ObjectMappedApiResponse;->parseResponse(Landroid/content/Context;Lch/boye/httpclientandroidlib/HttpResponse;)Lcom/instagram/api/ObjectMappedApiResponse;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/instagram/api/ObjectMappedApiResponse;->isOk()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/instagram/api/ObjectMappedApiResponse;->getErrorMessage()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    if-nez v1, :cond_0

    .line 57
    :try_start_2
    iget-object v1, p0, Lcom/instagram/api/ApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/ApiRequestLoaderCallbacks;

    #getter for: Lcom/instagram/api/ApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
    invoke-static {v1}, Lcom/instagram/api/ApiRequestLoaderCallbacks;->access$000(Lcom/instagram/api/ApiRequestLoaderCallbacks;)Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/ObjectMappedApiResponse;->setSuccessObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 65
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/instagram/api/ApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/ApiRequestLoaderCallbacks;

    invoke-virtual {v1, v0}, Lcom/instagram/api/ApiRequestLoaderCallbacks;->onApiResponseObjectCreated(Lcom/instagram/api/ApiResponse;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 71
    :goto_1
    invoke-virtual {v0, v4}, Lcom/instagram/api/ObjectMappedApiResponse;->setIsNetworkResponse(Z)V

    .line 72
    :goto_2
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    iget-object v0, p0, Lcom/instagram/api/ApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/ApiRequestLoaderCallbacks;

    iget-object v0, v0, Lcom/instagram/api/ApiRequestLoaderCallbacks;->mContext:Landroid/content/Context;

    sget v1, Lcom/facebook/k;->unknown_error_occured:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/ObjectMappedApiResponse;->createWithError(Ljava/lang/String;)Lcom/instagram/api/ObjectMappedApiResponse;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v4}, Lcom/instagram/api/ObjectMappedApiResponse;->setIsNetworkResponse(Z)V

    goto :goto_2

    .line 58
    :catch_1
    move-exception v1

    .line 59
    :try_start_4
    const-string v2, "ApiRequestLoaderCallbacks"

    const-string v3, "Error processing json"

    invoke-static {v2, v3, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    iget-object v1, p0, Lcom/instagram/api/ApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/ApiRequestLoaderCallbacks;

    #getter for: Lcom/instagram/api/ApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
    invoke-static {v1}, Lcom/instagram/api/ApiRequestLoaderCallbacks;->access$000(Lcom/instagram/api/ApiRequestLoaderCallbacks;)Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->handleErrorInBackground(Lcom/instagram/api/ApiResponse;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 66
    :catch_2
    move-exception v0

    .line 67
    const-string v0, "ApiRequestLoaderCallbacks"

    const-string v1, "Unexpected networking exception"

    invoke-static {v0, v1}, Lcom/instagram/crash/IgErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/instagram/api/ApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/ApiRequestLoaderCallbacks;

    iget-object v0, v0, Lcom/instagram/api/ApiRequestLoaderCallbacks;->mContext:Landroid/content/Context;

    sget v1, Lcom/facebook/k;->network_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/ObjectMappedApiResponse;->createWithError(Ljava/lang/String;)Lcom/instagram/api/ObjectMappedApiResponse;

    move-result-object v0

    goto :goto_1

    .line 63
    :cond_0
    :try_start_5
    iget-object v1, p0, Lcom/instagram/api/ApiRequestLoaderCallbacks$1;->this$0:Lcom/instagram/api/ApiRequestLoaderCallbacks;

    #getter for: Lcom/instagram/api/ApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
    invoke-static {v1}, Lcom/instagram/api/ApiRequestLoaderCallbacks;->access$000(Lcom/instagram/api/ApiRequestLoaderCallbacks;)Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->handleErrorInBackground(Lcom/instagram/api/ApiResponse;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/instagram/api/ApiRequestLoaderCallbacks$1;->loadInBackground()Lcom/instagram/api/ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/instagram/android/loader/ImmediateAsyncTaskLoaderAsyncTask;->onStartLoading()V

    .line 96
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/instagram/android/loader/ImmediateAsyncTaskLoaderAsyncTask;->onStopLoading()V

    .line 91
    return-void
.end method
