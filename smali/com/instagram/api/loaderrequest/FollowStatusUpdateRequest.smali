.class public Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "FollowStatusUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mAction:Lcom/instagram/android/model/User$UserAction;

.field private mUser:Lcom/instagram/android/model/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/android/model/User$UserAction;Lcom/instagram/android/model/User;)V
    .locals 2
    .parameter "context"
    .parameter "loaderManager"
    .parameter "action"
    .parameter "user"

    .prologue
    .line 27
    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 28
    iput-object p3, p0, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;->mAction:Lcom/instagram/android/model/User$UserAction;

    .line 29
    iput-object p4, p0, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;->mUser:Lcom/instagram/android/model/User;

    .line 30
    return-void
.end method

.method private getVerb(Lcom/instagram/android/model/User$UserAction;)Ljava/lang/String;
    .locals 2
    .parameter "action"

    .prologue
    .line 38
    sget-object v0, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest$1;->$SwitchMap$com$instagram$android$model$User$UserAction:[I

    invoke-virtual {p1}, Lcom/instagram/android/model/User$UserAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 49
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    const-string v0, "create"

    goto :goto_0

    .line 43
    :pswitch_1
    const-string v0, "destroy"

    goto :goto_0

    .line 45
    :pswitch_2
    const-string v0, "ignore"

    goto :goto_0

    .line 47
    :pswitch_3
    const-string v0, "approve"

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 3
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 56
    new-instance v0, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v0}, Lcom/instagram/util/JsonBuilder;-><init>()V

    const-string v1, "user_id"

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v2}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {p3, v0}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/instagram/android/login/fragment/RegisterFragment;->incrementNumberOfUsersFollowed()V

    .line 64
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    const-string v0, "friendships/%s/%s/"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;->mAction:Lcom/instagram/android/model/User$UserAction;

    invoke-direct {p0, v3}, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;->getVerb(Lcom/instagram/android/model/User$UserAction;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;->mUser:Lcom/instagram/android/model/User;

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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, objectApiResponse:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/User;->revertFollowStatus(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, apiResponse:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    const-string v2, "friendship_status"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/instagram/android/model/User;->updateFollowStatus(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;Landroid/content/Context;)V

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldShowAlertForRequest(Lcom/instagram/api/ApiResponse;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return v0
.end method
