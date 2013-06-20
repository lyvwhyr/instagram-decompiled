.class public Lcom/instagram/util/ContactHelper$Contact$Serializer;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "ContactHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonSerializer",
        "<",
        "Lcom/instagram/util/ContactHelper$Contact;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/instagram/util/ContactHelper$Contact;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .parameter "value"
    .parameter "gen"
    .parameter "provider"

    .prologue
    .line 190
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 191
    #getter for: Lcom/instagram/util/ContactHelper$Contact;->phoneNumbers:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/instagram/util/ContactHelper$Contact;->access$100(Lcom/instagram/util/ContactHelper$Contact;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "phone_numbers"

    #getter for: Lcom/instagram/util/ContactHelper$Contact;->phoneNumbers:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/instagram/util/ContactHelper$Contact;->access$100(Lcom/instagram/util/ContactHelper$Contact;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    :cond_0
    #getter for: Lcom/instagram/util/ContactHelper$Contact;->firstName:Ljava/lang/String;
    invoke-static {p1}, Lcom/instagram/util/ContactHelper$Contact;->access$200(Lcom/instagram/util/ContactHelper$Contact;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    const-string v0, "first_name"

    #getter for: Lcom/instagram/util/ContactHelper$Contact;->firstName:Ljava/lang/String;
    invoke-static {p1}, Lcom/instagram/util/ContactHelper$Contact;->access$200(Lcom/instagram/util/ContactHelper$Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    :cond_1
    #getter for: Lcom/instagram/util/ContactHelper$Contact;->lastName:Ljava/lang/String;
    invoke-static {p1}, Lcom/instagram/util/ContactHelper$Contact;->access$300(Lcom/instagram/util/ContactHelper$Contact;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 198
    const-string v0, "last_name"

    #getter for: Lcom/instagram/util/ContactHelper$Contact;->lastName:Ljava/lang/String;
    invoke-static {p1}, Lcom/instagram/util/ContactHelper$Contact;->access$300(Lcom/instagram/util/ContactHelper$Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    :cond_2
    #getter for: Lcom/instagram/util/ContactHelper$Contact;->emailAddresses:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/instagram/util/ContactHelper$Contact;->access$000(Lcom/instagram/util/ContactHelper$Contact;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 201
    const-string v0, "email_addresses"

    #getter for: Lcom/instagram/util/ContactHelper$Contact;->emailAddresses:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/instagram/util/ContactHelper$Contact;->access$000(Lcom/instagram/util/ContactHelper$Contact;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 204
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 185
    check-cast p1, Lcom/instagram/util/ContactHelper$Contact;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/instagram/util/ContactHelper$Contact$Serializer;->serialize(Lcom/instagram/util/ContactHelper$Contact;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method
