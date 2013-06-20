.class public Lcom/instagram/android/model/serialization/PendingMediaSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "PendingMediaSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/instagram/android/model/PendingMedia;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/instagram/android/model/PendingMedia;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 18
    return-void
.end method


# virtual methods
.method public serialize(Lcom/instagram/android/model/PendingMedia;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 4
    .parameter "media"
    .parameter "gen"
    .parameter "serializerProvider"

    .prologue
    .line 23
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 25
    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v1

    .line 26
    sget-object v0, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v1, v0, :cond_3

    .line 27
    const-string v0, "mediaType"

    const-string v2, "photo"

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    :goto_0
    const-string v0, "serverStatus"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getServerStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/model/PendingMedia$Status;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "targetStatus"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getTargetStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/model/PendingMedia$Status;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "imageFilePath"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getImageFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "key"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v1, v0, :cond_1

    .line 39
    const-string v0, "videoFilePath"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getVideoFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "videoResult"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getVideoResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "stitchedVideoFilePath"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getStitchedVideoFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "orientation"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getOrientation()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 45
    const-string v0, "recordingSessionFilePath"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getVideoSessionPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "videoUploadUrls"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getVideoUploadUrls()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 51
    :cond_1
    const-string v0, "sourceType"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getSourceType()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 52
    const-string v0, "filterTypeOrdinal"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getFilterType()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 54
    const-string v0, "twitterEnabled"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->isTwitterEnabled()Z

    move-result v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 55
    const-string v0, "facebookEnabled"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->isFacebookEnabled()Z

    move-result v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 56
    const-string v0, "foursquareEnabled"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->isFoursquareEnabled()Z

    move-result v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 57
    const-string v0, "tumblrEnabled"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->isTumblrEnabled()Z

    move-result v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 59
    const-string v0, "latitude"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getLatitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;D)V

    .line 60
    const-string v0, "longitude"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getLongitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;D)V

    .line 62
    const-string v0, "location"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getVenue()Lcom/instagram/android/location/Venue;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    const-string v0, "caption"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "originalWidth"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getOriginalWidth()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 67
    const-string v0, "originalHeight"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getOriginalHeight()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 69
    sget-object v0, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v1, v0, :cond_2

    .line 70
    const-string v0, "peopleTags"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getInTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 74
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 75
    return-void

    .line 28
    :cond_3
    sget-object v0, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v1, v0, :cond_0

    .line 29
    const-string v0, "mediaType"

    const-string v2, "video"

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 14
    check-cast p1, Lcom/instagram/android/model/PendingMedia;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/instagram/android/model/serialization/PendingMediaSerializer;->serialize(Lcom/instagram/android/model/PendingMedia;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method
