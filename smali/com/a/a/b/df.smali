.class Lcom/a/a/b/df;
.super Lcom/a/a/b/dd;
.source "ImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/dd",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/a/a/b/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic c()Lcom/a/a/b/dg;
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/a/a/b/dd;->i()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/a/a/b/dd;->a()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method g()Lcom/a/a/b/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/do",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    invoke-static {}, Lcom/a/a/b/do;->j()Lcom/a/a/b/do;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/a/a/b/dd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dd",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    return-object p0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/a/a/b/dd;->b()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/a/a/b/dd;->i()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method
