.class public Lcom/instagram/android/login/request/LoginRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "LoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;"
    }
.end annotation


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
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, callbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Lcom/instagram/android/model/User;>;"
    sget v0, Lcom/facebook/g;->request_id_login:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 38
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected constructBaseBuilder()Lcom/instagram/util/JsonBuilder;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v0}, Lcom/instagram/util/JsonBuilder;-><init>()V

    const-string v1, "device_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/util/ApplicationUuidHelper;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v0

    const-string v1, "guid"

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/util/ApplicationUuidHelper;->generateOldStyleUuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "accounts/login/"

    return-object v0
.end method

.method protected isSecure()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public perform(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "username"
    .parameter "password"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/instagram/android/login/request/LoginRequest;->constructBaseBuilder()Lcom/instagram/util/JsonBuilder;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lcom/instagram/android/login/request/LoginRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 53
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->perform()V

    .line 54
    return-void
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Lcom/instagram/android/model/User;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)",
            "Lcom/instagram/android/model/User;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/User;>;"
    const-string v0, "logged_in_user"

    const-class v1, Lcom/instagram/android/model/User;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/ApiResponse;->readRootValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    return-object v0
.end method

.method public bridge synthetic processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/instagram/android/login/request/LoginRequest;->processInBackground(Lcom/instagram/api/ApiResponse;)Lcom/instagram/android/model/User;

    move-result-object v0

    return-object v0
.end method
