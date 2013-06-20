.class public Lcom/instagram/util/JsonBuilder;
.super Ljava/lang/Object;
.source "JsonBuilder.java"


# instance fields
.field mFactory:Lcom/fasterxml/jackson/core/JsonFactory;

.field mGenerator:Lcom/fasterxml/jackson/core/JsonGenerator;

.field mWriter:Ljava/io/StringWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/instagram/util/JsonBuilder;->mWriter:Ljava/io/StringWriter;

    .line 19
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    iput-object v0, p0, Lcom/instagram/util/JsonBuilder;->mFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/instagram/util/JsonBuilder;->mFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iget-object v1, p0, Lcom/instagram/util/JsonBuilder;->mWriter:Ljava/io/StringWriter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/util/JsonBuilder;->mGenerator:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 23
    iget-object v0, p0, Lcom/instagram/util/JsonBuilder;->mGenerator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public put(Ljava/lang/String;I)Lcom/instagram/util/JsonBuilder;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/instagram/util/JsonBuilder;->mGenerator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-object p0

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/instagram/util/JsonBuilder;->mGenerator:Lcom/fasterxml/jackson/core/JsonGenerator;

    const-string v1, ""

    invoke-static {p2, v1}, Lcom/instagram/util/StringUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-object p0

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/instagram/util/JsonBuilder;->mGenerator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 49
    iget-object v0, p0, Lcom/instagram/util/JsonBuilder;->mGenerator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/instagram/util/JsonBuilder;->mWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method
