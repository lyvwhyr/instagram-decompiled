.class public abstract Lcom/instagram/android/service/DelegateValueMapper;
.super Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.source "DelegateValueMapper.java"


# instance fields
.field protected mClazz:Ljava/lang/Class;

.field protected mMapper:Lcom/instagram/android/service/CustomObjectMapper;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/instagram/android/service/CustomObjectMapper;)V
    .locals 0
    .parameter "clazz"
    .parameter "mapper"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/instagram/android/service/DelegateValueMapper;->mClazz:Ljava/lang/Class;

    .line 18
    iput-object p2, p0, Lcom/instagram/android/service/DelegateValueMapper;->mMapper:Lcom/instagram/android/service/CustomObjectMapper;

    .line 19
    return-void
.end method


# virtual methods
.method public canCreateUsingDelegate()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .parameter "config"

    .prologue
    .line 23
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getMapper()Lcom/instagram/android/service/CustomObjectMapper;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/service/DelegateValueMapper;->mMapper:Lcom/instagram/android/service/CustomObjectMapper;

    return-object v0
.end method

.method public getValueTypeDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/instagram/android/service/DelegateValueMapper;->mClazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
