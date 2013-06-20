.class Lcom/a/a/b/hh;
.super Lcom/a/a/b/dg;
.source "SingletonImmutableMap.java"


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
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/a/a/b/dg;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/a/a/b/hh;->a:Ljava/lang/Object;

    .line 109
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 129
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
    .line 125
    iget-object v0, p0, Lcom/a/a/b/hh;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/a/a/b/er;->a(Ljava/lang/Object;)Lcom/a/a/b/id;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 112
    .local p0, this:Lcom/a/a/b/hh;,"Lcom/a/a/b/hh<TV;>;"
    iget-object v0, p0, Lcom/a/a/b/hh;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/a/a/b/hh;->a_()Lcom/a/a/b/id;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method
