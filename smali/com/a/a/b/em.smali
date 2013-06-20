.class public final Lcom/a/a/b/em;
.super Lcom/a/a/b/dx;
.source "ImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dx",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/a/a/b/dx;-><init>()V

    .line 501
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/a/a/b/em;->b:Ljava/util/Comparator;

    .line 502
    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/a/a/b/dg;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/a/a/b/em;->c()Lcom/a/a/b/el;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Lcom/a/a/b/di;
    .locals 1
    .parameter

    .prologue
    .line 493
    invoke-virtual {p0, p1}, Lcom/a/a/b/em;->c(Ljava/lang/Object;)Lcom/a/a/b/em;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/a/a/b/dv;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/a/a/b/em;->c()Lcom/a/a/b/el;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/a/a/b/dx;
    .locals 1
    .parameter

    .prologue
    .line 493
    invoke-virtual {p0, p1}, Lcom/a/a/b/em;->c(Ljava/lang/Object;)Lcom/a/a/b/em;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/a/a/b/el;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/el",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcom/a/a/b/em;->b:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/a/a/b/em;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/b/el;->a(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/a/a/b/el;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Lcom/a/a/b/em;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/a/a/b/em",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 515
    invoke-super {p0, p1}, Lcom/a/a/b/dx;->b(Ljava/lang/Object;)Lcom/a/a/b/dx;

    .line 516
    return-object p0
.end method
