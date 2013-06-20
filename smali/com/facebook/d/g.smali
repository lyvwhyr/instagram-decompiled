.class public abstract Lcom/facebook/d/g;
.super Ljava/lang/Object;
.source "FbInjector.java"

# interfaces
.implements Lcom/facebook/d/i;


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/Module;",
            ">;",
            "Lcom/facebook/d/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/a/a/b/fl;

    invoke-direct {v0}, Lcom/a/a/b/fl;-><init>()V

    invoke-virtual {v0}, Lcom/a/a/b/fl;->f()Lcom/a/a/b/fl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/fl;->h()Lcom/a/a/b/fl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/fl;->m()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/d/g;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/c/b;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/a/c/b",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/a/c/a/g;

    const/4 v1, 0x0

    const-class v2, Ljava/util/Set;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/a/c/a/g;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 149
    invoke-static {v0}, Lcom/a/c/g;->a(Ljava/lang/reflect/Type;)Lcom/a/c/g;

    move-result-object v0

    .line 150
    if-eqz p1, :cond_0

    .line 151
    invoke-static {v0, p1}, Lcom/a/c/b;->a(Lcom/a/c/g;Ljava/lang/Class;)Lcom/a/c/b;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/a/c/b;->a(Lcom/a/c/g;)Lcom/a/c/b;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/d/g;
    .locals 1
    .parameter

    .prologue
    .line 46
    const-class v0, Lcom/facebook/d/m;

    invoke-static {p0, v0}, Lcom/facebook/d/g;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/facebook/d/g;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;)Lcom/facebook/d/g;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/Module;",
            ">;)",
            "Lcom/facebook/d/g;"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 59
    sget-object v0, Lcom/facebook/d/g;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 60
    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lcom/a/a/b/fx;->b()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 62
    sget-object v2, Lcom/facebook/d/g;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v1

    .line 67
    :goto_0
    if-nez v0, :cond_2

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/d/h;

    .line 69
    invoke-interface {v0}, Lcom/facebook/d/h;->a()Lcom/facebook/d/g;

    move-result-object v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can NOT get FbInjector instance! Probably because this method was called in ContentProvider\'s onCreate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/d/c;

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    .line 74
    :cond_1
    new-instance v1, Lcom/facebook/d/c;

    invoke-virtual {v0, p1}, Lcom/facebook/d/g;->getModuleInjector(Ljava/lang/Class;)Lcom/facebook/d/g;

    move-result-object v3

    const-class v4, Lcom/facebook/d/e;

    invoke-virtual {v0, v4}, Lcom/facebook/d/g;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/d/e;

    invoke-direct {v1, v3, v0, p0}, Lcom/facebook/d/c;-><init>(Lcom/facebook/d/g;Lcom/facebook/d/e;Landroid/content/Context;)V

    .line 79
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 81
    :cond_2
    return-object v0
.end method
