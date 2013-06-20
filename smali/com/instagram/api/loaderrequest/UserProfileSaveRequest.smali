.class public Lcom/instagram/api/loaderrequest/UserProfileSaveRequest;
.super Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
.source "UserProfileSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUser:Lcom/instagram/android/model/UserForEditing;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/android/model/UserForEditing;Lcom/instagram/api/AbstractApiCallbacks;)V
    .locals 1
    .parameter "context"
    .parameter "loaderManager"
    .parameter "user"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/af;",
            "Lcom/instagram/android/model/UserForEditing;",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p4, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Lcom/instagram/android/model/User;>;"
    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 35
    iput-object p3, p0, Lcom/instagram/api/loaderrequest/UserProfileSaveRequest;->mUser:Lcom/instagram/android/model/UserForEditing;

    .line 36
    return-void
.end method

.method private isCurrentUser(Lcom/instagram/android/model/User;)Z
    .locals 2
    .parameter "currentUser"

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/UserProfileSaveRequest;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v1}, Lcom/instagram/android/model/UserForEditing;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 70
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Lcom/instagram/api/RequestParams;
    .locals 4

    .prologue
    .line 50
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v1}, Lcom/instagram/util/JsonBuilder;-><init>()V

    const-string v2, "gender"

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/UserProfileSaveRequest;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v3}, Lcom/instagram/android/model/UserForEditing;->getGender()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v1

    const-string v2, "username"

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/UserProfileSaveRequest;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v3}, Lcom/instagram/android/model/UserForEditing;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v1

    const-string v2, "first_name"

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/UserProfileSaveRequest;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v3}, Lcom/instagram/android/model/UserForEditing;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v1

    const-string v2, "phone_number"

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/UserProfileSaveRequest;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v3}, Lcom/instagram/android/model/UserForEditing;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v1

    const-string v2, "email"

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/UserProfileSaveRequest;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v3}, Lcom/instagram/android/model/UserForEditing;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v1

    const-string v2, "external_url"

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/UserProfileSaveRequest;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v3}, Lcom/instagram/android/model/UserForEditing;->getExternalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v1

    const-string v2, "biography"

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/UserProfileSaveRequest;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v3}, Lcom/instagram/android/model/UserForEditing;->getBiography()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 65
    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "accounts/edit_profile/"

    return-object v0
.end method

.method protected isSecure()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
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
    .line 76
    .local p3, response:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<Lcom/instagram/android/model/User;>;"
    const-string v0, "user"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 79
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    .line 81
    invoke-direct {p0, v0}, Lcom/instagram/api/loaderrequest/UserProfileSaveRequest;->isCurrentUser(Lcom/instagram/android/model/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/instagram/android/service/UserStore;->allowCurrentUserUpdate()V

    .line 89
    :cond_0
    invoke-static {p2}, Lcom/instagram/android/model/User;->fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/User;

    move-result-object v0

    .line 90
    invoke-virtual {p3, v0}, Lcom/instagram/api/StreamingApiResponse;->setSuccessObject(Ljava/lang/Object;)V

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
