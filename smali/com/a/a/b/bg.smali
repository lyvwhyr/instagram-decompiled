.class abstract Lcom/a/a/b/bg;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# instance fields
.field b:I

.field c:I

.field d:Lcom/a/a/b/bl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/bl",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field f:Lcom/a/a/b/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/a/a/b/ci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/ah",
            "<TK;TV;>.com/a/a/b/ci;"
        }
    .end annotation
.end field

.field h:Lcom/a/a/b/ci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/ah",
            "<TK;TV;>.com/a/a/b/ci;"
        }
    .end annotation
.end field

.field final synthetic i:Lcom/a/a/b/ah;


# direct methods
.method constructor <init>(Lcom/a/a/b/ah;)V
    .locals 1
    .parameter

    .prologue
    .line 3656
    iput-object p1, p0, Lcom/a/a/b/bg;->i:Lcom/a/a/b/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3657
    iget-object v0, p1, Lcom/a/a/b/ah;->d:[Lcom/a/a/b/bl;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/b/bg;->b:I

    .line 3658
    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/b/bg;->c:I

    .line 3659
    invoke-virtual {p0}, Lcom/a/a/b/bg;->b()V

    .line 3660
    return-void
.end method


# virtual methods
.method a(Lcom/a/a/b/bk;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3719
    :try_start_0
    invoke-interface {p1}, Lcom/a/a/b/bk;->d()Ljava/lang/Object;

    move-result-object v0

    .line 3720
    iget-object v1, p0, Lcom/a/a/b/bg;->i:Lcom/a/a/b/ah;

    invoke-virtual {v1, p1}, Lcom/a/a/b/ah;->b(Lcom/a/a/b/bk;)Ljava/lang/Object;

    move-result-object v1

    .line 3721
    if-eqz v1, :cond_0

    .line 3722
    new-instance v2, Lcom/a/a/b/ci;

    iget-object v3, p0, Lcom/a/a/b/bg;->i:Lcom/a/a/b/ah;

    invoke-direct {v2, v3, v0, v1}, Lcom/a/a/b/ci;-><init>(Lcom/a/a/b/ah;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/a/a/b/bg;->g:Lcom/a/a/b/ci;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3723
    const/4 v0, 0x1

    .line 3729
    iget-object v1, p0, Lcom/a/a/b/bg;->d:Lcom/a/a/b/bl;

    invoke-virtual {v1}, Lcom/a/a/b/bl;->n()V

    :goto_0
    return v0

    .line 3726
    :cond_0
    const/4 v0, 0x0

    .line 3729
    iget-object v1, p0, Lcom/a/a/b/bg;->d:Lcom/a/a/b/bl;

    invoke-virtual {v1}, Lcom/a/a/b/bl;->n()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/a/a/b/bg;->d:Lcom/a/a/b/bl;

    invoke-virtual {v1}, Lcom/a/a/b/bl;->n()V

    throw v0
.end method

.method final b()V
    .locals 3

    .prologue
    .line 3663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/bg;->g:Lcom/a/a/b/ci;

    .line 3665
    invoke-virtual {p0}, Lcom/a/a/b/bg;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3683
    :cond_0
    :goto_0
    return-void

    .line 3669
    :cond_1
    invoke-virtual {p0}, Lcom/a/a/b/bg;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3673
    :cond_2
    iget v0, p0, Lcom/a/a/b/bg;->b:I

    if-ltz v0, :cond_0

    .line 3674
    iget-object v0, p0, Lcom/a/a/b/bg;->i:Lcom/a/a/b/ah;

    iget-object v0, v0, Lcom/a/a/b/ah;->d:[Lcom/a/a/b/bl;

    iget v1, p0, Lcom/a/a/b/bg;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/a/a/b/bg;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/a/a/b/bg;->d:Lcom/a/a/b/bl;

    .line 3675
    iget-object v0, p0, Lcom/a/a/b/bg;->d:Lcom/a/a/b/bl;

    iget v0, v0, Lcom/a/a/b/bl;->b:I

    if-eqz v0, :cond_2

    .line 3676
    iget-object v0, p0, Lcom/a/a/b/bg;->d:Lcom/a/a/b/bl;

    iget-object v0, v0, Lcom/a/a/b/bl;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/a/a/b/bg;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3677
    iget-object v0, p0, Lcom/a/a/b/bg;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/b/bg;->c:I

    .line 3678
    invoke-virtual {p0}, Lcom/a/a/b/bg;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 3689
    iget-object v0, p0, Lcom/a/a/b/bg;->f:Lcom/a/a/b/bk;

    if-eqz v0, :cond_1

    .line 3690
    iget-object v0, p0, Lcom/a/a/b/bg;->f:Lcom/a/a/b/bk;

    invoke-interface {v0}, Lcom/a/a/b/bk;->b()Lcom/a/a/b/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/bg;->f:Lcom/a/a/b/bk;

    :goto_0
    iget-object v0, p0, Lcom/a/a/b/bg;->f:Lcom/a/a/b/bk;

    if-eqz v0, :cond_1

    .line 3691
    iget-object v0, p0, Lcom/a/a/b/bg;->f:Lcom/a/a/b/bk;

    invoke-virtual {p0, v0}, Lcom/a/a/b/bg;->a(Lcom/a/a/b/bk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3692
    const/4 v0, 0x1

    .line 3696
    :goto_1
    return v0

    .line 3690
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/bg;->f:Lcom/a/a/b/bk;

    invoke-interface {v0}, Lcom/a/a/b/bk;->b()Lcom/a/a/b/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/bg;->f:Lcom/a/a/b/bk;

    goto :goto_0

    .line 3696
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method d()Z
    .locals 3

    .prologue
    .line 3703
    :cond_0
    iget v0, p0, Lcom/a/a/b/bg;->c:I

    if-ltz v0, :cond_2

    .line 3704
    iget-object v0, p0, Lcom/a/a/b/bg;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/a/a/b/bg;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/a/a/b/bg;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/bk;

    iput-object v0, p0, Lcom/a/a/b/bg;->f:Lcom/a/a/b/bk;

    if-eqz v0, :cond_0

    .line 3705
    iget-object v0, p0, Lcom/a/a/b/bg;->f:Lcom/a/a/b/bk;

    invoke-virtual {p0, v0}, Lcom/a/a/b/bg;->a(Lcom/a/a/b/bk;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/a/a/b/bg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3706
    :cond_1
    const/4 v0, 0x1

    .line 3710
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Lcom/a/a/b/ci;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/ah",
            "<TK;TV;>.com/a/a/b/ci;"
        }
    .end annotation

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/a/a/b/bg;->g:Lcom/a/a/b/ci;

    if-nez v0, :cond_0

    .line 3739
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 3741
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/bg;->g:Lcom/a/a/b/ci;

    iput-object v0, p0, Lcom/a/a/b/bg;->h:Lcom/a/a/b/ci;

    .line 3742
    invoke-virtual {p0}, Lcom/a/a/b/bg;->b()V

    .line 3743
    iget-object v0, p0, Lcom/a/a/b/bg;->h:Lcom/a/a/b/ci;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 3734
    iget-object v0, p0, Lcom/a/a/b/bg;->g:Lcom/a/a/b/ci;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 3747
    iget-object v0, p0, Lcom/a/a/b/bg;->h:Lcom/a/a/b/ci;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/a/a/a/t;->b(Z)V

    .line 3748
    iget-object v0, p0, Lcom/a/a/b/bg;->i:Lcom/a/a/b/ah;

    iget-object v1, p0, Lcom/a/a/b/bg;->h:Lcom/a/a/b/ci;

    invoke-virtual {v1}, Lcom/a/a/b/ci;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/b/ah;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/bg;->h:Lcom/a/a/b/ci;

    .line 3750
    return-void

    .line 3747
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
