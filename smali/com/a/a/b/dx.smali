.class public Lcom/a/a/b/dx;
.super Lcom/a/a/b/di;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/di",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/a/a/b/di;-><init>()V

    .line 569
    invoke-static {}, Lcom/a/a/b/fk;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/dx;->a:Ljava/util/ArrayList;

    .line 575
    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/a/a/b/dg;
    .locals 1

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/a/a/b/dx;->b()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Lcom/a/a/b/di;
    .locals 1
    .parameter

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcom/a/a/b/dx;->b(Ljava/lang/Object;)Lcom/a/a/b/dx;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/a/a/b/dv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 643
    iget-object v0, p0, Lcom/a/a/b/dx;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/a/a/b/dv;->a(Ljava/util/Collection;)Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lcom/a/a/b/dx;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/a/a/b/dx",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Lcom/a/a/b/dx;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    return-object p0
.end method
