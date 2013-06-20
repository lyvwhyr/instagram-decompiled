.class public Lcom/instagram/api/loaderrequest/ChangePasswordRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "ChangePasswordRequest.java"


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
.field private final mNewPassword:Ljava/lang/String;

.field private final mNewPasswordConfirmation:Ljava/lang/String;

.field private final mOldPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/instagram/api/AbstractApiCallbacks;)V
    .locals 1
    .parameter "context"
    .parameter "loaderManager"
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "newPasswordConfirmation"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/af;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p6, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p6}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 31
    iput-object p3, p0, Lcom/instagram/api/loaderrequest/ChangePasswordRequest;->mOldPassword:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/instagram/api/loaderrequest/ChangePasswordRequest;->mNewPassword:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/instagram/api/loaderrequest/ChangePasswordRequest;->mNewPasswordConfirmation:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 62
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Lcom/instagram/api/RequestParams;
    .locals 4

    .prologue
    .line 48
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v1}, Lcom/instagram/util/JsonBuilder;-><init>()V

    const-string v2, "old_password"

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/ChangePasswordRequest;->mOldPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v1

    const-string v2, "new_password1"

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/ChangePasswordRequest;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v1

    const-string v2, "new_password2"

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/ChangePasswordRequest;->mNewPasswordConfirmation:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 57
    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "accounts/change_password/"

    return-object v0
.end method

.method protected isSecure()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/instagram/api/loaderrequest/ChangePasswordRequest;->processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Void;
    .locals 1
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
    .line 67
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Void;>;"
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
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    return v0
.end method
