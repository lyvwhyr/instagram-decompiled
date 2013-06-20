.class Lcom/a/a/b/gp;
.super Lcom/a/a/b/k;
.source "RegularImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/k",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/go;


# direct methods
.method constructor <init>(Lcom/a/a/b/go;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/a/a/b/gp;->a:Lcom/a/a/b/go;

    invoke-direct {p0, p2, p3}, Lcom/a/a/b/k;-><init>(II)V

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
    .line 130
    iget-object v0, p0, Lcom/a/a/b/gp;->a:Lcom/a/a/b/go;

    invoke-static {v0}, Lcom/a/a/b/go;->a(Lcom/a/a/b/go;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b/gp;->a:Lcom/a/a/b/go;

    invoke-static {v1}, Lcom/a/a/b/go;->b(Lcom/a/a/b/go;)I

    move-result v1

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
