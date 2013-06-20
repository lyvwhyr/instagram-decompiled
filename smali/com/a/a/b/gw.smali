.class Lcom/a/a/b/gw;
.super Lcom/a/a/b/dg;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dg",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/a/a/b/gq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/gq",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/b/gq;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/gq",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/a/a/b/dg;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/a/a/b/gw;->a:Lcom/a/a/b/gq;

    .line 259
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public a_()Lcom/a/a/b/id;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/id",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lcom/a/a/b/gx;

    iget-object v1, p0, Lcom/a/a/b/gw;->a:Lcom/a/a/b/gq;

    invoke-static {v1}, Lcom/a/a/b/gq;->a(Lcom/a/a/b/gq;)[Lcom/a/a/b/gt;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/gx;-><init>(Lcom/a/a/b/gw;I)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 275
    .local p0, this:Lcom/a/a/b/gw;,"Lcom/a/a/b/gw<TV;>;"
    iget-object v0, p0, Lcom/a/a/b/gw;->a:Lcom/a/a/b/gq;

    invoke-virtual {v0, p1}, Lcom/a/a/b/gq;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/a/a/b/gw;->a_()Lcom/a/a/b/id;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/a/a/b/gw;->a:Lcom/a/a/b/gq;

    invoke-static {v0}, Lcom/a/a/b/gq;->a(Lcom/a/a/b/gq;)[Lcom/a/a/b/gt;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
