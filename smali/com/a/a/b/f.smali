.class Lcom/a/a/b/f;
.super Lcom/a/a/b/a;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/a",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/a/a/b/a;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/a/a/b/a",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/b/a;-><init>(Ljava/util/Map;Lcom/a/a/b/a;Lcom/a/a/b/b;)V

    .line 375
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/a/a/b/a;Lcom/a/a/b/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Lcom/a/a/b/f;-><init>(Ljava/util/Map;Lcom/a/a/b/a;)V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 372
    invoke-super {p0}, Lcom/a/a/b/a;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 372
    invoke-super {p0}, Lcom/a/a/b/a;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
