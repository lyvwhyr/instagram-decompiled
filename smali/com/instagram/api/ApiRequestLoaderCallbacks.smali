.class public Lcom/instagram/api/ApiRequestLoaderCallbacks;
.super Lcom/instagram/api/BaseApiLoaderCallbacks;
.source "ApiRequestLoaderCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/BaseApiLoaderCallbacks",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ApiRequestLoaderCallbacks"


# instance fields
.field private final mApiRequest:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;Lcom/instagram/api/AbstractApiCallbacks;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
            "<TT;>;",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lcom/instagram/api/ApiRequestLoaderCallbacks;,"Lcom/instagram/api/ApiRequestLoaderCallbacks<TT;>;"
    .local p2, request:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;,"Lcom/instagram/api/loaderrequest/AbstractLoaderRequest<TT;>;"
    .local p3, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<TT;>;"
    invoke-direct {p0, p3, p1, p2}, Lcom/instagram/api/BaseApiLoaderCallbacks;-><init>(Lcom/instagram/api/AbstractApiCallbacks;Landroid/content/Context;Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;)V

    .line 27
    iput-object p2, p0, Lcom/instagram/api/ApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/api/ApiRequestLoaderCallbacks;)Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/instagram/api/ApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;

    return-object v0
.end method


# virtual methods
.method protected onApiResponseObjectCreated(Lcom/instagram/api/ApiResponse;)V
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
    .line 108
    .local p0, this:Lcom/instagram/api/ApiRequestLoaderCallbacks;,"Lcom/instagram/api/ApiRequestLoaderCallbacks<TT;>;"
    .local p1, apiResponse:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<TT;>;"
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/c;
    .locals 2
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/a/c",
            "<",
            "Lcom/instagram/api/ApiResponse",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Lcom/instagram/api/ApiRequestLoaderCallbacks;,"Lcom/instagram/api/ApiRequestLoaderCallbacks<TT;>;"
    invoke-virtual {p0}, Lcom/instagram/api/ApiRequestLoaderCallbacks;->getApiCallbacks()Lcom/instagram/api/AbstractApiCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/instagram/api/ApiRequestLoaderCallbacks;->getApiCallbacks()Lcom/instagram/api/AbstractApiCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestStart()V

    .line 37
    :cond_0
    new-instance v0, Lcom/instagram/api/ApiRequestLoaderCallbacks$1;

    iget-object v1, p0, Lcom/instagram/api/ApiRequestLoaderCallbacks;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/instagram/api/ApiRequestLoaderCallbacks$1;-><init>(Lcom/instagram/api/ApiRequestLoaderCallbacks;Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/a/c;Lcom/instagram/api/ApiResponse;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/c",
            "<",
            "Lcom/instagram/api/ApiResponse",
            "<TT;>;>;",
            "Lcom/instagram/api/ApiResponse",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/instagram/api/ApiRequestLoaderCallbacks;,"Lcom/instagram/api/ApiRequestLoaderCallbacks<TT;>;"
    .local p1, apiResponseLoader:Landroid/support/v4/a/c;,"Landroid/support/v4/a/c<Lcom/instagram/api/ApiResponse<TT;>;>;"
    .local p2, tApiResponse:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/instagram/api/BaseApiLoaderCallbacks;->onLoadFinished(Landroid/support/v4/a/c;Lcom/instagram/api/ApiResponse;)V

    .line 114
    iget-object v0, p0, Lcom/instagram/api/ApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/ApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;

    invoke-virtual {v1}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/af;->a(I)V

    .line 115
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/a/c;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    .local p0, this:Lcom/instagram/api/ApiRequestLoaderCallbacks;,"Lcom/instagram/api/ApiRequestLoaderCallbacks<TT;>;"
    check-cast p2, Lcom/instagram/api/ApiResponse;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/instagram/api/ApiRequestLoaderCallbacks;->onLoadFinished(Landroid/support/v4/a/c;Lcom/instagram/api/ApiResponse;)V

    return-void
.end method
