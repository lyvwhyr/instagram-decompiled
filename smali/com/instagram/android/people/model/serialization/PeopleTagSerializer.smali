.class public Lcom/instagram/android/people/model/serialization/PeopleTagSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "PeopleTagSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/instagram/android/people/model/PeopleTag;",
        ">;"
    }
.end annotation


# instance fields
.field private mSerializeToServer:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "serializeToServer"

    .prologue
    .line 18
    const-class v0, Lcom/instagram/android/people/model/PeopleTag;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 19
    iput-boolean p1, p0, Lcom/instagram/android/people/model/serialization/PeopleTagSerializer;->mSerializeToServer:Z

    .line 20
    return-void
.end method


# virtual methods
.method public serialize(Lcom/instagram/android/people/model/PeopleTag;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 3
    .parameter "value"
    .parameter "jgen"
    .parameter "provider"

    .prologue
    .line 25
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 27
    const-string v0, "user_id"

    invoke-virtual {p1}, Lcom/instagram/android/people/model/PeopleTag;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 28
    iget-boolean v0, p0, Lcom/instagram/android/people/model/serialization/PeopleTagSerializer;->mSerializeToServer:Z

    if-nez v0, :cond_0

    .line 29
    const-string v0, "username"

    invoke-virtual {p1}, Lcom/instagram/android/people/model/PeopleTag;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/android/people/model/PeopleTag;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    const-string v1, "position"

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 36
    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    .line 37
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    .line 38
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 41
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 42
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 14
    check-cast p1, Lcom/instagram/android/people/model/PeopleTag;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/instagram/android/people/model/serialization/PeopleTagSerializer;->serialize(Lcom/instagram/android/people/model/PeopleTag;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method
