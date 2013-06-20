.class public Lcom/instagram/api/ObjectMappedApiResponse;
.super Lcom/instagram/api/ApiResponse;
.source "ObjectMappedApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/ApiResponse",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mErrorMessage:Ljava/lang/String;

.field private mMapper:Lcom/instagram/android/service/CustomObjectMapper;

.field private mNetworkRequest:Z

.field mRootNode:Lcom/fasterxml/jackson/databind/JsonNode;

.field mSuccessObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "jsonString"

    .prologue
    .line 77
    .local p0, this:Lcom/instagram/api/ObjectMappedApiResponse;,"Lcom/instagram/api/ObjectMappedApiResponse<TT;>;"
    invoke-direct {p0}, Lcom/instagram/api/ApiResponse;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/instagram/android/service/CustomObjectMapper;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/ObjectMappedApiResponse;->mMapper:Lcom/instagram/android/service/CustomObjectMapper;

    .line 79
    iget-object v0, p0, Lcom/instagram/api/ObjectMappedApiResponse;->mMapper:Lcom/instagram/android/service/CustomObjectMapper;

    const-class v1, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, p2, v1}, Lcom/instagram/android/service/CustomObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    iput-object v0, p0, Lcom/instagram/api/ObjectMappedApiResponse;->mRootNode:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 67
    .local p0, this:Lcom/instagram/api/ObjectMappedApiResponse;,"Lcom/instagram/api/ObjectMappedApiResponse<TT;>;"
    invoke-direct {p0}, Lcom/instagram/api/ApiResponse;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/instagram/api/ObjectMappedApiResponse;->mErrorMessage:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static createWithError(Ljava/lang/String;)Lcom/instagram/api/ObjectMappedApiResponse;
    .locals 3
    .parameter "error"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/instagram/api/ObjectMappedApiResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/instagram/api/ObjectMappedApiResponse;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/k;->network_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    :cond_0
    invoke-direct {v0, p0}, Lcom/instagram/api/ObjectMappedApiResponse;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseResponse(Landroid/content/Context;Lch/boye/httpclientandroidlib/HttpResponse;)Lcom/instagram/api/ObjectMappedApiResponse;
    .locals 4
    .parameter "context"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lch/boye/httpclientandroidlib/HttpResponse;",
            ")",
            "Lcom/instagram/api/ObjectMappedApiResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    .line 36
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 38
    new-instance v0, Lcom/instagram/api/ObjectMappedApiResponse;

    invoke-direct {v0, p0, v2}, Lcom/instagram/api/ObjectMappedApiResponse;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 41
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/ObjectMappedApiResponse;->setStatusLine(Lch/boye/httpclientandroidlib/StatusLine;)V

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/api/ObjectMappedApiResponse;->setIsNetworkResponse(Z)V

    .line 44
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    .line 45
    invoke-virtual {v0}, Lcom/instagram/api/ObjectMappedApiResponse;->isOk()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_1

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/instagram/api/ObjectMappedApiResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/facebook/k;->unknown_error_occured:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    if-nez v2, :cond_2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/instagram/api/ObjectMappedApiResponse;->setErrorMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    move-object v1, v2

    .line 48
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->network_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/ObjectMappedApiResponse;->createWithError(Ljava/lang/String;)Lcom/instagram/api/ObjectMappedApiResponse;

    move-result-object v0

    goto :goto_1
.end method

.method private parseSystemMessageNode(Ljava/util/Iterator;)Ljava/util/HashMap;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;>;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, this:Lcom/instagram/api/ObjectMappedApiResponse;,"Lcom/instagram/api/ObjectMappedApiResponse<TT;>;"
    .local p1, entryIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 226
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 230
    :cond_0
    return-object v1
.end method

.method private parseSystemMessages(Ljava/util/Iterator;)Ljava/util/Collection;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, this:Lcom/instagram/api/ObjectMappedApiResponse;,"Lcom/instagram/api/ObjectMappedApiResponse<TT;>;"
    .local p1, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 218
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->fields()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/api/ObjectMappedApiResponse;->parseSystemMessageNode(Ljava/util/Iterator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getCheckpointUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "checkpoint_url"

    invoke-virtual {p0, v1}, Lcom/instagram/api/ObjectMappedApiResponse;->hasRootValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "checkpoint_url"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_0
    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/instagram/api/ObjectMappedApiResponse;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "error_title"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMapper()Lcom/instagram/android/service/CustomObjectMapper;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/instagram/api/ObjectMappedApiResponse;->mMapper:Lcom/instagram/android/service/CustomObjectMapper;

    return-object v0
.end method

.method public getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/instagram/api/ObjectMappedApiResponse;->mRootNode:Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 89
    :goto_0
    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_0
    :goto_1
    return-object v0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    const-string v0, "ok"

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 117
    :cond_0
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/instagram/api/ObjectMappedApiResponse;->hasRootValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 119
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuccessObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/instagram/api/ObjectMappedApiResponse;->mSuccessObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getSystemMessages()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "_messages"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->elements()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/api/ObjectMappedApiResponse;->parseSystemMessages(Ljava/util/Iterator;)Ljava/util/Collection;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRootValue(Ljava/lang/String;)Z
    .locals 1
    .parameter "fieldName"

    .prologue
    .line 189
    .local p0, this:Lcom/instagram/api/ObjectMappedApiResponse;,"Lcom/instagram/api/ObjectMappedApiResponse<TT;>;"
    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkRequest()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/instagram/api/ObjectMappedApiResponse;->mNetworkRequest:Z

    return v0
.end method

.method public isOk()Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/instagram/api/ObjectMappedApiResponse;->mErrorMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readRootArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 2
    .parameter "fieldName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, this:Lcom/instagram/api/ObjectMappedApiResponse;,"Lcom/instagram/api/ObjectMappedApiResponse<TT;>;"
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getMapper()Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/instagram/android/service/CustomObjectMapper;->readArrayList(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public readRootValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "fieldName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, this:Lcom/instagram/api/ObjectMappedApiResponse;,"Lcom/instagram/api/ObjectMappedApiResponse<TT;>;"
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcom/instagram/api/ObjectMappedApiResponse;->getMapper()Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/instagram/android/service/CustomObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 73
    .local p0, this:Lcom/instagram/api/ObjectMappedApiResponse;,"Lcom/instagram/api/ObjectMappedApiResponse<TT;>;"
    iput-object p1, p0, Lcom/instagram/api/ObjectMappedApiResponse;->mErrorMessage:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setIsNetworkResponse(Z)V
    .locals 0
    .parameter "networkRequest"

    .prologue
    .line 194
    .local p0, this:Lcom/instagram/api/ObjectMappedApiResponse;,"Lcom/instagram/api/ObjectMappedApiResponse<TT;>;"
    iput-boolean p1, p0, Lcom/instagram/api/ObjectMappedApiResponse;->mNetworkRequest:Z

    .line 195
    return-void
.end method

.method public setSuccessObject(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, this:Lcom/instagram/api/ObjectMappedApiResponse;,"Lcom/instagram/api/ObjectMappedApiResponse<TT;>;"
    .local p1, successObject:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/instagram/api/ObjectMappedApiResponse;->mSuccessObject:Ljava/lang/Object;

    .line 156
    return-void
.end method
