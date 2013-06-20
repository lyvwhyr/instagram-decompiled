.class Lcom/a/a/b/j;
.super Ljava/lang/Object;
.source "AbstractBiMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/a/a/b/i;


# direct methods
.method constructor <init>(Lcom/a/a/b/i;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/a/a/b/j;->c:Lcom/a/a/b/i;

    iput-object p2, p0, Lcom/a/a/b/j;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/a/a/b/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/a/a/b/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/j;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/a/a/b/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 251
    iget-object v0, p0, Lcom/a/a/b/j;->c:Lcom/a/a/b/i;

    iget-object v0, v0, Lcom/a/a/b/i;->b:Lcom/a/a/b/a;

    iget-object v1, p0, Lcom/a/a/b/j;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/b/a;->b(Lcom/a/a/b/a;Ljava/lang/Object;)V

    .line 252
    return-void
.end method
