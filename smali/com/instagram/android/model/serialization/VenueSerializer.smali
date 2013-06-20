.class public Lcom/instagram/android/model/serialization/VenueSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "VenueSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/instagram/android/location/Venue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/instagram/android/location/Venue;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 16
    return-void
.end method


# virtual methods
.method public serialize(Lcom/instagram/android/location/Venue;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 3
    .parameter "venue"
    .parameter "gen"
    .parameter "serializerProvider"

    .prologue
    .line 21
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 23
    const-string v0, "latitude"

    iget-object v1, p1, Lcom/instagram/android/location/Venue;->latitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;D)V

    .line 24
    const-string v0, "longitude"

    iget-object v1, p1, Lcom/instagram/android/location/Venue;->longitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;D)V

    .line 25
    const-string v0, "address"

    iget-object v1, p1, Lcom/instagram/android/location/Venue;->address:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v0, "externalId"

    iget-object v1, p1, Lcom/instagram/android/location/Venue;->externalId:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "externalSource"

    iget-object v1, p1, Lcom/instagram/android/location/Venue;->externalSource:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "id"

    iget-object v1, p1, Lcom/instagram/android/location/Venue;->id:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "name"

    iget-object v1, p1, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 32
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 12
    check-cast p1, Lcom/instagram/android/location/Venue;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/instagram/android/model/serialization/VenueSerializer;->serialize(Lcom/instagram/android/location/Venue;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method
