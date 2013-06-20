.class public abstract Lcom/instagram/api/loaderrequest/MediaFeedRequest;
.super Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
.source "MediaFeedRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest",
        "<",
        "Lcom/instagram/android/model/MediaFeedResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

.field private mLoadMore:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V
    .locals 2
    .parameter "fragment"
    .parameter "requestId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "I",
            "Lcom/instagram/api/AbstractStreamingApiCallbacks",
            "<",
            "Lcom/instagram/android/model/MediaFeedResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, listAbstractApiCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->mLoadMore:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V
    .locals 2
    .parameter "fragment"
    .parameter "requestId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/fragment/AbstractFeedFragment;",
            "I",
            "Lcom/instagram/api/AbstractStreamingApiCallbacks",
            "<",
            "Lcom/instagram/android/model/MediaFeedResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p3, listAbstractApiCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    invoke-virtual {p1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->mLoadMore:Z

    .line 34
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    .line 35
    return-void
.end method

.method private processMetaField(Lcom/fasterxml/jackson/core/JsonParser;Lcom/instagram/android/model/MediaFeedResponse;)V
    .locals 3
    .parameter "jp"
    .parameter "mediaFeedResponse"

    .prologue
    .line 185
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_2

    .line 186
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, "messages"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 195
    invoke-static {p1}, Lcom/instagram/android/model/FeedMessage;->fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/FeedMessage;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {p2, v0}, Lcom/instagram/android/model/MediaFeedResponse;->setFeedMessages(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 207
    :cond_2
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 64
    invoke-virtual {p1, p2}, Lcom/instagram/api/ApiHttpClient;->getRequest(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getBaseFeedPath()Ljava/lang/String;
.end method

.method public getLocationString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string v0, ""

    return-object v0
.end method

.method public getMaxIdString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->mLoadMore:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getMaxId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "?max_id=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v3}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getMaxId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected final getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    const-string v0, "%s%s%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->getBaseFeedPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->getMaxIdString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->getLocationString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onResponseParsed(Lcom/instagram/api/StreamingApiResponse;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/StreamingApiResponse",
            "<",
            "Lcom/instagram/android/model/MediaFeedResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, response:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<Lcom/instagram/android/model/MediaFeedResponse;>;"
    invoke-virtual {p1}, Lcom/instagram/api/StreamingApiResponse;->getSuccessObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/MediaFeedResponse;

    .line 72
    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {v0}, Lcom/instagram/android/model/MediaFeedResponse;->getNextMaxId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/instagram/android/model/MediaFeedResponse;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/model/Media;

    invoke-virtual {v1}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/instagram/android/model/MediaFeedResponse;->setNextMaxId(Ljava/lang/String;)V

    .line 82
    :cond_0
    iget-boolean v1, p0, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->mLoadMore:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isIsVideoAutoplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v0}, Lcom/instagram/android/model/MediaFeedResponse;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media;

    .line 84
    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v2

    sget-object v3, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v2, v3, :cond_1

    .line 85
    invoke-static {}, Lcom/instagram/android/mediacache/IgVideoCache;->getInstance()Lcom/instagram/android/mediacache/IgVideoCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getSizedVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/mediacache/IgVideoCache;->prefetch(Landroid/net/Uri;)V

    .line 91
    :cond_2
    return-void
.end method

.method public performWithNewPage()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->mLoadMore:Z

    .line 56
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->perform()V

    .line 57
    return-void
.end method

.method public processResponseField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;Lcom/instagram/api/StreamingApiResponse;)Z
    .locals 4
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
            "Lcom/instagram/android/model/MediaFeedResponse;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p3, response:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<Lcom/instagram/android/model/MediaFeedResponse;>;"
    invoke-virtual {p3}, Lcom/instagram/api/StreamingApiResponse;->getSuccessObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/MediaFeedResponse;

    .line 99
    const-string v1, "items"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 102
    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/instagram/android/model/MediaFeedResponse;

    invoke-direct {v0}, Lcom/instagram/android/model/MediaFeedResponse;-><init>()V

    .line 104
    invoke-virtual {p3, v0}, Lcom/instagram/api/StreamingApiResponse;->setSuccessObject(Ljava/lang/Object;)V

    .line 107
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 110
    invoke-static {p2}, Lcom/instagram/android/model/Media;->fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/Media;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_1

    .line 112
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v0, v1}, Lcom/instagram/android/model/MediaFeedResponse;->setItems(Ljava/util/ArrayList;)V

    .line 178
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 120
    :cond_2
    const-string v1, "more_available"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 124
    if-nez v0, :cond_3

    .line 125
    new-instance v0, Lcom/instagram/android/model/MediaFeedResponse;

    invoke-direct {v0}, Lcom/instagram/android/model/MediaFeedResponse;-><init>()V

    .line 126
    invoke-virtual {p3, v0}, Lcom/instagram/api/StreamingApiResponse;->setSuccessObject(Ljava/lang/Object;)V

    .line 129
    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/MediaFeedResponse;->setIsMoreAvailable(Z)V

    goto :goto_1

    .line 131
    :cond_4
    const-string v1, "next_max_id"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 133
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 135
    if-nez v0, :cond_5

    .line 136
    new-instance v0, Lcom/instagram/android/model/MediaFeedResponse;

    invoke-direct {v0}, Lcom/instagram/android/model/MediaFeedResponse;-><init>()V

    .line 137
    invoke-virtual {p3, v0}, Lcom/instagram/api/StreamingApiResponse;->setSuccessObject(Ljava/lang/Object;)V

    .line 140
    :cond_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/MediaFeedResponse;->setNextMaxId(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_6
    const-string v1, "meta"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 144
    if-nez v0, :cond_7

    .line 145
    new-instance v0, Lcom/instagram/android/model/MediaFeedResponse;

    invoke-direct {v0}, Lcom/instagram/android/model/MediaFeedResponse;-><init>()V

    .line 146
    invoke-virtual {p3, v0}, Lcom/instagram/api/StreamingApiResponse;->setSuccessObject(Ljava/lang/Object;)V

    .line 149
    :cond_7
    invoke-direct {p0, p2, v0}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->processMetaField(Lcom/fasterxml/jackson/core/JsonParser;Lcom/instagram/android/model/MediaFeedResponse;)V

    goto :goto_1

    .line 151
    :cond_8
    const-string v1, "auto_load_more_enabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 153
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 155
    if-nez v0, :cond_9

    .line 156
    new-instance v0, Lcom/instagram/android/model/MediaFeedResponse;

    invoke-direct {v0}, Lcom/instagram/android/model/MediaFeedResponse;-><init>()V

    .line 157
    invoke-virtual {p3, v0}, Lcom/instagram/api/StreamingApiResponse;->setSuccessObject(Ljava/lang/Object;)V

    .line 160
    :cond_9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/MediaFeedResponse;->setAutoLoadMoreEnabled(Z)V

    goto :goto_1

    .line 162
    :cond_a
    const-string v1, "live_timestamp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 164
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 166
    if-nez v0, :cond_b

    .line 167
    new-instance v0, Lcom/instagram/android/model/MediaFeedResponse;

    invoke-direct {v0}, Lcom/instagram/android/model/MediaFeedResponse;-><init>()V

    .line 168
    invoke-virtual {p3, v0}, Lcom/instagram/api/StreamingApiResponse;->setSuccessObject(Ljava/lang/Object;)V

    .line 171
    :cond_b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/MediaFeedResponse;->setTimestamp(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 175
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method public shouldShowAlertForRequest(Lcom/instagram/api/ApiResponse;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Lcom/instagram/android/model/MediaFeedResponse;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, mediaFeedResponseApiResponse:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/MediaFeedResponse;>;"
    const/4 v0, 0x0

    return v0
.end method
