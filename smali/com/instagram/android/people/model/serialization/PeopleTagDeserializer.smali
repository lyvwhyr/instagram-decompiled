.class public Lcom/instagram/android/people/model/serialization/PeopleTagDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "PeopleTagDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<",
        "Lcom/instagram/android/people/model/PeopleTag;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/instagram/android/people/model/PeopleTag;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 24
    return-void
.end method

.method public static deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/people/model/PeopleTag;
    .locals 2
    .parameter "jp"

    .prologue
    .line 67
    new-instance v0, Lcom/instagram/android/people/model/serialization/PeopleTagDeserializer;

    invoke-direct {v0}, Lcom/instagram/android/people/model/serialization/PeopleTagDeserializer;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/instagram/android/people/model/serialization/PeopleTagDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/instagram/android/people/model/PeopleTag;

    move-result-object v0

    return-object v0
.end method

.method public static deserialize(Lcom/instagram/android/service/CustomObjectMapper;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/android/people/model/PeopleTag;
    .locals 6
    .parameter "mapper"
    .parameter "map"

    .prologue
    .line 71
    new-instance v1, Lcom/instagram/android/people/model/PeopleTag;

    invoke-direct {v1}, Lcom/instagram/android/people/model/PeopleTag;-><init>()V

    .line 73
    const-string v0, "user"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    const-class v2, Lcom/instagram/android/model/User;

    invoke-virtual {p0, v0, v2}, Lcom/instagram/android/service/CustomObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    invoke-virtual {v1, v0}, Lcom/instagram/android/people/model/PeopleTag;->setUser(Lcom/instagram/android/model/User;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 83
    const-string v2, "username"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 84
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/people/model/PeopleTag;->setUsername(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/people/model/PeopleTag;->setUserId(Ljava/lang/String;)V

    .line 89
    :cond_1
    const-string v0, "position"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 92
    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v4

    double-to-float v0, v4

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/people/model/PeopleTag;->setPosition(Landroid/graphics/PointF;)V

    .line 100
    :cond_2
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/instagram/android/people/model/PeopleTag;
    .locals 6
    .parameter "jp"
    .parameter "ctxt"

    .prologue
    const/4 v0, 0x0

    .line 29
    new-instance v2, Lcom/instagram/android/people/model/PeopleTag;

    invoke-direct {v2}, Lcom/instagram/android/people/model/PeopleTag;-><init>()V

    move-object v1, v0

    .line 33
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_5

    .line 34
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 36
    const-string v4, "user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 38
    invoke-static {p1}, Lcom/instagram/android/model/User;->fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/android/people/model/PeopleTag;->setUser(Lcom/instagram/android/model/User;)V

    goto :goto_0

    .line 39
    :cond_1
    const-string v4, "username"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 41
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 42
    :cond_2
    const-string v4, "user_id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 43
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 44
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_3
    const-string v4, "position"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 46
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 47
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 48
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F

    move-result v3

    .line 49
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 50
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F

    move-result v4

    .line 51
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v5}, Lcom/instagram/android/people/model/PeopleTag;->setPosition(Landroid/graphics/PointF;)V

    .line 52
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 53
    :cond_4
    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 58
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 59
    invoke-virtual {v2, v1}, Lcom/instagram/android/people/model/PeopleTag;->setUsername(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2, v0}, Lcom/instagram/android/people/model/PeopleTag;->setUserId(Ljava/lang/String;)V

    .line 63
    :cond_6
    return-object v2
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/people/model/serialization/PeopleTagDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/instagram/android/people/model/PeopleTag;

    move-result-object v0

    return-object v0
.end method
