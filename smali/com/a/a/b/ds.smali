.class Lcom/a/a/b/ds;
.super Lcom/a/a/b/id;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/id",
        "<TE;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Lcom/a/a/b/dr;


# direct methods
.method constructor <init>(Lcom/a/a/b/dr;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/a/a/b/ds;->d:Lcom/a/a/b/dr;

    iput-object p2, p0, Lcom/a/a/b/ds;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/a/a/b/id;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/a/a/b/ds;->a:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/ds;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 256
    iget v0, p0, Lcom/a/a/b/ds;->a:I

    if-gtz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/a/a/b/ds;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/gb;

    .line 258
    invoke-interface {v0}, Lcom/a/a/b/gb;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/b/ds;->b:Ljava/lang/Object;

    .line 259
    invoke-interface {v0}, Lcom/a/a/b/gb;->b()I

    move-result v0

    iput v0, p0, Lcom/a/a/b/ds;->a:I

    .line 261
    :cond_0
    iget v0, p0, Lcom/a/a/b/ds;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/b/ds;->a:I

    .line 262
    iget-object v0, p0, Lcom/a/a/b/ds;->b:Ljava/lang/Object;

    return-object v0
.end method
