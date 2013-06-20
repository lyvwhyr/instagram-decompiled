.class public Lcom/instagram/android/model/serialization/VideoUploadUrlSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "VideoUploadUrlSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/instagram/android/video/api/VideoUploadUrl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/instagram/android/video/api/VideoUploadUrl;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 17
    return-void
.end method


# virtual methods
.method public serialize(Lcom/instagram/android/video/api/VideoUploadUrl;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 3
    .parameter "value"
    .parameter "jgen"
    .parameter "provider"

    .prologue
    .line 23
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 25
    const-string v0, "url"

    invoke-virtual {p1}, Lcom/instagram/android/video/api/VideoUploadUrl;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v0, "job"

    invoke-virtual {p1}, Lcom/instagram/android/video/api/VideoUploadUrl;->getJob()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "expires"

    invoke-virtual {p1}, Lcom/instagram/android/video/api/VideoUploadUrl;->getExpires()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 29
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 30
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 13
    check-cast p1, Lcom/instagram/android/video/api/VideoUploadUrl;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/instagram/android/model/serialization/VideoUploadUrlSerializer;->serialize(Lcom/instagram/android/video/api/VideoUploadUrl;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method
