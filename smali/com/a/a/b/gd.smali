.class abstract Lcom/a/a/b/gd;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Lcom/a/a/b/gb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/b/gb",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/a/a/b/gd;,"Lcom/a/a/b/gd<TE;>;"
    const/4 v0, 0x0

    .line 562
    instance-of v1, p1, Lcom/a/a/b/gb;

    if-eqz v1, :cond_0

    .line 563
    check-cast p1, Lcom/a/a/b/gb;

    .line 564
    .end local p1
    invoke-virtual {p0}, Lcom/a/a/b/gd;->b()I

    move-result v1

    invoke-interface {p1}, Lcom/a/a/b/gb;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/a/a/b/gd;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/a/a/b/gb;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 567
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/a/a/b/gd;->a()Ljava/lang/Object;

    move-result-object v0

    .line 576
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/a/a/b/gd;->b()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/a/a/b/gd;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-virtual {p0}, Lcom/a/a/b/gd;->b()I

    move-result v1

    .line 589
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
