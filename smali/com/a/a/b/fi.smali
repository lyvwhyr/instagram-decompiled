.class Lcom/a/a/b/fi;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field b:I

.field c:Lcom/a/a/b/fh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/fh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:Lcom/a/a/b/fh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/fh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Lcom/a/a/b/fh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/fh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/a/a/b/ez;


# direct methods
.method constructor <init>(Lcom/a/a/b/ez;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/a/a/b/fi;->f:Lcom/a/a/b/ez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p2, p0, Lcom/a/a/b/fi;->a:Ljava/lang/Object;

    .line 402
    invoke-static {p1}, Lcom/a/a/b/ez;->b(Lcom/a/a/b/ez;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/fh;

    iput-object v0, p0, Lcom/a/a/b/fi;->c:Lcom/a/a/b/fh;

    .line 403
    return-void
.end method

.method public constructor <init>(Lcom/a/a/b/ez;Ljava/lang/Object;I)V
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/a/a/b/fi;->f:Lcom/a/a/b/ez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    invoke-static {p1}, Lcom/a/a/b/ez;->c(Lcom/a/a/b/ez;)Lcom/a/a/b/ga;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/a/a/b/ga;->a(Ljava/lang/Object;)I

    move-result v1

    .line 416
    invoke-static {p3, v1}, Lcom/a/a/a/t;->b(II)I

    .line 417
    div-int/lit8 v0, v1, 0x2

    if-lt p3, v0, :cond_0

    .line 418
    invoke-static {p1}, Lcom/a/a/b/ez;->d(Lcom/a/a/b/ez;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/fh;

    iput-object v0, p0, Lcom/a/a/b/fi;->e:Lcom/a/a/b/fh;

    .line 419
    iput v1, p0, Lcom/a/a/b/fi;->b:I

    .line 420
    :goto_0
    add-int/lit8 v0, p3, 0x1

    if-ge p3, v1, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/a/a/b/fi;->previous()Ljava/lang/Object;

    move p3, v0

    goto :goto_0

    .line 424
    :cond_0
    invoke-static {p1}, Lcom/a/a/b/ez;->b(Lcom/a/a/b/ez;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/fh;

    iput-object v0, p0, Lcom/a/a/b/fi;->c:Lcom/a/a/b/fh;

    .line 425
    :goto_1
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/a/a/b/fi;->next()Ljava/lang/Object;

    move p3, v0

    goto :goto_1

    .line 429
    :cond_1
    iput-object p2, p0, Lcom/a/a/b/fi;->a:Ljava/lang/Object;

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/fi;->d:Lcom/a/a/b/fh;

    .line 431
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, this:Lcom/a/a/b/fi;,"Lcom/a/a/b/ez<TK;TV;>.com/a/a/b/fi;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/a/a/b/fi;->f:Lcom/a/a/b/ez;

    iget-object v1, p0, Lcom/a/a/b/fi;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/a/a/b/fi;->c:Lcom/a/a/b/fh;

    invoke-static {v0, v1, p1, v2}, Lcom/a/a/b/ez;->a(Lcom/a/a/b/ez;Ljava/lang/Object;Ljava/lang/Object;Lcom/a/a/b/fh;)Lcom/a/a/b/fh;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/fi;->e:Lcom/a/a/b/fh;

    .line 494
    iget v0, p0, Lcom/a/a/b/fi;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/fi;->b:I

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/fi;->d:Lcom/a/a/b/fh;

    .line 496
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/a/a/b/fi;->c:Lcom/a/a/b/fh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/a/a/b/fi;->e:Lcom/a/a/b/fh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lcom/a/a/b/fi;->c:Lcom/a/a/b/fh;

    invoke-static {v0}, Lcom/a/a/b/ez;->d(Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/a/a/b/fi;->c:Lcom/a/a/b/fh;

    iput-object v0, p0, Lcom/a/a/b/fi;->d:Lcom/a/a/b/fh;

    iput-object v0, p0, Lcom/a/a/b/fi;->e:Lcom/a/a/b/fh;

    .line 442
    iget-object v0, p0, Lcom/a/a/b/fi;->c:Lcom/a/a/b/fh;

    iget-object v0, v0, Lcom/a/a/b/fh;->e:Lcom/a/a/b/fh;

    iput-object v0, p0, Lcom/a/a/b/fi;->c:Lcom/a/a/b/fh;

    .line 443
    iget v0, p0, Lcom/a/a/b/fi;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/fi;->b:I

    .line 444
    iget-object v0, p0, Lcom/a/a/b/fi;->d:Lcom/a/a/b/fh;

    iget-object v0, v0, Lcom/a/a/b/fh;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/a/a/b/fi;->b:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/a/a/b/fi;->e:Lcom/a/a/b/fh;

    invoke-static {v0}, Lcom/a/a/b/ez;->d(Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lcom/a/a/b/fi;->e:Lcom/a/a/b/fh;

    iput-object v0, p0, Lcom/a/a/b/fi;->d:Lcom/a/a/b/fh;

    iput-object v0, p0, Lcom/a/a/b/fi;->c:Lcom/a/a/b/fh;

    .line 456
    iget-object v0, p0, Lcom/a/a/b/fi;->e:Lcom/a/a/b/fh;

    iget-object v0, v0, Lcom/a/a/b/fh;->f:Lcom/a/a/b/fh;

    iput-object v0, p0, Lcom/a/a/b/fi;->e:Lcom/a/a/b/fh;

    .line 457
    iget v0, p0, Lcom/a/a/b/fi;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/b/fi;->b:I

    .line 458
    iget-object v0, p0, Lcom/a/a/b/fi;->d:Lcom/a/a/b/fh;

    iget-object v0, v0, Lcom/a/a/b/fh;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/a/a/b/fi;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/a/a/b/fi;->d:Lcom/a/a/b/fh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/a/a/a/t;->b(Z)V

    .line 474
    iget-object v0, p0, Lcom/a/a/b/fi;->d:Lcom/a/a/b/fh;

    iget-object v1, p0, Lcom/a/a/b/fi;->c:Lcom/a/a/b/fh;

    if-eq v0, v1, :cond_1

    .line 475
    iget-object v0, p0, Lcom/a/a/b/fi;->d:Lcom/a/a/b/fh;

    iget-object v0, v0, Lcom/a/a/b/fh;->f:Lcom/a/a/b/fh;

    iput-object v0, p0, Lcom/a/a/b/fi;->e:Lcom/a/a/b/fh;

    .line 476
    iget v0, p0, Lcom/a/a/b/fi;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/b/fi;->b:I

    .line 480
    :goto_1
    iget-object v0, p0, Lcom/a/a/b/fi;->f:Lcom/a/a/b/ez;

    iget-object v1, p0, Lcom/a/a/b/fi;->d:Lcom/a/a/b/fh;

    invoke-static {v0, v1}, Lcom/a/a/b/ez;->a(Lcom/a/a/b/ez;Lcom/a/a/b/fh;)V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/fi;->d:Lcom/a/a/b/fh;

    .line 482
    return-void

    .line 473
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/a/a/b/fi;->d:Lcom/a/a/b/fh;

    iget-object v0, v0, Lcom/a/a/b/fh;->e:Lcom/a/a/b/fh;

    iput-object v0, p0, Lcom/a/a/b/fi;->c:Lcom/a/a/b/fh;

    goto :goto_1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, this:Lcom/a/a/b/fi;,"Lcom/a/a/b/ez<TK;TV;>.com/a/a/b/fi;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/a/a/b/fi;->d:Lcom/a/a/b/fh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/a/a/a/t;->b(Z)V

    .line 487
    iget-object v0, p0, Lcom/a/a/b/fi;->d:Lcom/a/a/b/fh;

    iput-object p1, v0, Lcom/a/a/b/fh;->b:Ljava/lang/Object;

    .line 488
    return-void

    .line 486
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
