.class public Lcom/instagram/android/loader/XAuthResponse;
.super Ljava/lang/Object;
.source "XAuthResponse.java"


# instance fields
.field private final mParams:Lcom/instagram/android/loader/XAuthResponse$Params;


# direct methods
.method private constructor <init>(Lcom/instagram/android/loader/XAuthResponse$Params;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/instagram/android/loader/XAuthResponse;->mParams:Lcom/instagram/android/loader/XAuthResponse$Params;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/loader/XAuthResponse$Params;Lcom/instagram/android/loader/XAuthResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/instagram/android/loader/XAuthResponse;-><init>(Lcom/instagram/android/loader/XAuthResponse$Params;)V

    return-void
.end method

.method static parse(Ljava/lang/String;)Lcom/instagram/android/loader/XAuthResponse;
    .locals 8
    .parameter "responseString"

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 76
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 77
    const-string v2, "&"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 79
    new-instance v3, Lcom/instagram/android/loader/XAuthResponse$Builder;

    invoke-direct {v3}, Lcom/instagram/android/loader/XAuthResponse$Builder;-><init>()V

    .line 82
    :try_start_0
    array-length v4, v2

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v2, v0

    .line 83
    const-string v6, "="

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 84
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :cond_1
    const-string v0, "oauth_token"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/instagram/android/loader/XAuthResponse$Builder;->setToken(Ljava/lang/String;)Lcom/instagram/android/loader/XAuthResponse$Builder;

    move-result-object v2

    const-string v0, "oauth_token_secret"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/instagram/android/loader/XAuthResponse$Builder;->setSecret(Ljava/lang/String;)Lcom/instagram/android/loader/XAuthResponse$Builder;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_2
    invoke-virtual {v3}, Lcom/instagram/android/loader/XAuthResponse$Builder;->create()Lcom/instagram/android/loader/XAuthResponse;

    move-result-object v0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v3, p0}, Lcom/instagram/android/loader/XAuthResponse$Builder;->setErrorMessage(Ljava/lang/String;)Lcom/instagram/android/loader/XAuthResponse$Builder;

    goto :goto_2
.end method

.method static parse(Lorg/apache/http/HttpResponse;)Lcom/instagram/android/loader/XAuthResponse;
    .locals 2
    .parameter "response"

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 62
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 63
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :goto_0
    invoke-static {v0}, Lcom/instagram/android/loader/XAuthResponse;->parse(Ljava/lang/String;)Lcom/instagram/android/loader/XAuthResponse;

    move-result-object v0

    return-object v0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/instagram/android/loader/XAuthResponse;->mParams:Lcom/instagram/android/loader/XAuthResponse$Params;

    #getter for: Lcom/instagram/android/loader/XAuthResponse$Params;->errorMessage:Ljava/lang/String;
    invoke-static {v0}, Lcom/instagram/android/loader/XAuthResponse$Params;->access$300(Lcom/instagram/android/loader/XAuthResponse$Params;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/instagram/android/loader/XAuthResponse;->mParams:Lcom/instagram/android/loader/XAuthResponse$Params;

    #getter for: Lcom/instagram/android/loader/XAuthResponse$Params;->secret:Ljava/lang/String;
    invoke-static {v0}, Lcom/instagram/android/loader/XAuthResponse$Params;->access$200(Lcom/instagram/android/loader/XAuthResponse$Params;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/instagram/android/loader/XAuthResponse;->mParams:Lcom/instagram/android/loader/XAuthResponse$Params;

    #getter for: Lcom/instagram/android/loader/XAuthResponse$Params;->token:Ljava/lang/String;
    invoke-static {v0}, Lcom/instagram/android/loader/XAuthResponse$Params;->access$100(Lcom/instagram/android/loader/XAuthResponse$Params;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public success()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/instagram/android/loader/XAuthResponse;->mParams:Lcom/instagram/android/loader/XAuthResponse$Params;

    #getter for: Lcom/instagram/android/loader/XAuthResponse$Params;->errorMessage:Ljava/lang/String;
    invoke-static {v0}, Lcom/instagram/android/loader/XAuthResponse$Params;->access$300(Lcom/instagram/android/loader/XAuthResponse$Params;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
