.class public Lcom/instagram/facebook/FacebookAccountsGraphRequest;
.super Lcom/instagram/facebook/AbstractFacebookGraphRequest;
.source "FacebookAccountsGraphRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/facebook/AbstractFacebookGraphRequest",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/instagram/android/model/FacebookPostingAccount;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FacebookAccountsGraphRequest"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V
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
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FacebookPostingAccount;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p4, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Ljava/util/List<Lcom/instagram/android/model/FacebookPostingAccount;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/facebook/AbstractFacebookGraphRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 39
    return-void
.end method

.method private extractAccounts(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/util/List;
    .locals 4
    .parameter "rootNode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FacebookPostingAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/service/CustomObjectMapper;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v2

    .line 81
    sget-object v3, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    invoke-virtual {v2, v3}, Lcom/instagram/android/service/CustomObjectMapper;->setPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 84
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/instagram/android/service/CustomObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/core/TreeNode;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    new-instance v3, Lcom/instagram/facebook/FacebookAccountsGraphRequest$2;

    invoke-direct {v3, p0}, Lcom/instagram/facebook/FacebookAccountsGraphRequest$2;-><init>(Lcom/instagram/facebook/FacebookAccountsGraphRequest;)V

    invoke-virtual {v2, v0, v3}, Lcom/instagram/android/service/CustomObjectMapper;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0

    .line 86
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getParams()Lcom/instagram/api/RequestParams;
    .locals 3

    .prologue
    .line 43
    invoke-super {p0}, Lcom/instagram/facebook/AbstractFacebookGraphRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v0

    .line 44
    const-string v1, "type"

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "me/accounts/"

    return-object v0
.end method

.method public bridge synthetic processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/instagram/facebook/FacebookAccountsGraphRequest;->processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FacebookPostingAccount;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FacebookPostingAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/util/List<Lcom/instagram/android/model/FacebookPostingAccount;>;>;"
    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/facebook/FacebookAccountsGraphRequest;->extractAccounts(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/util/List;

    move-result-object v1

    .line 59
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 60
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/FacebookPostingAccount;

    .line 62
    invoke-virtual {v0}, Lcom/instagram/android/model/FacebookPostingAccount;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Lcom/instagram/facebook/FacebookAccountsGraphRequest$1;

    invoke-direct {v0, p0}, Lcom/instagram/facebook/FacebookAccountsGraphRequest$1;-><init>(Lcom/instagram/facebook/FacebookAccountsGraphRequest;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    return-object v1
.end method
