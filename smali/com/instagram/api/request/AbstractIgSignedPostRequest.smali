.class public abstract Lcom/instagram/api/request/AbstractIgSignedPostRequest;
.super Lcom/instagram/api/request/AbstractIgRequest;
.source "AbstractIgSignedPostRequest.java"


# instance fields
.field private final mJsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/instagram/api/request/AbstractIgRequest;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    iput-object v0, p0, Lcom/instagram/api/request/AbstractIgSignedPostRequest;->mJsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 21
    return-void
.end method


# virtual methods
.method protected abstract buildJsonPayload(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.end method

.method public getJsonFactory()Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/api/request/AbstractIgSignedPostRequest;->mJsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    return-object v0
.end method

.method public final getMethod()Lcom/instagram/api/request/AbstractRequest$Method;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/instagram/api/request/AbstractRequest$Method;->POST:Lcom/instagram/api/request/AbstractRequest$Method;

    return-object v0
.end method

.method public final getParams()Lcom/instagram/api/RequestParams;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 33
    new-instance v1, Lcom/instagram/api/RequestParams;

    invoke-direct {v1}, Lcom/instagram/api/RequestParams;-><init>()V

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/api/request/AbstractIgSignedPostRequest;->getJsonFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 38
    invoke-virtual {p0, v2}, Lcom/instagram/api/request/AbstractIgSignedPostRequest;->buildJsonPayload(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 39
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 40
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 42
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method
