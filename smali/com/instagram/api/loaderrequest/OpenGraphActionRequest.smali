.class public Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "OpenGraphActionRequest.java"


# instance fields
.field private mEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V
    .locals 1
    .parameter "context"
    .parameter "loaderManager"
    .parameter "callbacks"

    .prologue
    .line 23
    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;->mEnable:Z

    .line 24
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 52
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;->mEnable:Z

    if-eqz v0, :cond_0

    const-string v0, "fb/enable_og_action/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "fb/disable_og_action/"

    goto :goto_0
.end method

.method public perform(IZ)V
    .locals 3
    .parameter "actionId"
    .parameter "enable"

    .prologue
    .line 27
    iput-boolean p2, p0, Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;->mEnable:Z

    .line 29
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getAccountParams()Lcom/instagram/api/RequestParams;

    move-result-object v0

    .line 30
    const-string v1, "open_graph_action"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/api/RequestParams;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 32
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->perform()V

    .line 33
    return-void
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "response"

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method
