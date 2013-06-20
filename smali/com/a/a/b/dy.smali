.class abstract Lcom/a/a/b/dy;
.super Lcom/a/a/b/dv;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dv",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TD;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TD;I)V"
        }
    .end annotation

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/a/a/b/dv;-><init>()V

    .line 469
    iput-object p1, p0, Lcom/a/a/b/dy;->a:[Ljava/lang/Object;

    .line 470
    iput p2, p0, Lcom/a/a/b/dy;->b:I

    .line 471
    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TE;"
        }
    .end annotation
.end method

.method public a_()Lcom/a/a/b/id;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/id",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 485
    new-instance v0, Lcom/a/a/b/dz;

    iget-object v1, p0, Lcom/a/a/b/dy;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/dz;-><init>(Lcom/a/a/b/dy;I)V

    return-object v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/a/a/b/dy;->b:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/a/a/b/dy;->a_()Lcom/a/a/b/id;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/a/a/b/dy;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/a/a/b/dy;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/a/a/b/dy;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, this:Lcom/a/a/b/dy;,"Lcom/a/a/b/dy<TD;TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Lcom/a/a/b/dy;->size()I

    move-result v0

    .line 498
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 499
    invoke-static {p1, v0}, Lcom/a/a/b/gk;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 506
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/a/a/b/dy;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 507
    iget-object v1, p0, Lcom/a/a/b/dy;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/a/a/b/dy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 500
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 501
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0

    .line 509
    :cond_2
    return-object p1
.end method
