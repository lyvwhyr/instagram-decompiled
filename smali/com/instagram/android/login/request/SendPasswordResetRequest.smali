.class public Lcom/instagram/android/login/request/SendPasswordResetRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "SendPasswordResetRequest.java"


# instance fields
.field private mEmail:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Ljava/lang/String;>;"
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 4
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/instagram/android/login/request/SendPasswordResetRequest;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 52
    const-string v1, "user_id"

    .line 53
    iget-object v0, p0, Lcom/instagram/android/login/request/SendPasswordResetRequest;->mUserId:Ljava/lang/String;

    .line 59
    :goto_0
    new-instance v2, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v2}, Lcom/instagram/util/JsonBuilder;-><init>()V

    invoke-virtual {v2, v1, v0}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v0

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

    invoke-virtual {v0}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {p3, v0}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    const-string v1, "user_email"

    .line 56
    iget-object v0, p0, Lcom/instagram/android/login/request/SendPasswordResetRequest;->mEmail:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "accounts/send_password_reset/"

    return-object v0
.end method

.method protected isSecure()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public performWithEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/instagram/android/login/request/SendPasswordResetRequest;->mEmail:Ljava/lang/String;

    .line 41
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->perform()V

    .line 42
    return-void
.end method

.method public performWithUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/instagram/android/login/request/SendPasswordResetRequest;->mUserId:Ljava/lang/String;

    .line 36
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->perform()V

    .line 37
    return-void
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "response"

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method
