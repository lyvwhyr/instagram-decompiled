.class public Lcom/facebook/d/c;
.super Lcom/facebook/d/a;
.source "ContextAwareInjector.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/d/e;

.field private final c:Lcom/facebook/d/g;


# direct methods
.method public constructor <init>(Lcom/facebook/d/g;Lcom/facebook/d/e;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/d/a;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/d/c;->c:Lcom/facebook/d/g;

    .line 29
    iput-object p2, p0, Lcom/facebook/d/c;->b:Lcom/facebook/d/e;

    .line 30
    iput-object p3, p0, Lcom/facebook/d/c;->a:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/facebook/d/c;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/d/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/d/c;)Lcom/facebook/d/e;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/d/c;->b:Lcom/facebook/d/e;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/d/c;)Lcom/facebook/d/g;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/d/c;->c:Lcom/facebook/d/g;

    return-object v0
.end method


# virtual methods
.method public getApplicationInjector()Lcom/facebook/d/g;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/d/c;->c:Lcom/facebook/d/g;

    invoke-virtual {v0}, Lcom/facebook/d/g;->getApplicationInjector()Lcom/facebook/d/g;

    move-result-object v0

    return-object v0
.end method

.method public getBinders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/Module;",
            ">;",
            "Lcom/facebook/inject/Binder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/d/c;->c:Lcom/facebook/d/g;

    invoke-virtual {v0}, Lcom/facebook/d/g;->getBinders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getContextAwareProvider(Lcom/a/c/b;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/c/b",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, key:Lcom/a/c/b;,"Lcom/a/c/b<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/d/c;->getProvider(Lcom/a/c/b;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getProvider(Lcom/a/c/b;)Ljavax/inject/Provider;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/c/b",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, key:Lcom/a/c/b;,"Lcom/a/c/b<TT;>;"
    iget-object v0, p0, Lcom/facebook/d/c;->c:Lcom/facebook/d/g;

    invoke-virtual {v0, p1}, Lcom/facebook/d/g;->getProvider(Lcom/a/c/b;)Ljavax/inject/Provider;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/facebook/d/d;

    invoke-direct {v1, p0, v0}, Lcom/facebook/d/d;-><init>(Lcom/facebook/d/c;Ljavax/inject/Provider;)V

    return-object v1
.end method

.method public hasBinding(Lcom/a/c/b;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/c/b",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, key:Lcom/a/c/b;,"Lcom/a/c/b<*>;"
    iget-object v0, p0, Lcom/facebook/d/c;->c:Lcom/facebook/d/g;

    invoke-virtual {v0, p1}, Lcom/facebook/d/g;->hasBinding(Lcom/a/c/b;)Z

    move-result v0

    return v0
.end method
