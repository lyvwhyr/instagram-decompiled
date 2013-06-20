.class Lcom/a/a/b/fg;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field b:Lcom/a/a/b/fh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/fh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/a/a/b/fh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/fh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/a/a/b/ez;


# direct methods
.method private constructor <init>(Lcom/a/a/b/ez;)V
    .locals 1
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/a/a/b/fg;->d:Lcom/a/a/b/ez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iget-object v0, p0, Lcom/a/a/b/fg;->d:Lcom/a/a/b/ez;

    invoke-virtual {v0}, Lcom/a/a/b/ez;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/a/a/b/hd;->a(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/fg;->a:Ljava/util/Set;

    .line 366
    iget-object v0, p0, Lcom/a/a/b/fg;->d:Lcom/a/a/b/ez;

    invoke-static {v0}, Lcom/a/a/b/ez;->a(Lcom/a/a/b/ez;)Lcom/a/a/b/fh;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/fg;->b:Lcom/a/a/b/fh;

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/b/ez;Lcom/a/a/b/fa;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/a/a/b/fg;-><init>(Lcom/a/a/b/ez;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/a/a/b/fg;->b:Lcom/a/a/b/fh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/a/a/b/fg;->b:Lcom/a/a/b/fh;

    invoke-static {v0}, Lcom/a/a/b/ez;->d(Ljava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lcom/a/a/b/fg;->b:Lcom/a/a/b/fh;

    iput-object v0, p0, Lcom/a/a/b/fg;->c:Lcom/a/a/b/fh;

    .line 377
    iget-object v0, p0, Lcom/a/a/b/fg;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/a/a/b/fg;->c:Lcom/a/a/b/fh;

    iget-object v1, v1, Lcom/a/a/b/fh;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/fg;->b:Lcom/a/a/b/fh;

    iget-object v0, v0, Lcom/a/a/b/fh;->c:Lcom/a/a/b/fh;

    iput-object v0, p0, Lcom/a/a/b/fg;->b:Lcom/a/a/b/fh;

    .line 380
    iget-object v0, p0, Lcom/a/a/b/fg;->b:Lcom/a/a/b/fh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/b/fg;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/a/a/b/fg;->b:Lcom/a/a/b/fh;

    iget-object v1, v1, Lcom/a/a/b/fh;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/a/a/b/fg;->c:Lcom/a/a/b/fh;

    iget-object v0, v0, Lcom/a/a/b/fh;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/a/a/b/fg;->c:Lcom/a/a/b/fh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/a/a/a/t;->b(Z)V

    .line 386
    iget-object v0, p0, Lcom/a/a/b/fg;->d:Lcom/a/a/b/ez;

    iget-object v1, p0, Lcom/a/a/b/fg;->c:Lcom/a/a/b/fh;

    iget-object v1, v1, Lcom/a/a/b/fh;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/b/ez;->a(Lcom/a/a/b/ez;Ljava/lang/Object;)V

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/fg;->c:Lcom/a/a/b/fh;

    .line 388
    return-void

    .line 385
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
