.class public Lcom/instagram/android/login/request/CheckUsernameRequest;
.super Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
.source "CheckUsernameRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest",
        "<",
        "Lcom/instagram/android/model/CheckUsernameResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "CheckUsernameRequest"


# instance fields
.field private mUsername:Ljava/lang/String;


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
            "Lcom/instagram/android/model/CheckUsernameResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p4, callbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/CheckUsernameResponse;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 3
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 51
    new-instance v0, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v0}, Lcom/instagram/util/JsonBuilder;-><init>()V

    const-string v1, "username"

    iget-object v2, p0, Lcom/instagram/android/login/request/CheckUsernameRequest;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {p3, v0}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "users/check_username/"

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/android/login/request/CheckUsernameRequest;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public perform(Ljava/lang/String;)V
    .locals 1
    .parameter "username"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/android/login/request/CheckUsernameRequest;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/instagram/android/login/request/CheckUsernameRequest;->mUsername:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/instagram/android/login/request/CheckUsernameRequest;->perform()V

    goto :goto_0
.end method

.method public processResponseField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;Lcom/instagram/api/StreamingApiResponse;)Z
    .locals 3
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
            "Lcom/instagram/android/model/CheckUsernameResponse;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, response:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<Lcom/instagram/android/model/CheckUsernameResponse;>;"
    const/4 v1, 0x1

    .line 63
    const-string v0, "username"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p3}, Lcom/instagram/api/StreamingApiResponse;->getSuccessObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/CheckUsernameResponse;

    .line 66
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/instagram/android/model/CheckUsernameResponse;

    invoke-direct {v0}, Lcom/instagram/android/model/CheckUsernameResponse;-><init>()V

    .line 70
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 71
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Lcom/instagram/android/model/CheckUsernameResponse;->setUsername(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p3, v0}, Lcom/instagram/api/StreamingApiResponse;->setSuccessObject(Ljava/lang/Object;)V

    move v0, v1

    .line 93
    :goto_0
    return v0

    .line 77
    :cond_1
    const-string v0, "available"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {p3}, Lcom/instagram/api/StreamingApiResponse;->getSuccessObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/CheckUsernameResponse;

    .line 80
    if-nez v0, :cond_2

    .line 81
    new-instance v0, Lcom/instagram/android/model/CheckUsernameResponse;

    invoke-direct {v0}, Lcom/instagram/android/model/CheckUsernameResponse;-><init>()V

    .line 84
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 85
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v2

    .line 87
    invoke-virtual {v0, v2}, Lcom/instagram/android/model/CheckUsernameResponse;->setIsAvailable(Z)V

    .line 89
    invoke-virtual {p3, v0}, Lcom/instagram/api/StreamingApiResponse;->setSuccessObject(Ljava/lang/Object;)V

    move v0, v1

    .line 90
    goto :goto_0

    .line 93
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
