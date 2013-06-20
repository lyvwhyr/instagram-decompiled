.class public Lcom/instagram/api/loaderrequest/BlockStatusUpdateRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "BlockStatusUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mUser:Lcom/instagram/android/model/User;

.field private mVerb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V
    .locals 1
    .parameter "context"
    .parameter "loaderManager"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/af;",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, callbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 3
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 36
    new-instance v0, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v0}, Lcom/instagram/util/JsonBuilder;-><init>()V

    const-string v1, "user_id"

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/BlockStatusUpdateRequest;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v2}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {p3, v0}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    const-string v0, "friendships/%s/%s/"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/BlockStatusUpdateRequest;->mVerb:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/BlockStatusUpdateRequest;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v3}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleErrorInBackground(Lcom/instagram/api/ApiResponse;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, voidApiResponse:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/BlockStatusUpdateRequest;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/BlockStatusUpdateRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/User;->revertBlockStatus(Landroid/content/Context;)V

    .line 64
    invoke-super {p0, p1}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->handleErrorInBackground(Lcom/instagram/api/ApiResponse;)V

    .line 65
    return-void
.end method

.method public perform(Lcom/instagram/android/model/User;Ljava/lang/String;)V
    .locals 0
    .parameter "user"
    .parameter "verb"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/BlockStatusUpdateRequest;->mUser:Lcom/instagram/android/model/User;

    .line 47
    iput-object p2, p0, Lcom/instagram/api/loaderrequest/BlockStatusUpdateRequest;->mVerb:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/BlockStatusUpdateRequest;->perform()V

    .line 49
    return-void
.end method

.method public bridge synthetic processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/instagram/api/loaderrequest/BlockStatusUpdateRequest;->processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Void;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, apiResponse:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/BlockStatusUpdateRequest;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    const-string v2, "friendship_status"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/BlockStatusUpdateRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/instagram/android/model/User;->updateFollowStatus(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method
