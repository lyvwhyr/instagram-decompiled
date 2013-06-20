.class Lcom/a/a/b/ah;
.super Ljava/util/AbstractMap;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field static final q:Lcom/a/a/b/cb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/cb",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final r:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient b:I

.field final transient c:I

.field final transient d:[Lcom/a/a/b/bl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/a/a/b/bl",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final e:I

.field final f:Lcom/a/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/c",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lcom/a/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/c",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lcom/a/a/b/br;

.field final i:Lcom/a/a/b/br;

.field final j:I

.field final k:J

.field final l:J

.field final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/a/a/b/fw",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final n:Lcom/a/a/b/fv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/fv",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transient o:Lcom/a/a/b/al;

.field final p:Lcom/a/a/a/x;

.field s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field t:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const-class v0, Lcom/a/a/b/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/a/a/b/ah;->a:Ljava/util/logging/Logger;

    .line 630
    new-instance v0, Lcom/a/a/b/ai;

    invoke-direct {v0}, Lcom/a/a/b/ai;-><init>()V

    sput-object v0, Lcom/a/a/b/ah;->q:Lcom/a/a/b/cb;

    .line 920
    new-instance v0, Lcom/a/a/b/aj;

    invoke-direct {v0}, Lcom/a/a/b/aj;-><init>()V

    sput-object v0, Lcom/a/a/b/ah;->r:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/a/a/b/fl;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 196
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 197
    invoke-virtual {p1}, Lcom/a/a/b/fl;->e()I

    move-result v0

    const/high16 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/a/a/b/ah;->e:I

    .line 199
    invoke-virtual {p1}, Lcom/a/a/b/fl;->g()Lcom/a/a/b/br;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/ah;->h:Lcom/a/a/b/br;

    .line 200
    invoke-virtual {p1}, Lcom/a/a/b/fl;->i()Lcom/a/a/b/br;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/ah;->i:Lcom/a/a/b/br;

    .line 202
    invoke-virtual {p1}, Lcom/a/a/b/fl;->b()Lcom/a/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/ah;->f:Lcom/a/a/a/c;

    .line 203
    invoke-virtual {p1}, Lcom/a/a/b/fl;->c()Lcom/a/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/ah;->g:Lcom/a/a/a/c;

    .line 205
    iget v0, p1, Lcom/a/a/b/fl;->e:I

    iput v0, p0, Lcom/a/a/b/ah;->j:I

    .line 206
    invoke-virtual {p1}, Lcom/a/a/b/fl;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/b/ah;->k:J

    .line 207
    invoke-virtual {p1}, Lcom/a/a/b/fl;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/b/ah;->l:J

    .line 209
    iget-object v0, p0, Lcom/a/a/b/ah;->h:Lcom/a/a/b/br;

    invoke-virtual {p0}, Lcom/a/a/b/ah;->b()Z

    move-result v1

    invoke-virtual {p0}, Lcom/a/a/b/ah;->a()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/a/a/b/al;->a(Lcom/a/a/b/br;ZZ)Lcom/a/a/b/al;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/ah;->o:Lcom/a/a/b/al;

    .line 210
    invoke-virtual {p1}, Lcom/a/a/b/fl;->l()Lcom/a/a/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/ah;->p:Lcom/a/a/a/x;

    .line 212
    invoke-virtual {p1}, Lcom/a/a/b/fl;->a()Lcom/a/a/b/fv;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/ah;->n:Lcom/a/a/b/fv;

    .line 213
    iget-object v0, p0, Lcom/a/a/b/ah;->n:Lcom/a/a/b/fv;

    sget-object v1, Lcom/a/a/b/cy;->a:Lcom/a/a/b/cy;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/a/a/b/ah;->i()Ljava/util/Queue;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/a/a/b/ah;->m:Ljava/util/Queue;

    .line 217
    invoke-virtual {p1}, Lcom/a/a/b/fl;->d()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 218
    invoke-virtual {p0}, Lcom/a/a/b/ah;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget v1, p0, Lcom/a/a/b/ah;->j:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    move v1, v2

    move v3, v4

    .line 228
    :goto_1
    iget v5, p0, Lcom/a/a/b/ah;->e:I

    if-ge v1, v5, :cond_3

    invoke-virtual {p0}, Lcom/a/a/b/ah;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    mul-int/lit8 v5, v1, 0x2

    iget v6, p0, Lcom/a/a/b/ah;->j:I

    if-gt v5, v6, :cond_3

    .line 229
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 230
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 213
    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_0

    .line 232
    :cond_3
    rsub-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/a/a/b/ah;->c:I

    .line 233
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lcom/a/a/b/ah;->b:I

    .line 235
    invoke-virtual {p0, v1}, Lcom/a/a/b/ah;->d(I)[Lcom/a/a/b/bl;

    move-result-object v3

    iput-object v3, p0, Lcom/a/a/b/ah;->d:[Lcom/a/a/b/bl;

    .line 237
    div-int v3, v0, v1

    .line 238
    mul-int v5, v3, v1

    if-ge v5, v0, :cond_8

    .line 239
    add-int/lit8 v0, v3, 0x1

    .line 243
    :goto_2
    if-ge v2, v0, :cond_4

    .line 244
    shl-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 247
    :cond_4
    invoke-virtual {p0}, Lcom/a/a/b/ah;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 249
    iget v0, p0, Lcom/a/a/b/ah;->j:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 250
    iget v3, p0, Lcom/a/a/b/ah;->j:I

    rem-int v1, v3, v1

    .line 251
    :goto_3
    iget-object v3, p0, Lcom/a/a/b/ah;->d:[Lcom/a/a/b/bl;

    array-length v3, v3

    if-ge v4, v3, :cond_7

    .line 252
    if-ne v4, v1, :cond_5

    .line 253
    add-int/lit8 v0, v0, -0x1

    .line 255
    :cond_5
    iget-object v3, p0, Lcom/a/a/b/ah;->d:[Lcom/a/a/b/bl;

    invoke-virtual {p0, v2, v0}, Lcom/a/a/b/ah;->a(II)Lcom/a/a/b/bl;

    move-result-object v5

    aput-object v5, v3, v4

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 259
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/a/a/b/ah;->d:[Lcom/a/a/b/bl;

    array-length v0, v0

    if-ge v4, v0, :cond_7

    .line 260
    iget-object v0, p0, Lcom/a/a/b/ah;->d:[Lcom/a/a/b/bl;

    const/4 v1, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/a/a/b/ah;->a(II)Lcom/a/a/b/bl;

    move-result-object v1

    aput-object v1, v0, v4

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 264
    :cond_7
    return-void

    :cond_8
    move v0, v3

    goto :goto_2
.end method

.method static a(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1979
    invoke-interface {p0, p1}, Lcom/a/a/b/bk;->a(Lcom/a/a/b/bk;)V

    .line 1980
    invoke-interface {p1, p0}, Lcom/a/a/b/bk;->b(Lcom/a/a/b/bk;)V

    .line 1981
    return-void
.end method

.method static b(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2011
    invoke-interface {p0, p1}, Lcom/a/a/b/bk;->c(Lcom/a/a/b/bk;)V

    .line 2012
    invoke-interface {p1, p0}, Lcom/a/a/b/bk;->d(Lcom/a/a/b/bk;)V

    .line 2013
    return-void
.end method

.method static c(I)I
    .locals 3
    .parameter

    .prologue
    .line 1863
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 1864
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 1865
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1866
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 1867
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1868
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method static d(Lcom/a/a/b/bk;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1985
    invoke-static {}, Lcom/a/a/b/ah;->h()Lcom/a/a/b/bk;

    move-result-object v0

    .line 1986
    invoke-interface {p0, v0}, Lcom/a/a/b/bk;->a(Lcom/a/a/b/bk;)V

    .line 1987
    invoke-interface {p0, v0}, Lcom/a/a/b/bk;->b(Lcom/a/a/b/bk;)V

    .line 1988
    return-void
.end method

.method static e(Lcom/a/a/b/bk;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2017
    invoke-static {}, Lcom/a/a/b/ah;->h()Lcom/a/a/b/bk;

    move-result-object v0

    .line 2018
    invoke-interface {p0, v0}, Lcom/a/a/b/bk;->c(Lcom/a/a/b/bk;)V

    .line 2019
    invoke-interface {p0, v0}, Lcom/a/a/b/bk;->d(Lcom/a/a/b/bk;)V

    .line 2020
    return-void
.end method

.method static g()Lcom/a/a/b/cb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/b/cb",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 666
    sget-object v0, Lcom/a/a/b/ah;->q:Lcom/a/a/b/cb;

    return-object v0
.end method

.method static h()Lcom/a/a/b/bk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 917
    sget-object v0, Lcom/a/a/b/bj;->a:Lcom/a/a/b/bj;

    return-object v0
.end method

.method static i()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 952
    sget-object v0, Lcom/a/a/b/ah;->r:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method a(II)Lcom/a/a/b/bl;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/a/a/b/bl",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1937
    new-instance v0, Lcom/a/a/b/bl;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/a/b/bl;-><init>(Lcom/a/a/b/ah;II)V

    return-object v0
.end method

.method a(Lcom/a/a/b/bk;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1912
    invoke-interface {p1}, Lcom/a/a/b/bk;->c()I

    move-result v0

    .line 1913
    invoke-virtual {p0, v0}, Lcom/a/a/b/ah;->b(I)Lcom/a/a/b/bl;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/a/a/b/bl;->a(Lcom/a/a/b/bk;I)Z

    .line 1914
    return-void
.end method

.method a(Lcom/a/a/b/cb;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/cb",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1906
    invoke-interface {p1}, Lcom/a/a/b/cb;->a()Lcom/a/a/b/bk;

    move-result-object v0

    .line 1907
    invoke-interface {v0}, Lcom/a/a/b/bk;->c()I

    move-result v1

    .line 1908
    invoke-virtual {p0, v1}, Lcom/a/a/b/ah;->b(I)Lcom/a/a/b/bl;

    move-result-object v2

    invoke-interface {v0}, Lcom/a/a/b/bk;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/a/a/b/bl;->a(Ljava/lang/Object;ILcom/a/a/b/cb;)Z

    .line 1909
    return-void
.end method

.method a()Z
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/a/a/b/ah;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/a/a/b/bk;J)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    .line 1974
    invoke-interface {p1}, Lcom/a/a/b/bk;->e()J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/a/a/b/ah;->f:Lcom/a/a/a/c;

    invoke-virtual {v0, p1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1902
    invoke-static {v0}, Lcom/a/a/b/ah;->c(I)I

    move-result v0

    return v0
.end method

.method b(I)Lcom/a/a/b/bl;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/a/a/b/bl",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/a/a/b/ah;->d:[Lcom/a/a/b/bl;

    iget v1, p0, Lcom/a/a/b/ah;->c:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/a/a/b/ah;->b:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method b(Lcom/a/a/b/bk;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1946
    invoke-interface {p1}, Lcom/a/a/b/bk;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1957
    :cond_0
    :goto_0
    return-object v0

    .line 1949
    :cond_1
    invoke-interface {p1}, Lcom/a/a/b/bk;->a()Lcom/a/a/b/cb;

    move-result-object v1

    invoke-interface {v1}, Lcom/a/a/b/cb;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1950
    if-eqz v1, :cond_0

    .line 1954
    invoke-virtual {p0}, Lcom/a/a/b/ah;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/a/a/b/ah;->c(Lcom/a/a/b/bk;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 1957
    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/a/a/b/ah;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/b/ah;->d()Z

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

.method c()Z
    .locals 4

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/a/a/b/ah;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Lcom/a/a/b/bk;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/a/a/b/ah;->p:Lcom/a/a/a/x;

    invoke-virtual {v0}, Lcom/a/a/a/x;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/a/a/b/ah;->a(Lcom/a/a/b/bk;J)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 3615
    iget-object v1, p0, Lcom/a/a/b/ah;->d:[Lcom/a/a/b/bl;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 3616
    invoke-virtual {v3}, Lcom/a/a/b/bl;->m()V

    .line 3615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3618
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 3507
    .local p0, this:Lcom/a/a/b/ah;,"Lcom/a/a/b/ah<TK;TV;>;"
    if-nez p1, :cond_0

    .line 3508
    const/4 v0, 0x0

    .line 3511
    :goto_0
    return v0

    .line 3510
    :cond_0
    invoke-virtual {p0, p1}, Lcom/a/a/b/ah;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3511
    invoke-virtual {p0, v0}, Lcom/a/a/b/ah;->b(I)Lcom/a/a/b/bl;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/a/a/b/bl;->d(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 14
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 3516
    .local p0, this:Lcom/a/a/b/ah;,"Lcom/a/a/b/ah<TK;TV;>;"
    if-nez p1, :cond_0

    .line 3517
    const/4 v0, 0x0

    .line 3550
    :goto_0
    return v0

    .line 3525
    :cond_0
    iget-object v8, p0, Lcom/a/a/b/ah;->d:[Lcom/a/a/b/bl;

    .line 3526
    const-wide/16 v3, -0x1

    .line 3527
    const/4 v0, 0x0

    move v5, v0

    move-wide v6, v3

    :goto_1
    const/4 v0, 0x3

    if-ge v5, v0, :cond_5

    .line 3528
    const-wide/16 v1, 0x0

    .line 3529
    array-length v9, v8

    const/4 v0, 0x0

    move-wide v3, v1

    move v2, v0

    :goto_2
    if-ge v2, v9, :cond_4

    aget-object v10, v8, v2

    .line 3532
    iget v0, v10, Lcom/a/a/b/bl;->b:I

    .line 3534
    iget-object v11, v10, Lcom/a/a/b/bl;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3535
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 3536
    invoke-virtual {v11, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/bk;

    :goto_4
    if-eqz v0, :cond_2

    .line 3537
    invoke-virtual {v10, v0}, Lcom/a/a/b/bl;->f(Lcom/a/a/b/bk;)Ljava/lang/Object;

    move-result-object v12

    .line 3538
    if-eqz v12, :cond_1

    iget-object v13, p0, Lcom/a/a/b/ah;->g:Lcom/a/a/a/c;

    invoke-virtual {v13, p1, v12}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3539
    const/4 v0, 0x1

    goto :goto_0

    .line 3536
    :cond_1
    invoke-interface {v0}, Lcom/a/a/b/bk;->b()Lcom/a/a/b/bk;

    move-result-object v0

    goto :goto_4

    .line 3535
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 3543
    :cond_3
    iget v0, v10, Lcom/a/a/b/bl;->c:I

    int-to-long v0, v0

    add-long/2addr v3, v0

    .line 3529
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 3545
    :cond_4
    cmp-long v0, v3, v6

    if-nez v0, :cond_6

    .line 3550
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 3527
    :cond_6
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move-wide v6, v3

    goto :goto_1
.end method

.method d()Z
    .locals 4

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/a/a/b/ah;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d(I)[Lcom/a/a/b/bl;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/a/a/b/bl",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2024
    new-array v0, p1, [Lcom/a/a/b/bl;

    return-object v0
.end method

.method e()Z
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/a/a/b/ah;->h:Lcom/a/a/b/br;

    sget-object v1, Lcom/a/a/b/br;->a:Lcom/a/a/b/br;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3640
    iget-object v0, p0, Lcom/a/a/b/ah;->u:Ljava/util/Set;

    .line 3641
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/b/az;

    invoke-direct {v0, p0}, Lcom/a/a/b/az;-><init>(Lcom/a/a/b/ah;)V

    iput-object v0, p0, Lcom/a/a/b/ah;->u:Ljava/util/Set;

    goto :goto_0
.end method

.method f()Z
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/a/a/b/ah;->i:Lcom/a/a/b/br;

    sget-object v1, Lcom/a/a/b/br;->a:Lcom/a/a/b/br;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3475
    .local p0, this:Lcom/a/a/b/ah;,"Lcom/a/a/b/ah<TK;TV;>;"
    if-nez p1, :cond_0

    .line 3476
    const/4 v0, 0x0

    .line 3479
    :goto_0
    return-object v0

    .line 3478
    :cond_0
    invoke-virtual {p0, p1}, Lcom/a/a/b/ah;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3479
    invoke-virtual {p0, v0}, Lcom/a/a/b/ah;->b(I)Lcom/a/a/b/bl;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/a/a/b/bl;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3440
    .line 3441
    iget-object v6, p0, Lcom/a/a/b/ah;->d:[Lcom/a/a/b/bl;

    move v0, v1

    move-wide v2, v4

    .line 3442
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 3443
    aget-object v7, v6, v0

    iget v7, v7, Lcom/a/a/b/bl;->b:I

    if-eqz v7, :cond_1

    .line 3460
    :cond_0
    :goto_1
    return v1

    .line 3446
    :cond_1
    aget-object v7, v6, v0

    iget v7, v7, Lcom/a/a/b/bl;->c:I

    int-to-long v7, v7

    add-long/2addr v2, v7

    .line 3442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3449
    :cond_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    move v0, v1

    .line 3450
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 3451
    aget-object v7, v6, v0

    iget v7, v7, Lcom/a/a/b/bl;->b:I

    if-nez v7, :cond_0

    .line 3454
    aget-object v7, v6, v0

    iget v7, v7, Lcom/a/a/b/bl;->c:I

    int-to-long v7, v7

    sub-long/2addr v2, v7

    .line 3450
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3456
    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 3460
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method j()V
    .locals 4

    .prologue
    .line 1999
    :goto_0
    iget-object v0, p0, Lcom/a/a/b/ah;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/fw;

    if-eqz v0, :cond_0

    .line 2001
    :try_start_0
    iget-object v1, p0, Lcom/a/a/b/ah;->n:Lcom/a/a/b/fv;

    invoke-interface {v1, v0}, Lcom/a/a/b/fv;->a(Lcom/a/a/b/fw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2002
    :catch_0
    move-exception v0

    .line 2003
    sget-object v1, Lcom/a/a/b/ah;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2006
    :cond_0
    return-void
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3624
    iget-object v0, p0, Lcom/a/a/b/ah;->s:Ljava/util/Set;

    .line 3625
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/b/bi;

    invoke-direct {v0, p0}, Lcom/a/a/b/bi;-><init>(Lcom/a/a/b/ah;)V

    iput-object v0, p0, Lcom/a/a/b/ah;->s:Ljava/util/Set;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3555
    .local p0, this:Lcom/a/a/b/ah;,"Lcom/a/a/b/ah<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3556
    invoke-static {p2}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3557
    invoke-virtual {p0, p1}, Lcom/a/a/b/ah;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3558
    invoke-virtual {p0, v0}, Lcom/a/a/b/ah;->b(I)Lcom/a/a/b/bl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/a/a/b/bl;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3571
    .local p0, this:Lcom/a/a/b/ah;,"Lcom/a/a/b/ah<TK;TV;>;"
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3572
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/a/a/b/ah;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3574
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3563
    .local p0, this:Lcom/a/a/b/ah;,"Lcom/a/a/b/ah<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3564
    invoke-static {p2}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3565
    invoke-virtual {p0, p1}, Lcom/a/a/b/ah;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3566
    invoke-virtual {p0, v0}, Lcom/a/a/b/ah;->b(I)Lcom/a/a/b/bl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/a/a/b/bl;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3578
    .local p0, this:Lcom/a/a/b/ah;,"Lcom/a/a/b/ah<TK;TV;>;"
    if-nez p1, :cond_0

    .line 3579
    const/4 v0, 0x0

    .line 3582
    :goto_0
    return-object v0

    .line 3581
    :cond_0
    invoke-virtual {p0, p1}, Lcom/a/a/b/ah;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3582
    invoke-virtual {p0, v0}, Lcom/a/a/b/ah;->b(I)Lcom/a/a/b/bl;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/a/a/b/bl;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 3587
    .local p0, this:Lcom/a/a/b/ah;,"Lcom/a/a/b/ah<TK;TV;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3588
    :cond_0
    const/4 v0, 0x0

    .line 3591
    :goto_0
    return v0

    .line 3590
    :cond_1
    invoke-virtual {p0, p1}, Lcom/a/a/b/ah;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3591
    invoke-virtual {p0, v0}, Lcom/a/a/b/ah;->b(I)Lcom/a/a/b/bl;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/a/a/b/bl;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3607
    .local p0, this:Lcom/a/a/b/ah;,"Lcom/a/a/b/ah<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3608
    invoke-static {p2}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3609
    invoke-virtual {p0, p1}, Lcom/a/a/b/ah;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3610
    invoke-virtual {p0, v0}, Lcom/a/a/b/ah;->b(I)Lcom/a/a/b/bl;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/a/a/b/bl;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 3596
    .local p0, this:Lcom/a/a/b/ah;,"Lcom/a/a/b/ah<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, oldValue:Ljava/lang/Object;,"TV;"
    .local p3, newValue:Ljava/lang/Object;,"TV;"
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3597
    invoke-static {p3}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3598
    if-nez p2, :cond_0

    .line 3599
    const/4 v0, 0x0

    .line 3602
    :goto_0
    return v0

    .line 3601
    :cond_0
    invoke-virtual {p0, p1}, Lcom/a/a/b/ah;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3602
    invoke-virtual {p0, v0}, Lcom/a/a/b/ah;->b(I)Lcom/a/a/b/bl;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/a/a/b/bl;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 3465
    iget-object v3, p0, Lcom/a/a/b/ah;->d:[Lcom/a/a/b/bl;

    .line 3466
    const-wide/16 v1, 0x0

    .line 3467
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 3468
    aget-object v4, v3, v0

    iget v4, v4, Lcom/a/a/b/bl;->b:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 3467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3470
    :cond_0
    invoke-static {v1, v2}, Lcom/a/a/d/a;->a(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3632
    iget-object v0, p0, Lcom/a/a/b/ah;->t:Ljava/util/Collection;

    .line 3633
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/b/cc;

    invoke-direct {v0, p0}, Lcom/a/a/b/cc;-><init>(Lcom/a/a/b/ah;)V

    iput-object v0, p0, Lcom/a/a/b/ah;->t:Ljava/util/Collection;

    goto :goto_0
.end method
