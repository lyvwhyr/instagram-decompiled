.class Lcom/a/a/b/fo;
.super Ljava/util/AbstractMap;
.source "MapMaker.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/b/fv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/fv",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/b/fp;


# direct methods
.method constructor <init>(Lcom/a/a/b/fl;)V
    .locals 1
    .parameter

    .prologue
    .line 916
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 917
    invoke-virtual {p1}, Lcom/a/a/b/fl;->a()Lcom/a/a/b/fv;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/fo;->a:Lcom/a/a/b/fv;

    .line 918
    iget-object v0, p1, Lcom/a/a/b/fl;->j:Lcom/a/a/b/fp;

    iput-object v0, p0, Lcom/a/a/b/fo;->b:Lcom/a/a/b/fp;

    .line 919
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 939
    new-instance v0, Lcom/a/a/b/fw;

    iget-object v1, p0, Lcom/a/a/b/fo;->b:Lcom/a/a/b/fp;

    invoke-direct {v0, p1, p2, v1}, Lcom/a/a/b/fw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/a/a/b/fp;)V

    .line 941
    iget-object v1, p0, Lcom/a/a/b/fo;->a:Lcom/a/a/b/fv;

    invoke-interface {v1, v0}, Lcom/a/a/b/fv;->a(Lcom/a/a/b/fw;)V

    .line 942
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 925
    .local p0, this:Lcom/a/a/b/fo;,"Lcom/a/a/b/fo<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 930
    .local p0, this:Lcom/a/a/b/fo;,"Lcom/a/a/b/fo<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 983
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 935
    .local p0, this:Lcom/a/a/b/fo;,"Lcom/a/a/b/fo<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 946
    .local p0, this:Lcom/a/a/b/fo;,"Lcom/a/a/b/fo<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    invoke-static {p2}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/fo;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 949
    const/4 v0, 0x0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 954
    .local p0, this:Lcom/a/a/b/fo;,"Lcom/a/a/b/fo<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/fo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 959
    .local p0, this:Lcom/a/a/b/fo;,"Lcom/a/a/b/fo<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 964
    .local p0, this:Lcom/a/a/b/fo;,"Lcom/a/a/b/fo<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 969
    .local p0, this:Lcom/a/a/b/fo;,"Lcom/a/a/b/fo<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    invoke-static {p2}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const/4 v0, 0x0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 976
    .local p0, this:Lcom/a/a/b/fo;,"Lcom/a/a/b/fo<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, oldValue:Ljava/lang/Object;,"TV;"
    .local p3, newValue:Ljava/lang/Object;,"TV;"
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    invoke-static {p3}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    const/4 v0, 0x0

    return v0
.end method
