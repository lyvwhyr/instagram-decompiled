.class public Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;
.super Lcom/instagram/api/ApiRequestLoaderCallbacks;
.source "StreamingApiRequestLoaderCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/ApiRequestLoaderCallbacks",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StreamingApiRequestLoaderCallbacks"


# instance fields
.field private final mApiRequest:Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;Lcom/instagram/api/AbstractApiCallbacks;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest",
            "<TT;>;",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;,"Lcom/instagram/api/StreamingApiRequestLoaderCallbacks<TT;>;"
    .local p2, request:Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;,"Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest<TT;>;"
    .local p3, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/api/ApiRequestLoaderCallbacks;-><init>(Landroid/content/Context;Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;Lcom/instagram/api/AbstractApiCallbacks;)V

    .line 37
    iput-object p2, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;)Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->mApiRequest:Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->parseMessage(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->parseSystemMessages(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private parseMessage(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;
    .locals 3
    .parameter "jp"

    .prologue
    .line 148
    .local p0, this:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;,"Lcom/instagram/api/StreamingApiRequestLoaderCallbacks<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_2

    .line 152
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 153
    const-string v2, "errors"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 155
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    .line 156
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 160
    :cond_1
    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_2
    return-object v0

    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private parseSystemMessages(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/Collection;
    .locals 6
    .parameter "jp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
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
    .local p0, this:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;,"Lcom/instagram/api/StreamingApiRequestLoaderCallbacks<TT;>;"
    const/4 v1, 0x0

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_5

    move-object v0, v1

    .line 175
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_6

    move-object v2, v1

    move-object v3, v1

    .line 179
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v5, :cond_3

    .line 180
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 181
    const-string v5, "key"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 182
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 183
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 184
    :cond_2
    const-string v5, "time"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 186
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 189
    :cond_3
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 191
    if-nez v0, :cond_4

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    :cond_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 196
    const-string v5, "key"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v3, "time"

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 203
    :cond_6
    return-object v0
.end method


# virtual methods
.method protected onApiResponseObjectCreated(Lcom/instagram/api/StreamingApiResponse;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/StreamingApiResponse",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, this:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;,"Lcom/instagram/api/StreamingApiRequestLoaderCallbacks<TT;>;"
    .local p1, apiResponse:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<TT;>;"
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/c;
    .locals 2
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/a/c",
            "<",
            "Lcom/instagram/api/ApiResponse",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;,"Lcom/instagram/api/StreamingApiRequestLoaderCallbacks<TT;>;"
    invoke-virtual {p0}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->getApiCallbacks()Lcom/instagram/api/AbstractApiCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->getApiCallbacks()Lcom/instagram/api/AbstractApiCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestStart()V

    .line 47
    :cond_0
    new-instance v0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;

    iget-object v1, p0, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/instagram/api/StreamingApiRequestLoaderCallbacks$1;-><init>(Lcom/instagram/api/StreamingApiRequestLoaderCallbacks;Landroid/content/Context;)V

    return-object v0
.end method
