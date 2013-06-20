.class public abstract Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "AbstractStreamingLoaderRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V
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
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, this:Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;,"Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest<TT;>;"
    .local p4, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 30
    return-void
.end method


# virtual methods
.method public cacheResponseFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method protected constructLoaderCallbacks()Lcom/instagram/api/ApiRequestLoaderCallbacks;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/api/ApiRequestLoaderCallbacks",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    invoke-direct {v0, v1, p0, v2}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;-><init>(Landroid/content/Context;Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;Lcom/instagram/api/AbstractApiCallbacks;)V

    return-object v0
.end method

.method public handleErrorInBackground(Lcom/instagram/api/StreamingApiResponse;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/StreamingApiResponse",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;,"Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest<TT;>;"
    .local p1, apiResponse:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<TT;>;"
    return-void
.end method

.method public onResponseParsed(Lcom/instagram/api/StreamingApiResponse;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/StreamingApiResponse",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;,"Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest<TT;>;"
    .local p1, response:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<TT;>;"
    return-void
.end method

.method public final processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;,"Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest<TT;>;"
    .local p1, apiResponse:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract processResponseField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;Lcom/instagram/api/StreamingApiResponse;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/instagram/api/StreamingApiResponse",
            "<TT;>;)Z"
        }
    .end annotation
.end method
