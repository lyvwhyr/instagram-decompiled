.class Lcom/a/a/b/hz;
.super Lcom/a/a/b/k;
.source "TransformedImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/k",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/hy;


# direct methods
.method constructor <init>(Lcom/a/a/b/hy;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/a/a/b/hz;->a:Lcom/a/a/b/hy;

    invoke-direct {p0, p2, p3}, Lcom/a/a/b/k;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/a/a/b/hz;->a:Lcom/a/a/b/hy;

    invoke-virtual {v0, p1}, Lcom/a/a/b/hy;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
