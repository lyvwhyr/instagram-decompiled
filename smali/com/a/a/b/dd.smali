.class public abstract Lcom/a/a/b/dd;
.super Lcom/a/a/b/do;
.source "ImmutableBiMap.java"

# interfaces
.implements Lcom/a/a/b/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/do",
        "<TK;TV;>;",
        "Lcom/a/a/b/w",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/b/dd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/dd",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/a/a/b/df;

    invoke-direct {v0}, Lcom/a/a/b/df;-><init>()V

    sput-object v0, Lcom/a/a/b/dd;->a:Lcom/a/a/b/dd;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/a/a/b/do;-><init>()V

    return-void
.end method

.method public static e()Lcom/a/a/b/dd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/b/dd",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/a/a/b/dd;->a:Lcom/a/a/b/dd;

    return-object v0
.end method

.method public static f()Lcom/a/a/b/de;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/b/de",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lcom/a/a/b/de;

    invoke-direct {v0}, Lcom/a/a/b/de;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/a/b/dv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dv",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/a/a/b/dd;->g()Lcom/a/a/b/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/do;->a()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/a/a/b/dv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dv",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/a/a/b/dd;->g()Lcom/a/a/b/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/do;->b()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/a/a/b/dg;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/a/a/b/dd;->i()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 227
    .local p0, this:Lcom/a/a/b/dd;,"Lcom/a/a/b/dd<TK;TV;>;"
    invoke-virtual {p0}, Lcom/a/a/b/dd;->g()Lcom/a/a/b/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/b/do;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 231
    .local p0, this:Lcom/a/a/b/dd;,"Lcom/a/a/b/dd<TK;TV;>;"
    invoke-virtual {p0}, Lcom/a/a/b/dd;->h()Lcom/a/a/b/dd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/b/dd;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/a/a/b/dd;->a()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 274
    .local p0, this:Lcom/a/a/b/dd;,"Lcom/a/a/b/dd<TK;TV;>;"
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/b/dd;->g()Lcom/a/a/b/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/b/do;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract g()Lcom/a/a/b/do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/do",
            "<TK;TV;>;"
        }
    .end annotation
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
    .line 239
    .local p0, this:Lcom/a/a/b/dd;,"Lcom/a/a/b/dd<TK;TV;>;"
    invoke-virtual {p0}, Lcom/a/a/b/dd;->g()Lcom/a/a/b/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/b/do;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract h()Lcom/a/a/b/dd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dd",
            "<TV;TK;>;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/a/a/b/dd;->g()Lcom/a/a/b/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/do;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Lcom/a/a/b/dv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dv",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/a/a/b/dd;->h()Lcom/a/a/b/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/dd;->b()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/a/a/b/dd;->g()Lcom/a/a/b/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/do;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/a/a/b/dd;->b()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/a/a/b/dd;->g()Lcom/a/a/b/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/do;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/a/a/b/dd;->g()Lcom/a/a/b/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/do;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/a/a/b/dd;->i()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method
