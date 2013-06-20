.class public Lcom/instagram/api/loaderrequest/UserDetailRequest;
.super Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
.source "UserDetailRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "UserDetailRequest"


# instance fields
.field private mUserId:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V
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
            "Lcom/instagram/api/AbstractStreamingApiCallbacks",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p4, callbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/User;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 31
    return-void
.end method

.method private isCurrentUser(Lcom/instagram/android/model/User;)Z
    .locals 2
    .parameter "currentUser"

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/UserDetailRequest;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/UserDetailRequest;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/UserDetailRequest;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 62
    invoke-virtual {p1, p2}, Lcom/instagram/api/ApiHttpClient;->getRequest(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 36
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/UserDetailRequest;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "users/%s/info/"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/UserDetailRequest;->mUserId:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/UserDetailRequest;->mUserName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "users/%s/usernameinfo/"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/UserDetailRequest;->mUserName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    const-string v0, "UserDetailRequest"

    const-string v1, "No path found"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestedUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/UserDetailRequest;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public performWithUserId(Ljava/lang/String;)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/UserDetailRequest;->mUserId:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/UserDetailRequest;->mUserName:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/UserDetailRequest;->perform()V

    .line 51
    return-void
.end method

.method public performWithUserName(Ljava/lang/String;)V
    .locals 1
    .parameter "userName"

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/UserDetailRequest;->mUserId:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/UserDetailRequest;->mUserName:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/UserDetailRequest;->perform()V

    .line 57
    return-void
.end method

.method public processResponseField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;Lcom/instagram/api/StreamingApiResponse;)Z
    .locals 1
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
            "Lcom/instagram/android/model/User;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p3, response:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<Lcom/instagram/android/model/User;>;"
    const-string v0, "user"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 71
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    .line 73
    invoke-direct {p0, v0}, Lcom/instagram/api/loaderrequest/UserDetailRequest;->isCurrentUser(Lcom/instagram/android/model/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/instagram/android/service/UserStore;->allowCurrentUserUpdate()V

    .line 81
    :cond_0
    invoke-static {p2}, Lcom/instagram/android/model/User;->fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/User;

    move-result-object v0

    .line 82
    invoke-virtual {p3, v0}, Lcom/instagram/api/StreamingApiResponse;->setSuccessObject(Ljava/lang/Object;)V

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
