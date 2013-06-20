.class final Lcom/a/a/b/et;
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


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1008
    iput-object p2, p0, Lcom/a/a/b/et;->a:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/a/a/b/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/a/a/b/et;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
