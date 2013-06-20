.class public Lcom/instagram/android/service/CustomObjectMapper;
.super Lcom/fasterxml/jackson/databind/ObjectMapper;
.source "CustomObjectMapper.java"


# static fields
.field public static final CUSTOM_OBJECT_MAPPER:Ljava/lang/String; = "com.instagram.android.service.customObjectMapper"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 40
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_FIELDS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v5}, Lcom/instagram/android/service/CustomObjectMapper;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 41
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v5}, Lcom/instagram/android/service/CustomObjectMapper;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 42
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v5}, Lcom/instagram/android/service/CustomObjectMapper;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 43
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_CREATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v5}, Lcom/instagram/android/service/CustomObjectMapper;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 44
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_GETTERS_AS_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v5}, Lcom/instagram/android/service/CustomObjectMapper;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 45
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v5}, Lcom/instagram/android/service/CustomObjectMapper;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 46
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, v0, v5}, Lcom/instagram/android/service/CustomObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 48
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    const-string v1, "MediaModule"

    new-instance v2, Lcom/fasterxml/jackson/core/Version;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v5, v5, v4}, Lcom/fasterxml/jackson/core/Version;-><init>(IIILjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;)V

    .line 50
    const-class v1, Lcom/instagram/android/model/User;

    new-instance v2, Lcom/instagram/android/service/CustomObjectMapper$UserDelegateMapper;

    const-class v3, Lcom/instagram/android/model/User;

    invoke-static {p1}, Lcom/instagram/android/service/UserStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/UserStore;

    move-result-object v4

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/instagram/android/service/CustomObjectMapper$UserDelegateMapper;-><init>(Lcom/instagram/android/service/CustomObjectMapper;Lcom/instagram/android/service/CustomObjectMapper;Ljava/lang/Class;Lcom/instagram/android/service/UserStore;)V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addValueInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 51
    const-class v1, Lcom/instagram/android/model/Media;

    new-instance v2, Lcom/instagram/android/service/CustomObjectMapper$MediaDelegateMapper;

    const-class v3, Lcom/instagram/android/model/Media;

    invoke-static {p1}, Lcom/instagram/android/service/MediaStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/MediaStore;

    move-result-object v4

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/instagram/android/service/CustomObjectMapper$MediaDelegateMapper;-><init>(Lcom/instagram/android/service/CustomObjectMapper;Lcom/instagram/android/service/CustomObjectMapper;Ljava/lang/Class;Lcom/instagram/android/service/MediaStore;)V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addValueInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 52
    const-class v1, Lcom/instagram/android/location/Venue;

    new-instance v2, Lcom/instagram/android/service/CustomObjectMapper$FoursquareVenueDelegateMapper;

    const-class v3, Lcom/instagram/android/location/Venue;

    invoke-direct {v2, p0, p0, v3}, Lcom/instagram/android/service/CustomObjectMapper$FoursquareVenueDelegateMapper;-><init>(Lcom/instagram/android/service/CustomObjectMapper;Lcom/instagram/android/service/CustomObjectMapper;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addValueInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 53
    const-class v1, Lcom/instagram/android/model/Comment;

    new-instance v2, Lcom/instagram/android/service/CustomObjectMapper$CommentDelegateMapper;

    const-class v3, Lcom/instagram/android/model/Comment;

    invoke-direct {v2, p0, p0, v3}, Lcom/instagram/android/service/CustomObjectMapper$CommentDelegateMapper;-><init>(Lcom/instagram/android/service/CustomObjectMapper;Lcom/instagram/android/service/CustomObjectMapper;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addValueInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 54
    const-class v1, Lcom/instagram/android/model/SuggestedUser;

    new-instance v2, Lcom/instagram/android/service/CustomObjectMapper$SuggestedUserDelegateMapper;

    const-class v3, Lcom/instagram/android/model/SuggestedUser;

    invoke-direct {v2, p0, p0, v3}, Lcom/instagram/android/service/CustomObjectMapper$SuggestedUserDelegateMapper;-><init>(Lcom/instagram/android/service/CustomObjectMapper;Lcom/instagram/android/service/CustomObjectMapper;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addValueInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 55
    const-class v1, Lcom/instagram/android/model/MediaFeedResponse;

    new-instance v2, Lcom/instagram/android/service/CustomObjectMapper$MediaFeedResponseMapper;

    const-class v3, Lcom/instagram/android/model/MediaFeedResponse;

    invoke-direct {v2, p0, p0, v3}, Lcom/instagram/android/service/CustomObjectMapper$MediaFeedResponseMapper;-><init>(Lcom/instagram/android/service/CustomObjectMapper;Lcom/instagram/android/service/CustomObjectMapper;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addValueInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 56
    const-class v1, Lcom/instagram/android/people/model/PeopleTag;

    new-instance v2, Lcom/instagram/android/service/CustomObjectMapper$UserTagDelegateMapper;

    const-class v3, Lcom/instagram/android/people/model/PeopleTag;

    invoke-direct {v2, p0, p0, v3}, Lcom/instagram/android/service/CustomObjectMapper$UserTagDelegateMapper;-><init>(Lcom/instagram/android/service/CustomObjectMapper;Lcom/instagram/android/service/CustomObjectMapper;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addValueInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 58
    invoke-virtual {p0, v0}, Lcom/instagram/android/service/CustomObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 59
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/instagram/android/service/CustomObjectMapper;
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    const-string v0, "com.instagram.android.service.customObjectMapper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/service/CustomObjectMapper;

    .line 27
    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 29
    const-string v0, "com.instagram.android.service.customObjectMapper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/service/CustomObjectMapper;

    .line 31
    :cond_0
    if-nez v0, :cond_1

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomObjectMapper not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    return-object v0
.end method


# virtual methods
.method public readArrayList(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 2
    .parameter "root"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/instagram/android/service/CustomObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    .line 64
    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    .line 68
    :try_start_0
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/core/TreeNode;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    invoke-super {p0, v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
