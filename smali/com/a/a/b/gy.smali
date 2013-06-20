.class Lcom/a/a/b/gy;
.super Lcom/a/a/b/dr;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dr",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/a/a/b/do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/do",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final transient b:I


# direct methods
.method constructor <init>(Lcom/a/a/b/do;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/do",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/a/a/b/dr;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/a/a/b/gy;->a:Lcom/a/a/b/do;

    .line 41
    iput p2, p0, Lcom/a/a/b/gy;->b:I

    .line 42
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/a/a/b/gy;->a:Lcom/a/a/b/do;

    invoke-virtual {v0, p1}, Lcom/a/a/b/do;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 52
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/a/a/b/gy;->a:Lcom/a/a/b/do;

    invoke-virtual {v0}, Lcom/a/a/b/do;->d()Z

    move-result v0

    return v0
.end method

.method public c()Lcom/a/a/b/dv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/a/a/b/gy;->a:Lcom/a/a/b/do;

    invoke-virtual {v0}, Lcom/a/a/b/do;->b()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 62
    .local p0, this:Lcom/a/a/b/gy;,"Lcom/a/a/b/gy<TE;>;"
    iget-object v0, p0, Lcom/a/a/b/gy;->a:Lcom/a/a/b/do;

    invoke-virtual {v0, p1}, Lcom/a/a/b/do;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method d()Lcom/a/a/b/id;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/id",
            "<",
            "Lcom/a/a/b/gb",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/a/a/b/gy;->a:Lcom/a/a/b/do;

    invoke-virtual {v0}, Lcom/a/a/b/do;->a()Lcom/a/a/b/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/dv;->a_()Lcom/a/a/b/id;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/a/a/b/gz;

    invoke-direct {v1, p0, v0}, Lcom/a/a/b/gz;-><init>(Lcom/a/a/b/gy;Ljava/util/Iterator;)V

    return-object v1
.end method

.method e()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/a/a/b/gy;->a:Lcom/a/a/b/do;

    invoke-virtual {v0}, Lcom/a/a/b/do;->size()I

    move-result v0

    return v0
.end method

.method public synthetic f()Ljava/util/Set;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/a/a/b/gy;->c()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/a/a/b/gy;->a:Lcom/a/a/b/do;

    invoke-virtual {v0}, Lcom/a/a/b/do;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/a/a/b/gy;->b:I

    return v0
.end method
