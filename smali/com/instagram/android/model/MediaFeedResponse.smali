.class public Lcom/instagram/android/model/MediaFeedResponse;
.super Ljava/lang/Object;
.source "MediaFeedResponse.java"


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoLoadMoreEnabled:Z

.field private mFeedMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FeedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mTimestamp:Ljava/lang/Integer;

.field private moreAvailable:Z

.field private nextMaxId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJsonNode(Lcom/instagram/android/service/CustomObjectMapper;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/android/model/MediaFeedResponse;
    .locals 3
    .parameter "mapper"
    .parameter "node"

    .prologue
    .line 22
    new-instance v1, Lcom/instagram/android/model/MediaFeedResponse;

    invoke-direct {v1}, Lcom/instagram/android/model/MediaFeedResponse;-><init>()V

    .line 23
    const-string v0, "items"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-class v2, Lcom/instagram/android/model/Media;

    invoke-virtual {p0, v0, v2}, Lcom/instagram/android/service/CustomObjectMapper;->readArrayList(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/model/MediaFeedResponse;->items:Ljava/util/ArrayList;

    .line 24
    const-string v0, "more_available"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "more_available"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/instagram/android/model/MediaFeedResponse;->moreAvailable:Z

    .line 28
    iget-boolean v0, v1, Lcom/instagram/android/model/MediaFeedResponse;->moreAvailable:Z

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "next_max_id"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 30
    const-string v0, "next_max_id"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/model/MediaFeedResponse;->nextMaxId:Ljava/lang/String;

    .line 36
    :cond_0
    :goto_1
    return-object v1

    .line 24
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 31
    :cond_2
    iget-object v0, v1, Lcom/instagram/android/model/MediaFeedResponse;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/instagram/android/model/MediaFeedResponse;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 32
    iget-object v0, v1, Lcom/instagram/android/model/MediaFeedResponse;->items:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/instagram/android/model/MediaFeedResponse;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/model/MediaFeedResponse;->nextMaxId:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getFeedMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FeedMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/android/model/MediaFeedResponse;->mFeedMessages:Ljava/util/List;

    return-object v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/android/model/MediaFeedResponse;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNextMaxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instagram/android/model/MediaFeedResponse;->nextMaxId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/instagram/android/model/MediaFeedResponse;->mTimestamp:Ljava/lang/Integer;

    return-object v0
.end method

.method public isAutoLoadMoreEnabled()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/instagram/android/model/MediaFeedResponse;->mAutoLoadMoreEnabled:Z

    return v0
.end method

.method public isMoreAvailable()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/instagram/android/model/MediaFeedResponse;->moreAvailable:Z

    return v0
.end method

.method public setAutoLoadMoreEnabled(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/instagram/android/model/MediaFeedResponse;->mAutoLoadMoreEnabled:Z

    .line 73
    return-void
.end method

.method public setFeedMessages(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/FeedMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, feedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/FeedMessage;>;"
    iput-object p1, p0, Lcom/instagram/android/model/MediaFeedResponse;->mFeedMessages:Ljava/util/List;

    .line 65
    return-void
.end method

.method public setIsMoreAvailable(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/instagram/android/model/MediaFeedResponse;->moreAvailable:Z

    .line 53
    return-void
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/Media;>;"
    iput-object p1, p0, Lcom/instagram/android/model/MediaFeedResponse;->items:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method public setNextMaxId(Ljava/lang/String;)V
    .locals 0
    .parameter "maxId"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/instagram/android/model/MediaFeedResponse;->nextMaxId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setTimestamp(Ljava/lang/Integer;)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/instagram/android/model/MediaFeedResponse;->mTimestamp:Ljava/lang/Integer;

    .line 81
    return-void
.end method
