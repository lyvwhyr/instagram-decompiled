.class Lcom/a/a/b/gr;
.super Lcom/a/a/b/dw;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dw",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final transient b:Lcom/a/a/b/gq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/gq",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/b/gq;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/gq",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p1}, Lcom/a/a/b/gq;->a(Lcom/a/a/b/gq;)[Lcom/a/a/b/gt;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/b/dw;-><init>([Ljava/lang/Object;)V

    .line 203
    iput-object p1, p0, Lcom/a/a/b/gr;->b:Lcom/a/a/b/gq;

    .line 204
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter "target"

    .prologue
    .local p0, this:Lcom/a/a/b/gr;,"Lcom/a/a/b/gr<TK;TV;>;"
    const/4 v0, 0x0

    .line 207
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 208
    check-cast p1, Ljava/util/Map$Entry;

    .line 209
    .end local p1
    iget-object v1, p0, Lcom/a/a/b/gr;->b:Lcom/a/a/b/gq;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/b/gq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 212
    :cond_0
    return v0
.end method
