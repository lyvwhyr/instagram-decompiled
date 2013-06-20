.class public Lcom/instagram/android/model/serialization/PendingMediaDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "PendingMediaDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<",
        "Lcom/instagram/android/model/PendingMedia;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/instagram/android/model/PendingMedia;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 26
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/instagram/android/model/PendingMedia;
    .locals 12
    .parameter "parser"
    .parameter "deserializationContext"

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 31
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 32
    const-class v1, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonParser;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 35
    const-string v2, "mediaType"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    const-string v2, "mediaType"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    .line 37
    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    sget-object v2, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    :goto_0
    move-object v3, v2

    .line 48
    :goto_1
    const-string v2, "imageFilePath"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v6

    .line 49
    const-string v2, "key"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    .line 52
    sget-object v5, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v3, v5, :cond_3

    .line 53
    invoke-static {v6, v2}, Lcom/instagram/android/model/PendingMedia;->createImage(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v5

    .line 76
    :goto_2
    if-nez v5, :cond_6

    move-object v0, v4

    .line 147
    :goto_3
    return-object v0

    .line 39
    :cond_0
    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    sget-object v2, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    goto :goto_0

    :cond_1
    move-object v0, v4

    .line 42
    goto :goto_3

    .line 45
    :cond_2
    sget-object v2, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    move-object v3, v2

    goto :goto_1

    .line 54
    :cond_3
    sget-object v5, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v3, v5, :cond_10

    .line 55
    const-string v5, "videoFilePath"

    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v5

    .line 56
    const-string v7, "stitchedVideoFilePath"

    invoke-virtual {v1, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v7

    .line 57
    const-string v8, "orientation"

    invoke-virtual {v1, v8}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v8

    .line 58
    const-string v9, "recordingSessionFilePath"

    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v9

    .line 60
    if-eqz v5, :cond_4

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 61
    invoke-static {v2}, Lcom/instagram/android/model/PendingMedia;->createVideo(Ljava/lang/String;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v2

    .line 62
    invoke-virtual {v2, v5}, Lcom/instagram/android/model/PendingMedia;->setVideoFilePath(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2, v7}, Lcom/instagram/android/model/PendingMedia;->setStitchedVideoFilePath(Ljava/lang/String;)V

    .line 72
    :goto_4
    invoke-virtual {v2, v8}, Lcom/instagram/android/model/PendingMedia;->setOrientation(I)V

    .line 73
    invoke-virtual {v2, v9}, Lcom/instagram/android/model/PendingMedia;->setVideoSessionPath(Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_2

    .line 64
    :cond_4
    if-eqz v7, :cond_5

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 65
    invoke-static {v2}, Lcom/instagram/android/model/PendingMedia;->createVideo(Ljava/lang/String;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v7}, Lcom/instagram/android/model/PendingMedia;->setStitchedVideoFilePath(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v0, v4

    .line 69
    goto :goto_3

    .line 80
    :cond_6
    const-string v2, "targetStatus"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 81
    if-nez v2, :cond_d

    .line 83
    const-string v2, "postedByUser"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 84
    if-nez v2, :cond_b

    .line 86
    sget-object v2, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setTargetStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    .line 95
    :goto_5
    const-string v2, "serverStatus"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 96
    if-nez v2, :cond_f

    .line 98
    const-string v2, "needsUpload"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 99
    sget-object v2, Lcom/instagram/android/model/PendingMedia$Status;->NOT_UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setServerStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    .line 107
    :cond_7
    :goto_6
    const-string v2, "sourceType"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setSourceType(I)V

    .line 108
    const-string v2, "filterTypeOrdinal"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setFilterType(I)V

    .line 110
    const-string v2, "twitterEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setIsTwitterEnabled(Z)V

    .line 111
    const-string v2, "facebookEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setIsFacebookEnabled(Z)V

    .line 112
    const-string v2, "foursquareEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setIsFoursquareEnabled(Z)V

    .line 113
    const-string v2, "tumblrEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setIsTumblrEnabled(Z)V

    .line 115
    const-string v2, "originalHeight"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "originalWidth"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 116
    const-string v2, "originalWidth"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setOriginalWidth(I)V

    .line 117
    const-string v2, "originalHeight"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setOriginalHeight(I)V

    .line 120
    :cond_8
    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/instagram/android/model/PendingMedia;->setLatitude(D)V

    .line 121
    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/instagram/android/model/PendingMedia;->setLongitude(D)V

    .line 123
    const-string v2, "location"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-class v4, Lcom/instagram/android/location/Venue;

    invoke-virtual {v0, v2, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/location/Venue;

    .line 124
    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setVenue(Lcom/instagram/android/location/Venue;)V

    .line 126
    const-string v2, "caption"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setCaption(Ljava/lang/String;)V

    .line 128
    const-string v2, "peopleTags"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 129
    new-instance v2, Lcom/instagram/android/model/serialization/PendingMediaDeserializer$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/model/serialization/PendingMediaDeserializer$1;-><init>(Lcom/instagram/android/model/serialization/PendingMediaDeserializer;)V

    .line 131
    const-string v4, "peopleTags"

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/core/TreeNode;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setInTags(Ljava/util/ArrayList;)V

    .line 136
    :cond_9
    sget-object v2, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v3, v2, :cond_a

    .line 137
    invoke-virtual {v5, v6}, Lcom/instagram/android/model/PendingMedia;->setImageFilePath(Ljava/lang/String;)V

    .line 138
    const-string v2, "videoResult"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setVideoResult(Ljava/lang/String;)V

    .line 140
    new-instance v2, Lcom/instagram/android/model/serialization/PendingMediaDeserializer$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/model/serialization/PendingMediaDeserializer$2;-><init>(Lcom/instagram/android/model/serialization/PendingMediaDeserializer;)V

    .line 143
    const-string v3, "videoUploadUrls"

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/core/TreeNode;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 144
    invoke-virtual {v5, v0}, Lcom/instagram/android/model/PendingMedia;->setVideoUploadUrls(Ljava/util/List;)V

    :cond_a
    move-object v0, v5

    .line 147
    goto/16 :goto_3

    .line 88
    :cond_b
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    :goto_7
    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setTargetStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    goto/16 :goto_5

    :cond_c
    sget-object v2, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    goto :goto_7

    .line 92
    :cond_d
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/model/PendingMedia$Status;->valueOf(Ljava/lang/String;)Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setTargetStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    goto/16 :goto_5

    .line 100
    :cond_e
    const-string v2, "needsConfigure"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 101
    sget-object v2, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setServerStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    goto/16 :goto_6

    .line 104
    :cond_f
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/model/PendingMedia$Status;->valueOf(Ljava/lang/String;)Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/instagram/android/model/PendingMedia;->setServerStatus(Lcom/instagram/android/model/PendingMedia$Status;)V

    goto/16 :goto_6

    :cond_10
    move-object v5, v4

    goto/16 :goto_2
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/model/serialization/PendingMediaDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    return-object v0
.end method
