.class Lcom/instagram/android/service/CustomObjectMapper$UserDelegateMapper;
.super Lcom/instagram/android/service/DelegateValueMapper;
.source "CustomObjectMapper.java"


# instance fields
.field private mUserStore:Lcom/instagram/android/service/UserStore;

.field final synthetic this$0:Lcom/instagram/android/service/CustomObjectMapper;


# direct methods
.method public constructor <init>(Lcom/instagram/android/service/CustomObjectMapper;Lcom/instagram/android/service/CustomObjectMapper;Ljava/lang/Class;Lcom/instagram/android/service/UserStore;)V
    .locals 0
    .parameter
    .parameter "mapper"
    .parameter "clazz"
    .parameter "userStore"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/instagram/android/service/CustomObjectMapper$UserDelegateMapper;->this$0:Lcom/instagram/android/service/CustomObjectMapper;

    .line 108
    invoke-direct {p0, p3, p2}, Lcom/instagram/android/service/DelegateValueMapper;-><init>(Ljava/lang/Class;Lcom/instagram/android/service/CustomObjectMapper;)V

    .line 109
    iput-object p4, p0, Lcom/instagram/android/service/CustomObjectMapper$UserDelegateMapper;->mUserStore:Lcom/instagram/android/service/UserStore;

    .line 110
    return-void
.end method


# virtual methods
.method public createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "ctxt"
    .parameter "delegate"

    .prologue
    .line 115
    check-cast p2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 116
    .end local p2
    const-string v0, "pk"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/instagram/android/service/CustomObjectMapper$UserDelegateMapper;->mUserStore:Lcom/instagram/android/service/UserStore;

    invoke-virtual {v1, v0}, Lcom/instagram/android/service/UserStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 119
    invoke-static {p2, v0}, Lcom/instagram/android/model/User;->fromJsonNode(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;

    move-result-object v1

    .line 120
    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/instagram/android/service/CustomObjectMapper$UserDelegateMapper;->mUserStore:Lcom/instagram/android/service/UserStore;

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/instagram/android/service/UserStore;->put(Ljava/lang/String;Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;

    .line 126
    :goto_0
    return-object v1

    .line 123
    :cond_0
    invoke-virtual {v1}, Lcom/instagram/android/model/User;->broadcastUpdate()V

    goto :goto_0
.end method
