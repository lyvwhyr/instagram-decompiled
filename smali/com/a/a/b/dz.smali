.class Lcom/a/a/b/dz;
.super Lcom/a/a/b/k;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/k",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/dy;


# direct methods
.method constructor <init>(Lcom/a/a/b/dy;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/a/a/b/dz;->a:Lcom/a/a/b/dy;

    invoke-direct {p0, p2}, Lcom/a/a/b/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/a/a/b/dz;->a:Lcom/a/a/b/dy;

    iget-object v1, p0, Lcom/a/a/b/dz;->a:Lcom/a/a/b/dy;

    iget-object v1, v1, Lcom/a/a/b/dy;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/a/a/b/dy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
