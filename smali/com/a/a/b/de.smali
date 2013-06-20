.class public final Lcom/a/a/b/de;
.super Lcom/a/a/b/dp;
.source "ImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dp",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/a/a/b/dp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/b/dd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dd",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-super {p0}, Lcom/a/a/b/dp;->b()Lcom/a/a/b/do;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lcom/a/a/b/do;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/a/a/b/dd;->e()Lcom/a/a/b/dd;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/b/gn;

    invoke-direct {v0, v1}, Lcom/a/a/b/gn;-><init>(Lcom/a/a/b/do;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/de;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/a/a/b/de",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/a/a/b/dp;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/dp;

    .line 151
    return-object p0
.end method

.method public synthetic b()Lcom/a/a/b/do;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/a/a/b/de;->a()Lcom/a/a/b/dd;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/dp;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/de;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/de;

    move-result-object v0

    return-object v0
.end method
