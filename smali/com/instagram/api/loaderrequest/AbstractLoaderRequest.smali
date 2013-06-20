.class public abstract Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.super Ljava/lang/Object;
.source "AbstractLoaderRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private final mLoaderId:I

.field private final mLoaderManager:Landroid/support/v4/app/af;

.field private final mParams:Lcom/instagram/api/RequestParams;

.field protected mRequest:Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V
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
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, this:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;,"Lcom/instagram/api/loaderrequest/AbstractLoaderRequest<TT;>;"
    .local p4, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/instagram/api/RequestParams;

    invoke-direct {v0}, Lcom/instagram/api/RequestParams;-><init>()V

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mParams:Lcom/instagram/api/RequestParams;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mLoaderManager:Landroid/support/v4/app/af;

    .line 33
    iput p3, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mLoaderId:I

    .line 34
    if-nez p4, :cond_0

    new-instance p4, Lcom/instagram/api/EmptyCallback;

    .end local p4           #apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<TT;>;"
    invoke-direct {p4}, Lcom/instagram/api/EmptyCallback;-><init>()V

    :cond_0
    iput-object p4, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    .line 35
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->register()V

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
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
    .line 53
    new-instance v0, Lcom/instagram/api/ApiRequestLoaderCallbacks;

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    invoke-direct {v0, v1, p0, v2}, Lcom/instagram/api/ApiRequestLoaderCallbacks;-><init>(Landroid/content/Context;Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;Lcom/instagram/api/AbstractApiCallbacks;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLoaderId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mLoaderId:I

    return v0
.end method

.method public getLoaderManager()Landroid/support/v4/app/af;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mLoaderManager:Landroid/support/v4/app/af;

    return-object v0
.end method

.method protected getParams()Lcom/instagram/api/RequestParams;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mParams:Lcom/instagram/api/RequestParams;

    return-object v0
.end method

.method protected abstract getPath()Ljava/lang/String;
.end method

.method public getRequest()Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mRequest:Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/api/ApiHttpClient;->getInstance(Landroid/content/Context;)Lcom/instagram/api/ApiHttpClient;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->isSecure()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/instagram/api/loaderrequest/ApiUrlHelper;->expandPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mRequest:Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mRequest:Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    return-object v0
.end method

.method public handleErrorInBackground(Lcom/instagram/api/ApiResponse;)V
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
    .line 95
    .local p0, this:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;,"Lcom/instagram/api/loaderrequest/AbstractLoaderRequest<TT;>;"
    .local p1, apiResponse:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<TT;>;"
    return-void
.end method

.method protected isSecure()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public isTest()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public perform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    iput-object v3, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mRequest:Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    .line 45
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mLoaderManager:Landroid/support/v4/app/af;

    iget v1, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mLoaderId:I

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->constructLoaderCallbacks()Lcom/instagram/api/ApiRequestLoaderCallbacks;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/af;->b(ILandroid/os/Bundle;Landroid/support/v4/app/ag;)Landroid/support/v4/a/c;

    .line 46
    return-void
.end method

.method public preProcessInBackground()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public abstract processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method protected register()V
    .locals 6

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mLoaderManager:Landroid/support/v4/app/af;

    iget v1, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mLoaderId:I

    const/4 v2, 0x0

    new-instance v3, Lcom/instagram/api/BaseApiLoaderCallbacks;

    iget-object v4, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    iget-object v5, p0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5, p0}, Lcom/instagram/api/BaseApiLoaderCallbacks;-><init>(Lcom/instagram/api/AbstractApiCallbacks;Landroid/content/Context;Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/af;->a(ILandroid/os/Bundle;Landroid/support/v4/app/ag;)Landroid/support/v4/a/c;

    .line 41
    return-void
.end method

.method public shouldShowAlertForRequest(Lcom/instagram/api/ApiResponse;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;,"Lcom/instagram/api/loaderrequest/AbstractLoaderRequest<TT;>;"
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
