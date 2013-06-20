.class public Lcom/instagram/android/login/request/LookupRequest;
.super Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
.source "LookupRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest",
        "<",
        "Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;",
        ">;"
    }
.end annotation


# instance fields
.field private mArgument:Ljava/lang/String;

.field private mLookupRequestModel:Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V
    .locals 2
    .parameter "loaderManager"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/af;",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;>;"
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 26
    new-instance v0, Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;-><init>(Lcom/instagram/android/login/request/LookupRequest;)V

    iput-object v0, p0, Lcom/instagram/android/login/request/LookupRequest;->mLookupRequestModel:Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;

    .line 36
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 3
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 46
    new-instance v0, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v0}, Lcom/instagram/util/JsonBuilder;-><init>()V

    const-string v1, "q"

    iget-object v2, p0, Lcom/instagram/android/login/request/LookupRequest;->mArgument:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {p3, v0}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "users/lookup/"

    return-object v0
.end method

.method protected isSecure()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public perform(Ljava/lang/String;)V
    .locals 0
    .parameter "argument"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/instagram/android/login/request/LookupRequest;->mArgument:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/instagram/android/login/request/LookupRequest;->perform()V

    .line 31
    return-void
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
            "Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, response:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;>;"
    const/4 v0, 0x1

    .line 60
    const-string v1, "user"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 62
    iget-object v1, p0, Lcom/instagram/android/login/request/LookupRequest;->mLookupRequestModel:Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;

    invoke-static {p2}, Lcom/instagram/android/model/User;->fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;->setUser(Lcom/instagram/android/model/User;)V

    .line 63
    iget-object v1, p0, Lcom/instagram/android/login/request/LookupRequest;->mLookupRequestModel:Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;

    invoke-virtual {p3, v1}, Lcom/instagram/api/StreamingApiResponse;->setSuccessObject(Ljava/lang/Object;)V

    .line 71
    :goto_0
    return v0

    .line 65
    :cond_0
    const-string v1, "email_sent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 67
    iget-object v1, p0, Lcom/instagram/android/login/request/LookupRequest;->mLookupRequestModel:Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;->setEmailSent(Z)V

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
