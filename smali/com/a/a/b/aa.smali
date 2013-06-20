.class Lcom/a/a/b/aa;
.super Lcom/a/a/b/ah;
.source "ComputingConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/ah",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/a/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/g",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/b/fl;Lcom/a/a/a/g;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/fl;",
            "Lcom/a/a/a/g",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/a/a/b/ah;-><init>(Lcom/a/a/b/fl;)V

    .line 54
    invoke-static {p2}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/g;

    iput-object v0, p0, Lcom/a/a/b/aa;->a:Lcom/a/a/a/g;

    .line 55
    return-void
.end method


# virtual methods
.method a(I)Lcom/a/a/b/ae;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/a/a/b/ae",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/a/a/b/ah;->b(I)Lcom/a/a/b/bl;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/ae;

    return-object v0
.end method

.method a(II)Lcom/a/a/b/bl;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/a/a/b/bl",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/a/a/b/ae;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/a/b/ae;-><init>(Lcom/a/a/b/ah;II)V

    return-object v0
.end method

.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/b/aa;->b(Ljava/lang/Object;)I

    move-result v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/a/a/b/aa;->a(I)Lcom/a/a/b/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/aa;->a:Lcom/a/a/a/g;

    invoke-virtual {v1, p1, v0, v2}, Lcom/a/a/b/ae;->a(Ljava/lang/Object;ILcom/a/a/a/g;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method synthetic b(I)Lcom/a/a/b/bl;
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/a/a/b/aa;->a(I)Lcom/a/a/b/ae;

    move-result-object v0

    return-object v0
.end method
