.class Lcom/a/a/b/gn;
.super Lcom/a/a/b/dd;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dd",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final transient a:Lcom/a/a/b/do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/do",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transient b:Lcom/a/a/b/dd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/dd",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/b/do;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/do",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/a/a/b/dd;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/a/a/b/gn;->a:Lcom/a/a/b/do;

    .line 35
    invoke-static {}, Lcom/a/a/b/do;->k()Lcom/a/a/b/dp;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lcom/a/a/b/do;->a()Lcom/a/a/b/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/dv;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/a/a/b/dp;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/dp;

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v1}, Lcom/a/a/b/dp;->b()Lcom/a/a/b/do;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/a/a/b/gn;

    invoke-direct {v1, v0, p0}, Lcom/a/a/b/gn;-><init>(Lcom/a/a/b/do;Lcom/a/a/b/dd;)V

    iput-object v1, p0, Lcom/a/a/b/gn;->b:Lcom/a/a/b/dd;

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/a/a/b/do;Lcom/a/a/b/dd;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/do",
            "<TK;TV;>;",
            "Lcom/a/a/b/dd",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/a/a/b/dd;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/a/a/b/gn;->a:Lcom/a/a/b/do;

    .line 46
    iput-object p2, p0, Lcom/a/a/b/gn;->b:Lcom/a/a/b/dd;

    .line 47
    return-void
.end method


# virtual methods
.method d()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/a/a/b/gn;->a:Lcom/a/a/b/do;

    invoke-virtual {v0}, Lcom/a/a/b/do;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/gn;->b:Lcom/a/a/b/dd;

    invoke-virtual {v0}, Lcom/a/a/b/dd;->g()Lcom/a/a/b/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/do;->d()Z

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

.method g()Lcom/a/a/b/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/do",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/a/a/b/gn;->a:Lcom/a/a/b/do;

    return-object v0
.end method

.method public h()Lcom/a/a/b/dd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dd",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/a/a/b/gn;->b:Lcom/a/a/b/dd;

    return-object v0
.end method
