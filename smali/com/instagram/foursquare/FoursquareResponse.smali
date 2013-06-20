.class public Lcom/instagram/foursquare/FoursquareResponse;
.super Ljava/lang/Object;
.source "FoursquareResponse.java"


# instance fields
.field private requestID:Ljava/lang/String;

.field private venues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/location/Venue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instagram/android/service/CustomObjectMapper;Ljava/lang/String;)V
    .locals 3
    .parameter "mapper"
    .parameter "jsonString"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p1, p2, v0}, Lcom/instagram/android/service/CustomObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 22
    const-string v1, "meta"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    const-string v2, "requestId"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/instagram/android/service/CustomObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/core/TreeNode;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/instagram/android/service/CustomObjectMapper;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/instagram/foursquare/FoursquareResponse;->requestID:Ljava/lang/String;

    .line 25
    const-string v1, "response"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "venues"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/instagram/foursquare/FoursquareResponse$1;

    invoke-direct {v1, p0}, Lcom/instagram/foursquare/FoursquareResponse$1;-><init>(Lcom/instagram/foursquare/FoursquareResponse;)V

    .line 27
    invoke-virtual {p1, v0}, Lcom/instagram/android/service/CustomObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/core/TreeNode;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/instagram/android/service/CustomObjectMapper;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/instagram/foursquare/FoursquareResponse;->venues:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public getRequestID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/foursquare/FoursquareResponse;->requestID:Ljava/lang/String;

    return-object v0
.end method

.method public getVenues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/location/Venue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/foursquare/FoursquareResponse;->venues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/foursquare/FoursquareResponse;->venues:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/foursquare/FoursquareResponse;->venues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
