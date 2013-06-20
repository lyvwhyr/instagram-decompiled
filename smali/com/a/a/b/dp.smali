.class public Lcom/a/a/b/dp;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-static {}, Lcom/a/a/b/fk;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/dp;->a:Ljava/util/ArrayList;

    .line 171
    return-void
.end method

.method private static a(Ljava/util/List;)Lcom/a/a/b/do;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/a/a/b/do",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 213
    packed-switch v0, :pswitch_data_0

    .line 219
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 221
    new-instance v1, Lcom/a/a/b/gq;

    invoke-direct {v1, v0}, Lcom/a/a/b/gq;-><init>([Ljava/util/Map$Entry;)V

    move-object v0, v1

    :goto_0
    return-object v0

    .line 215
    :pswitch_0
    invoke-static {}, Lcom/a/a/b/do;->j()Lcom/a/a/b/do;

    move-result-object v0

    goto :goto_0

    .line 217
    :pswitch_1
    new-instance v1, Lcom/a/a/b/hg;

    invoke-static {p0}, Lcom/a/a/b/eo;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v1, v0}, Lcom/a/a/b/hg;-><init>(Ljava/util/Map$Entry;)V

    move-object v0, v1

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public b()Lcom/a/a/b/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/do",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/a/a/b/dp;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/a/a/b/dp;->a(Ljava/util/List;)Lcom/a/a/b/do;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/dp;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/a/a/b/dp",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/a/a/b/dp;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/a/a/b/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    return-object p0
.end method
