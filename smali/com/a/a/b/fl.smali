.class public final Lcom/a/a/b/fl;
.super Lcom/a/a/b/cx;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/cx",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Lcom/a/a/b/br;

.field g:Lcom/a/a/b/br;

.field h:J

.field i:J

.field j:Lcom/a/a/b/fp;

.field k:Lcom/a/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/c",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/a/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/c",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/a/a/a/x;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 147
    invoke-direct {p0}, Lcom/a/a/b/cx;-><init>()V

    .line 126
    iput v0, p0, Lcom/a/a/b/fl;->c:I

    .line 127
    iput v0, p0, Lcom/a/a/b/fl;->d:I

    .line 128
    iput v0, p0, Lcom/a/a/b/fl;->e:I

    .line 133
    iput-wide v1, p0, Lcom/a/a/b/fl;->h:J

    .line 134
    iput-wide v1, p0, Lcom/a/a/b/fl;->i:J

    .line 147
    return-void
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/a/a/b/fl;->j:Lcom/a/a/b/fp;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/a/a/b/br;)Lcom/a/a/b/fl;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 336
    iget-object v0, p0, Lcom/a/a/b/fl;->f:Lcom/a/a/b/br;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Key strength was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/a/a/b/fl;->f:Lcom/a/a/b/br;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/a/a/a/t;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 337
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/br;

    iput-object v0, p0, Lcom/a/a/b/fl;->f:Lcom/a/a/b/br;

    .line 338
    sget-object v0, Lcom/a/a/b/br;->a:Lcom/a/a/b/br;

    if-eq p1, v0, :cond_0

    .line 340
    iput-boolean v1, p0, Lcom/a/a/b/fl;->b:Z

    .line 342
    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 336
    goto :goto_0
.end method

.method public a(Lcom/a/a/a/g;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/a/g",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 739
    invoke-direct {p0}, Lcom/a/a/b/fl;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/a/a/b/ad;

    invoke-direct {v0, p0, p1}, Lcom/a/a/b/ad;-><init>(Lcom/a/a/b/fl;Lcom/a/a/a/g;)V

    :goto_0
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/b/fn;

    invoke-direct {v0, p0, p1}, Lcom/a/a/b/fn;-><init>(Lcom/a/a/b/fl;Lcom/a/a/a/g;)V

    goto :goto_0
.end method

.method b()Lcom/a/a/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/a/c",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/a/a/b/fl;->k:Lcom/a/a/a/c;

    invoke-virtual {p0}, Lcom/a/a/b/fl;->g()Lcom/a/a/b/br;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/b/br;->a()Lcom/a/a/a/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/a/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    return-object v0
.end method

.method b(Lcom/a/a/b/br;)Lcom/a/a/b/fl;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 409
    iget-object v0, p0, Lcom/a/a/b/fl;->g:Lcom/a/a/b/br;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Value strength was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/a/a/b/fl;->g:Lcom/a/a/b/br;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/a/a/a/t;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 410
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/br;

    iput-object v0, p0, Lcom/a/a/b/fl;->g:Lcom/a/a/b/br;

    .line 411
    sget-object v0, Lcom/a/a/b/br;->a:Lcom/a/a/b/br;

    if-eq p1, v0, :cond_0

    .line 413
    iput-boolean v1, p0, Lcom/a/a/b/fl;->b:Z

    .line 415
    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 409
    goto :goto_0
.end method

.method c()Lcom/a/a/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/a/c",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/a/a/b/fl;->l:Lcom/a/a/a/c;

    invoke-virtual {p0}, Lcom/a/a/b/fl;->i()Lcom/a/a/b/br;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/b/br;->a()Lcom/a/a/a/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/a/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    return-object v0
.end method

.method d()I
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lcom/a/a/b/fl;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/a/a/b/fl;->c:I

    goto :goto_0
.end method

.method e()I
    .locals 2

    .prologue
    .line 282
    iget v0, p0, Lcom/a/a/b/fl;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/a/a/b/fl;->d:I

    goto :goto_0
.end method

.method public f()Lcom/a/a/b/fl;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/a/a/b/br;->c:Lcom/a/a/b/br;

    invoke-virtual {p0, v0}, Lcom/a/a/b/fl;->a(Lcom/a/a/b/br;)Lcom/a/a/b/fl;

    move-result-object v0

    return-object v0
.end method

.method g()Lcom/a/a/b/br;
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/a/a/b/fl;->f:Lcom/a/a/b/br;

    sget-object v1, Lcom/a/a/b/br;->a:Lcom/a/a/b/br;

    invoke-static {v0, v1}, Lcom/a/a/a/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/br;

    return-object v0
.end method

.method public h()Lcom/a/a/b/fl;
    .locals 1

    .prologue
    .line 379
    sget-object v0, Lcom/a/a/b/br;->c:Lcom/a/a/b/br;

    invoke-virtual {p0, v0}, Lcom/a/a/b/fl;->b(Lcom/a/a/b/br;)Lcom/a/a/b/fl;

    move-result-object v0

    return-object v0
.end method

.method i()Lcom/a/a/b/br;
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/a/a/b/fl;->g:Lcom/a/a/b/br;

    sget-object v1, Lcom/a/a/b/br;->a:Lcom/a/a/b/br;

    invoke-static {v0, v1}, Lcom/a/a/a/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/br;

    return-object v0
.end method

.method j()J
    .locals 4

    .prologue
    .line 485
    iget-wide v0, p0, Lcom/a/a/b/fl;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/a/a/b/fl;->h:J

    goto :goto_0
.end method

.method k()J
    .locals 4

    .prologue
    .line 528
    iget-wide v0, p0, Lcom/a/a/b/fl;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/a/a/b/fl;->i:J

    goto :goto_0
.end method

.method l()Lcom/a/a/a/x;
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/a/a/b/fl;->m:Lcom/a/a/a/x;

    invoke-static {}, Lcom/a/a/a/x;->b()Lcom/a/a/a/x;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/a/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/x;

    return-object v0
.end method

.method public m()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/a/a/b/fl;->b:Z

    if-nez v0, :cond_0

    .line 660
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/a/a/b/fl;->d()I

    move-result v1

    const/high16 v2, 0x3f40

    invoke-virtual {p0}, Lcom/a/a/b/fl;->e()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 662
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/fl;->j:Lcom/a/a/b/fp;

    if-nez v0, :cond_1

    new-instance v0, Lcom/a/a/b/ah;

    invoke-direct {v0, p0}, Lcom/a/a/b/ah;-><init>(Lcom/a/a/b/fl;)V

    :goto_1
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/a/a/b/fo;

    invoke-direct {v0, p0}, Lcom/a/a/b/fo;-><init>(Lcom/a/a/b/fl;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v3, -0x1

    .line 750
    invoke-static {p0}, Lcom/a/a/a/k;->a(Ljava/lang/Object;)Lcom/a/a/a/m;

    move-result-object v0

    .line 751
    iget v1, p0, Lcom/a/a/b/fl;->c:I

    if-eq v1, v3, :cond_0

    .line 752
    const-string v1, "initialCapacity"

    iget v2, p0, Lcom/a/a/b/fl;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/a/a/a/m;

    .line 754
    :cond_0
    iget v1, p0, Lcom/a/a/b/fl;->d:I

    if-eq v1, v3, :cond_1

    .line 755
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lcom/a/a/b/fl;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/a/a/a/m;

    .line 757
    :cond_1
    iget v1, p0, Lcom/a/a/b/fl;->e:I

    if-eq v1, v3, :cond_2

    .line 758
    const-string v1, "maximumSize"

    iget v2, p0, Lcom/a/a/b/fl;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/a/a/a/m;

    .line 760
    :cond_2
    iget-wide v1, p0, Lcom/a/a/b/fl;->h:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_3

    .line 761
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/a/a/b/fl;->h:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/a/a/a/m;

    .line 763
    :cond_3
    iget-wide v1, p0, Lcom/a/a/b/fl;->i:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    .line 764
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/a/a/b/fl;->i:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/a/a/a/m;

    .line 766
    :cond_4
    iget-object v1, p0, Lcom/a/a/b/fl;->f:Lcom/a/a/b/br;

    if-eqz v1, :cond_5

    .line 767
    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/a/a/b/fl;->f:Lcom/a/a/b/br;

    invoke-virtual {v2}, Lcom/a/a/b/br;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/a/a/a/m;

    .line 769
    :cond_5
    iget-object v1, p0, Lcom/a/a/b/fl;->g:Lcom/a/a/b/br;

    if-eqz v1, :cond_6

    .line 770
    const-string v1, "valueStrength"

    iget-object v2, p0, Lcom/a/a/b/fl;->g:Lcom/a/a/b/br;

    invoke-virtual {v2}, Lcom/a/a/b/br;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/a/a/a/m;

    .line 772
    :cond_6
    iget-object v1, p0, Lcom/a/a/b/fl;->k:Lcom/a/a/a/c;

    if-eqz v1, :cond_7

    .line 773
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/a/a/a/m;->a(Ljava/lang/Object;)Lcom/a/a/a/m;

    .line 775
    :cond_7
    iget-object v1, p0, Lcom/a/a/b/fl;->l:Lcom/a/a/a/c;

    if-eqz v1, :cond_8

    .line 776
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/a/a/a/m;->a(Ljava/lang/Object;)Lcom/a/a/a/m;

    .line 778
    :cond_8
    iget-object v1, p0, Lcom/a/a/b/fl;->a:Lcom/a/a/b/fv;

    if-eqz v1, :cond_9

    .line 779
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lcom/a/a/a/m;->a(Ljava/lang/Object;)Lcom/a/a/a/m;

    .line 781
    :cond_9
    invoke-virtual {v0}, Lcom/a/a/a/m;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
