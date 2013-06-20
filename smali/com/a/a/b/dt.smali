.class public Lcom/a/a/b/dt;
.super Lcom/a/a/b/di;
.source "ImmutableMultiset.java"


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
.field final a:Lcom/a/a/b/ga;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/ga",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 521
    invoke-static {}, Lcom/a/a/b/ey;->h()Lcom/a/a/b/ey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/b/dt;-><init>(Lcom/a/a/b/ga;)V

    .line 522
    return-void
.end method

.method constructor <init>(Lcom/a/a/b/ga;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/ga",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/a/a/b/di;-><init>()V

    .line 525
    iput-object p1, p0, Lcom/a/a/b/dt;->a:Lcom/a/a/b/ga;

    .line 526
    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/a/a/b/dg;
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/a/a/b/dt;->b()Lcom/a/a/b/dr;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Lcom/a/a/b/di;
    .locals 1
    .parameter

    .prologue
    .line 513
    invoke-virtual {p0, p1}, Lcom/a/a/b/dt;->b(Ljava/lang/Object;)Lcom/a/a/b/dt;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/a/a/b/dr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dr",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lcom/a/a/b/dt;->a:Lcom/a/a/b/ga;

    invoke-static {v0}, Lcom/a/a/b/dr;->a(Ljava/lang/Iterable;)Lcom/a/a/b/dr;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lcom/a/a/b/dt;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/a/a/b/dt",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/a/a/b/dt;->a:Lcom/a/a/b/ga;

    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/a/b/ga;->add(Ljava/lang/Object;)Z

    .line 537
    return-object p0
.end method
