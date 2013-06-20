.class public Lcom/instagram/android/login/request/CreateAccountRequest$Params;
.super Ljava/lang/Object;
.source "CreateAccountRequest.java"


# instance fields
.field public deviceId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public fullName:Ljava/lang/String;

.field public guid:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public profilePic:Landroid/graphics/Bitmap;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/login/request/CreateAccountRequest$Params;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->toJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toJsonString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 49
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 51
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    .line 54
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 57
    const-string v2, "email"

    iget-object v3, p0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->email:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/instagram/util/StringUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v2, "username"

    iget-object v3, p0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->username:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/instagram/util/StringUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "password"

    iget-object v3, p0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->password:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/instagram/util/StringUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->phone:Ljava/lang/String;

    invoke-static {v2}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    const-string v2, "phone_number"

    iget-object v3, p0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->phone:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/instagram/util/StringUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    const-string v2, "device_id"

    iget-object v3, p0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->deviceId:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/instagram/util/StringUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "guid"

    iget-object v3, p0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->guid:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/instagram/util/StringUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "first_name"

    iget-object v3, p0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->fullName:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/instagram/util/StringUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 69
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v2, "CreateAccountRequest"

    const-string v3, "Failed to create params-json"

    invoke-static {v2, v3, v0}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
