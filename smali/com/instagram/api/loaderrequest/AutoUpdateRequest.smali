.class public Lcom/instagram/api/loaderrequest/AutoUpdateRequest;
.super Lcom/instagram/facebook/AbstractFacebookGraphRequest;
.source "AutoUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/facebook/AbstractFacebookGraphRequest",
        "<",
        "Lcom/instagram/android/model/AutoUpdateInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIELD_CLIENT_CONFIG:Ljava/lang/String; = "client_config"

.field private static final TAG:Ljava/lang/String; = "AutoUpdateRequest"


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
            "Lcom/instagram/android/model/AutoUpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Lcom/instagram/android/model/AutoUpdateInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/facebook/AbstractFacebookGraphRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected getParams()Lcom/instagram/api/RequestParams;
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Lcom/instagram/facebook/AbstractFacebookGraphRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v0

    .line 41
    const-string v1, "fields"

    const-string v2, "client_config"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "app"

    return-object v0
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Lcom/instagram/android/model/AutoUpdateInfo;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Lcom/instagram/android/model/AutoUpdateInfo;",
            ">;)",
            "Lcom/instagram/android/model/AutoUpdateInfo;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/AutoUpdateInfo;>;"
    new-instance v1, Lcom/instagram/android/model/AutoUpdateInfo;

    invoke-direct {v1}, Lcom/instagram/android/model/AutoUpdateInfo;-><init>()V

    .line 55
    invoke-static {}, Lcom/instagram/util/BuildInfoUtil;->getAppType()Lcom/instagram/android/InstagramAppType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/InstagramAppType;->getClientConfigKey()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 57
    const-string v3, "client_config"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "client_config"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 70
    :goto_0
    return-object v0

    .line 60
    :cond_1
    const-string v3, "client_config"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/service/CustomObjectMapper;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v2

    .line 62
    sget-object v3, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    invoke-virtual {v2, v3}, Lcom/instagram/android/service/CustomObjectMapper;->setPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 65
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/instagram/android/service/CustomObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/core/TreeNode;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    new-instance v3, Lcom/instagram/api/loaderrequest/AutoUpdateRequest$1;

    invoke-direct {v3, p0}, Lcom/instagram/api/loaderrequest/AutoUpdateRequest$1;-><init>(Lcom/instagram/api/loaderrequest/AutoUpdateRequest;)V

    invoke-virtual {v2, v0, v3}, Lcom/instagram/android/service/CustomObjectMapper;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/AutoUpdateInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/instagram/api/loaderrequest/AutoUpdateRequest;->processInBackground(Lcom/instagram/api/ApiResponse;)Lcom/instagram/android/model/AutoUpdateInfo;

    move-result-object v0

    return-object v0
.end method
