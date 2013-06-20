.class final Lcom/a/a/b/ag;
.super Ljava/lang/Object;
.source "Count.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/b/ag;-><init>(I)V

    .line 34
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/a/a/b/ag;->a:I

    .line 38
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/a/a/b/ag;->a:I

    return v0
.end method

.method public a(I)I
    .locals 2
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/a/a/b/ag;->a:I

    .line 46
    add-int v1, v0, p1

    iput v1, p0, Lcom/a/a/b/ag;->a:I

    .line 47
    return v0
.end method

.method public b(I)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/a/a/b/ag;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/a/a/b/ag;->a:I

    return v0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/a/a/b/ag;->a:I

    .line 56
    return-void
.end method

.method public d(I)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/a/a/b/ag;->a:I

    .line 60
    iput p1, p0, Lcom/a/a/b/ag;->a:I

    .line 61
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 71
    instance-of v0, p1, Lcom/a/a/b/ag;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/a/a/b/ag;

    .end local p1
    iget v0, p1, Lcom/a/a/b/ag;->a:I

    iget v1, p0, Lcom/a/a/b/ag;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/a/a/b/ag;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/a/a/b/ag;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
