.class final Lcom/a/a/b/eu;
.super Lcom/a/a/b/k;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/k",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:I


# direct methods
.method constructor <init>(I[Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1042
    iput-object p2, p0, Lcom/a/a/b/eu;->a:[Ljava/lang/Object;

    iput p3, p0, Lcom/a/a/b/eu;->b:I

    invoke-direct {p0, p1}, Lcom/a/a/b/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/a/a/b/eu;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/a/a/b/eu;->b:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
