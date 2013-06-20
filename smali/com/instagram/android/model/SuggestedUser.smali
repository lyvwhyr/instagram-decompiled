.class public Lcom/instagram/android/model/SuggestedUser;
.super Ljava/lang/Object;
.source "SuggestedUser.java"


# instance fields
.field private mCaption:Ljava/lang/String;

.field private mThumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUser:Lcom/instagram/android/model/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/model/SuggestedUser;->mThumbnails:Ljava/util/List;

    return-void
.end method

.method public static fromJsonNode(Lcom/instagram/android/service/CustomObjectMapper;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/android/model/SuggestedUser;
    .locals 3
    .parameter "mapper"
    .parameter "node"

    .prologue
    .line 29
    new-instance v1, Lcom/instagram/android/model/SuggestedUser;

    invoke-direct {v1}, Lcom/instagram/android/model/SuggestedUser;-><init>()V

    .line 30
    const-string v0, "caption"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/model/SuggestedUser;->mCaption:Ljava/lang/String;

    .line 31
    const-string v0, "user"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-class v2, Lcom/instagram/android/model/User;

    invoke-virtual {p0, v0, v2}, Lcom/instagram/android/service/CustomObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    iput-object v0, v1, Lcom/instagram/android/model/SuggestedUser;->mUser:Lcom/instagram/android/model/User;

    .line 32
    const-string v0, "thumbnail_urls"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/instagram/android/service/CustomObjectMapper;->readArrayList(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/model/SuggestedUser;->mThumbnails:Ljava/util/List;

    .line 34
    return-object v1
.end method

.method public static fromJsonParser(Landroid/content/Context;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/SuggestedUser;
    .locals 4
    .parameter "context"
    .parameter "jp"

    .prologue
    const/4 v1, 0x0

    .line 40
    move-object v0, v1

    .line 42
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_5

    .line 43
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 45
    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Lcom/instagram/android/model/SuggestedUser;

    invoke-direct {v0}, Lcom/instagram/android/model/SuggestedUser;-><init>()V

    .line 49
    :cond_1
    const-string v3, "caption"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 51
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/util/StringUtil;->stripEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/instagram/android/model/SuggestedUser;->mCaption:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_2
    const-string v3, "user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 53
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 54
    invoke-static {p1}, Lcom/instagram/android/model/User;->fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/User;

    move-result-object v2

    iput-object v2, v0, Lcom/instagram/android/model/SuggestedUser;->mUser:Lcom/instagram/android/model/User;

    goto :goto_0

    .line 55
    :cond_3
    const-string v3, "thumbnail_urls"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 56
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 57
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 59
    iget-object v3, v0, Lcom/instagram/android/model/SuggestedUser;->mThumbnails:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    :cond_4
    const-string v3, "items"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 71
    :cond_5
    iget-object v2, v0, Lcom/instagram/android/model/SuggestedUser;->mUser:Lcom/instagram/android/model/User;

    if-nez v2, :cond_6

    .line 75
    :goto_2
    return-object v1

    :cond_6
    move-object v1, v0

    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    .line 99
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 93
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 95
    :cond_3
    check-cast p1, Lcom/instagram/android/model/SuggestedUser;

    .line 97
    .end local p1
    iget-object v2, p0, Lcom/instagram/android/model/SuggestedUser;->mUser:Lcom/instagram/android/model/User;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/instagram/android/model/SuggestedUser;->mUser:Lcom/instagram/android/model/User;

    iget-object v3, p1, Lcom/instagram/android/model/SuggestedUser;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v2, v3}, Lcom/instagram/android/model/User;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/instagram/android/model/SuggestedUser;->mUser:Lcom/instagram/android/model/User;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/instagram/android/model/SuggestedUser;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/android/model/SuggestedUser;->mThumbnails:Ljava/util/List;

    return-object v0
.end method

.method public getUser()Lcom/instagram/android/model/User;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/instagram/android/model/SuggestedUser;->mUser:Lcom/instagram/android/model/User;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/instagram/android/model/SuggestedUser;->mUser:Lcom/instagram/android/model/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/SuggestedUser;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
