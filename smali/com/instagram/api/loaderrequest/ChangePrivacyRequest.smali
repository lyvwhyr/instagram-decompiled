.class public Lcom/instagram/api/loaderrequest/ChangePrivacyRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "ChangePrivacyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mMakePrivate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;Z)V
    .locals 1
    .parameter "context"
    .parameter "loaderManager"
    .parameter
    .parameter "makePrivate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/af;",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p3, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 22
    iput-boolean p4, p0, Lcom/instagram/api/loaderrequest/ChangePrivacyRequest;->mMakePrivate:Z

    .line 23
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
    .line 31
    iget-boolean v0, p0, Lcom/instagram/api/loaderrequest/ChangePrivacyRequest;->mMakePrivate:Z

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "accounts/set_private/"

    .line 34
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "accounts/set_public/"

    goto :goto_0
.end method

.method public perform()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->perform()V

    .line 27
    return-void
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Boolean;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Boolean;>;"
    iget-boolean v0, p0, Lcom/instagram/api/loaderrequest/ChangePrivacyRequest;->mMakePrivate:Z

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    .line 49
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0
.end method

.method public bridge synthetic processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/instagram/api/loaderrequest/ChangePrivacyRequest;->processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
