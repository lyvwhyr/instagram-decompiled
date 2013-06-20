.class Lcom/instagram/android/service/CustomObjectMapper$MediaDelegateMapper;
.super Lcom/instagram/android/service/DelegateValueMapper;
.source "CustomObjectMapper.java"


# instance fields
.field private mMediaStore:Lcom/instagram/android/service/MediaStore;

.field final synthetic this$0:Lcom/instagram/android/service/CustomObjectMapper;


# direct methods
.method public constructor <init>(Lcom/instagram/android/service/CustomObjectMapper;Lcom/instagram/android/service/CustomObjectMapper;Ljava/lang/Class;Lcom/instagram/android/service/MediaStore;)V
    .locals 0
    .parameter
    .parameter "mapper"
    .parameter "clazz"
    .parameter "mediaStore"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/instagram/android/service/CustomObjectMapper$MediaDelegateMapper;->this$0:Lcom/instagram/android/service/CustomObjectMapper;

    .line 81
    invoke-direct {p0, p3, p2}, Lcom/instagram/android/service/DelegateValueMapper;-><init>(Ljava/lang/Class;Lcom/instagram/android/service/CustomObjectMapper;)V

    .line 82
    iput-object p4, p0, Lcom/instagram/android/service/CustomObjectMapper$MediaDelegateMapper;->mMediaStore:Lcom/instagram/android/service/MediaStore;

    .line 83
    return-void
.end method


# virtual methods
.method public createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "ctxt"
    .parameter "delegate"

    .prologue
    .line 88
    check-cast p2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 89
    .end local p2
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/instagram/android/service/CustomObjectMapper$MediaDelegateMapper;->mMediaStore:Lcom/instagram/android/service/MediaStore;

    invoke-virtual {v1, v0}, Lcom/instagram/android/service/MediaStore;->get(Ljava/lang/Object;)Lcom/instagram/android/model/Media;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/instagram/android/service/CustomObjectMapper$MediaDelegateMapper;->getMapper()Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/instagram/android/model/Media;->fromJsonNode(Lcom/instagram/android/service/CustomObjectMapper;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/android/model/Media;)Lcom/instagram/android/model/Media;

    move-result-object v1

    .line 93
    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/instagram/android/service/CustomObjectMapper$MediaDelegateMapper;->mMediaStore:Lcom/instagram/android/service/MediaStore;

    invoke-virtual {v1}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/instagram/android/service/MediaStore;->put(Ljava/lang/String;Lcom/instagram/android/model/Media;)Lcom/instagram/android/model/Media;

    .line 99
    :goto_0
    return-object v1

    .line 96
    :cond_0
    invoke-virtual {v1}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia()V

    goto :goto_0
.end method
