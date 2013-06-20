.class Lcom/a/a/b/ej;
.super Lcom/a/a/b/dg;
.source "ImmutableSortedMap.java"


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
.field private final a:Lcom/a/a/b/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/ec",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/b/ec;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/ec",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/a/a/b/dg;-><init>()V

    .line 563
    iput-object p1, p0, Lcom/a/a/b/ej;->a:Lcom/a/a/b/ec;

    .line 564
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x1

    return v0
.end method

.method public a_()Lcom/a/a/b/id;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/id",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/a/a/b/ej;->a:Lcom/a/a/b/ec;

    invoke-virtual {v0}, Lcom/a/a/b/ec;->h()Lcom/a/a/b/id;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 576
    .local p0, this:Lcom/a/a/b/ej;,"Lcom/a/a/b/ej<TV;>;"
    iget-object v0, p0, Lcom/a/a/b/ej;->a:Lcom/a/a/b/ec;

    invoke-virtual {v0, p1}, Lcom/a/a/b/ec;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/a/a/b/ej;->a_()Lcom/a/a/b/id;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/a/a/b/ej;->a:Lcom/a/a/b/ec;

    invoke-virtual {v0}, Lcom/a/a/b/ec;->size()I

    move-result v0

    return v0
.end method
