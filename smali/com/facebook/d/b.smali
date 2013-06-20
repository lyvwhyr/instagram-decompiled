.class public abstract Lcom/facebook/d/b;
.super Ljava/lang/Object;
.source "AbstractProvider.java"

# interfaces
.implements Lcom/facebook/d/i;
.implements Lcom/facebook/d/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/d/i;",
        "Lcom/facebook/d/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private injector:Lcom/facebook/d/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationInjector()Lcom/facebook/d/g;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

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
    .line 104
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    invoke-virtual {v0}, Lcom/facebook/d/g;->getBinders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getContextAwareProvider(Lcom/a/c/b;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/c/b",
            "<TS;>;)",
            "Ljavax/inject/Provider",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/facebook/d/b;,"Lcom/facebook/d/b<TT;>;"
    .local p1, key:Lcom/a/c/b;,"Lcom/a/c/b<TS;>;"
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    invoke-virtual {v0, p1}, Lcom/facebook/d/g;->getContextAwareProvider(Lcom/a/c/b;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getContextAwareProvider(Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Ljavax/inject/Provider",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/facebook/d/b;,"Lcom/facebook/d/b<TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TS;>;"
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    invoke-virtual {v0, p1}, Lcom/facebook/d/g;->getContextAwareProvider(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getContextAwareProvider(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/inject/Provider",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/facebook/d/b;,"Lcom/facebook/d/b<TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TS;>;"
    .local p2, annotation:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/d/g;->getContextAwareProvider(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method protected getInjector()Lcom/facebook/d/g;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    return-object v0
.end method

.method public getInstance(Lcom/a/c/b;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/c/b",
            "<TS;>;)TS;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/facebook/d/b;,"Lcom/facebook/d/b<TT;>;"
    .local p1, key:Lcom/a/c/b;,"Lcom/a/c/b<TS;>;"
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    invoke-virtual {v0, p1}, Lcom/facebook/d/g;->getInstance(Lcom/a/c/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)TS;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/facebook/d/b;,"Lcom/facebook/d/b<TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TS;>;"
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    invoke-virtual {v0, p1}, Lcom/facebook/d/g;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)TS;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lcom/facebook/d/b;,"Lcom/facebook/d/b<TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TS;>;"
    .local p2, annotation:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/d/g;->getInstance(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getModuleInjector(Ljava/lang/Class;)Lcom/facebook/d/g;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/Module;",
            ">;)",
            "Lcom/facebook/d/g;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/facebook/d/b;,"Lcom/facebook/d/b<TT;>;"
    .local p1, module:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/facebook/inject/Module;>;"
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    invoke-virtual {v0, p1}, Lcom/facebook/d/g;->getModuleInjector(Ljava/lang/Class;)Lcom/facebook/d/g;

    move-result-object v0

    return-object v0
.end method

.method public getProvider(Lcom/a/c/b;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/c/b",
            "<TS;>;)",
            "Ljavax/inject/Provider",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/facebook/d/b;,"Lcom/facebook/d/b<TT;>;"
    .local p1, key:Lcom/a/c/b;,"Lcom/a/c/b<TS;>;"
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    invoke-virtual {v0, p1}, Lcom/facebook/d/g;->getProvider(Lcom/a/c/b;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getProvider(Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Ljavax/inject/Provider",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/facebook/d/b;,"Lcom/facebook/d/b<TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TS;>;"
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    invoke-virtual {v0, p1}, Lcom/facebook/d/g;->getProvider(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getProvider(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/inject/Provider",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lcom/facebook/d/b;,"Lcom/facebook/d/b<TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TS;>;"
    .local p2, annotation:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/d/g;->getProvider(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getSet(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Ljava/util/Set",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/facebook/d/b;,"Lcom/facebook/d/b<TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TS;>;"
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    invoke-virtual {v0, p1}, Lcom/facebook/d/g;->getSet(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSet(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/facebook/d/b;,"Lcom/facebook/d/b<TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TS;>;"
    .local p2, annotation:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/d/g;->getSet(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSetProvider(Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/facebook/d/b;,"Lcom/facebook/d/b<TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TS;>;"
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    invoke-virtual {v0, p1}, Lcom/facebook/d/g;->getSetProvider(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getSetProvider(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lcom/facebook/d/b;,"Lcom/facebook/d/b<TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TS;>;"
    .local p2, annotation:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/d/g;->getSetProvider(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
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
    .line 99
    .local p0, this:Lcom/facebook/d/b;,"Lcom/facebook/d/b<TT;>;"
    .local p1, key:Lcom/a/c/b;,"Lcom/a/c/b<*>;"
    iget-object v0, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    invoke-virtual {v0, p1}, Lcom/facebook/d/g;->hasBinding(Lcom/a/c/b;)Z

    move-result v0

    return v0
.end method

.method public setInjector(Lcom/facebook/d/g;)V
    .locals 0
    .parameter "injector"

    .prologue
    .line 22
    .local p0, this:Lcom/facebook/d/b;,"Lcom/facebook/d/b<TT;>;"
    iput-object p1, p0, Lcom/facebook/d/b;->injector:Lcom/facebook/d/g;

    .line 23
    return-void
.end method
