.class Lcom/a/a/b/ia;
.super Lcom/a/a/b/hy;
.source "TransformedImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/hy",
        "<TD;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/hy;


# direct methods
.method constructor <init>(Lcom/a/a/b/hy;Lcom/a/a/b/dl;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/dl",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lcom/a/a/b/ia;->a:Lcom/a/a/b/hy;

    .line 37
    invoke-direct {p0, p2}, Lcom/a/a/b/hy;-><init>(Lcom/a/a/b/dl;)V

    .line 38
    return-void
.end method


# virtual methods
.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TE;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/a/a/b/ia;->a:Lcom/a/a/b/hy;

    invoke-virtual {v0, p1}, Lcom/a/a/b/hy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    .local p0, this:Lcom/a/a/b/ia;,"Lcom/a/a/b/hy<TD;TE;>.com/a/a/b/ia;"
    invoke-super {p0, p1}, Lcom/a/a/b/hy;->a(I)Lcom/a/a/b/ie;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    .local p0, this:Lcom/a/a/b/ia;,"Lcom/a/a/b/hy<TD;TE;>.com/a/a/b/ia;"
    invoke-super {p0, p1, p2}, Lcom/a/a/b/hy;->a(II)Lcom/a/a/b/dl;

    move-result-object v0

    return-object v0
.end method
