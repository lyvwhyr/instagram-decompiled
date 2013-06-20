.class public abstract Lcom/facebook/d/a;
.super Lcom/facebook/d/g;
.source "AbstractInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/facebook/d/g;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContextAwareProvider(Lcom/a/c/b;)Ljavax/inject/Provider;
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
.end method

.method public getContextAwareProvider(Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/a/c/b;->a(Ljava/lang/Class;)Lcom/a/c/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/d/a;->getContextAwareProvider(Lcom/a/c/b;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getContextAwareProvider(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
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
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p1, p2}, Lcom/a/c/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/c/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/d/a;->getContextAwareProvider(Lcom/a/c/b;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lcom/a/c/b;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/c/b",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, key:Lcom/a/c/b;,"Lcom/a/c/b<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/d/a;->getProvider(Lcom/a/c/b;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/d/a;->getProvider(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
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
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p1, p2}, Lcom/a/c/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/c/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/d/a;->getProvider(Lcom/a/c/b;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getModuleInjector(Ljava/lang/Class;)Lcom/facebook/d/g;
    .locals 0
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
    .line 77
    .local p1, module:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/facebook/inject/Module;>;"
    return-object p0
.end method

.method public abstract getProvider(Lcom/a/c/b;)Ljavax/inject/Provider;
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
.end method

.method public getProvider(Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/a/c/b;->a(Ljava/lang/Class;)Lcom/a/c/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/d/a;->getProvider(Lcom/a/c/b;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getProvider(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
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
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p1, p2}, Lcom/a/c/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/c/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/d/a;->getProvider(Lcom/a/c/b;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getSet(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/d/a;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/c/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/d/a;->getInstance(Lcom/a/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getSet(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
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
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, annotation:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p1, p2}, Lcom/facebook/d/a;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/c/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/d/a;->getInstance(Lcom/a/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getSetProvider(Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/d/a;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/c/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/d/a;->getProvider(Lcom/a/c/b;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getSetProvider(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
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
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, annotation:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p1, p2}, Lcom/facebook/d/a;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/c/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/d/a;->getProvider(Lcom/a/c/b;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method
