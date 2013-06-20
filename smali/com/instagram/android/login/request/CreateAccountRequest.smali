.class public Lcom/instagram/android/login/request/CreateAccountRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "CreateAccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CreateAccountRequest"


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
    .line 80
    .local p3, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Lcom/instagram/android/model/User;>;"
    sget v0, Lcom/facebook/g;->request_id_create_account:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 81
    return-void
.end method

.method private constructErrorMessage(Lcom/instagram/api/ApiResponse;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/User;>;"
    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "errors"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 133
    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->unknown_error_occured:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 136
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 138
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 139
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 106
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "accounts/create/"

    return-object v0
.end method

.method protected isSecure()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public perform(Lcom/instagram/android/login/request/CreateAccountRequest$Params;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/instagram/android/login/request/CreateAccountRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v0

    .line 86
    #calls: Lcom/instagram/android/login/request/CreateAccountRequest$Params;->toJsonString()Ljava/lang/String;
    invoke-static {p1}, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->access$000(Lcom/instagram/android/login/request/CreateAccountRequest$Params;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 88
    iget-object v1, p1, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->profilePic:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p1, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->profilePic:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->compressedInputStream(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;

    move-result-object v1

    .line 92
    const-string v2, "profile_pic"

    const-string v3, "profile_pic"

    invoke-virtual {v0, v2, v1, v3}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->perform()V

    .line 96
    return-void
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Lcom/instagram/android/model/User;
    .locals 3
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
    .line 111
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/User;>;"
    const/4 v0, 0x0

    .line 113
    const-string v1, "created_user"

    invoke-virtual {p1, v1}, Lcom/instagram/api/ApiResponse;->hasRootValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    const-string v0, "created_user"

    const-class v1, Lcom/instagram/android/model/User;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/ApiResponse;->readRootValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable parse created user account"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lcom/instagram/android/login/request/CreateAccountRequest;->constructErrorMessage(Lcom/instagram/api/ApiResponse;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p1, v1}, Lcom/instagram/api/ApiResponse;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/instagram/android/login/request/CreateAccountRequest;->processInBackground(Lcom/instagram/api/ApiResponse;)Lcom/instagram/android/model/User;

    move-result-object v0

    return-object v0
.end method
