.class abstract enum Lcom/a/a/b/al;
.super Ljava/lang/Enum;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/b/al;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/b/al;

.field public static final enum b:Lcom/a/a/b/al;

.field public static final enum c:Lcom/a/a/b/al;

.field public static final enum d:Lcom/a/a/b/al;

.field public static final enum e:Lcom/a/a/b/al;

.field public static final enum f:Lcom/a/a/b/al;

.field public static final enum g:Lcom/a/a/b/al;

.field public static final enum h:Lcom/a/a/b/al;

.field public static final enum i:Lcom/a/a/b/al;

.field public static final enum j:Lcom/a/a/b/al;

.field public static final enum k:Lcom/a/a/b/al;

.field public static final enum l:Lcom/a/a/b/al;

.field static final m:[[Lcom/a/a/b/al;

.field private static final synthetic n:[Lcom/a/a/b/al;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 353
    new-instance v0, Lcom/a/a/b/am;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v3}, Lcom/a/a/b/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/al;->a:Lcom/a/a/b/al;

    .line 360
    new-instance v0, Lcom/a/a/b/aq;

    const-string v1, "STRONG_EXPIRABLE"

    invoke-direct {v0, v1, v4}, Lcom/a/a/b/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/al;->b:Lcom/a/a/b/al;

    .line 375
    new-instance v0, Lcom/a/a/b/ar;

    const-string v1, "STRONG_EVICTABLE"

    invoke-direct {v0, v1, v5}, Lcom/a/a/b/ar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/al;->c:Lcom/a/a/b/al;

    .line 390
    new-instance v0, Lcom/a/a/b/as;

    const-string v1, "STRONG_EXPIRABLE_EVICTABLE"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/al;->d:Lcom/a/a/b/al;

    .line 407
    new-instance v0, Lcom/a/a/b/at;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v7}, Lcom/a/a/b/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/al;->e:Lcom/a/a/b/al;

    .line 414
    new-instance v0, Lcom/a/a/b/au;

    const-string v1, "SOFT_EXPIRABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/al;->f:Lcom/a/a/b/al;

    .line 429
    new-instance v0, Lcom/a/a/b/av;

    const-string v1, "SOFT_EVICTABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/al;->g:Lcom/a/a/b/al;

    .line 444
    new-instance v0, Lcom/a/a/b/aw;

    const-string v1, "SOFT_EXPIRABLE_EVICTABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/aw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/al;->h:Lcom/a/a/b/al;

    .line 461
    new-instance v0, Lcom/a/a/b/ax;

    const-string v1, "WEAK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/al;->i:Lcom/a/a/b/al;

    .line 468
    new-instance v0, Lcom/a/a/b/an;

    const-string v1, "WEAK_EXPIRABLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/an;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/al;->j:Lcom/a/a/b/al;

    .line 483
    new-instance v0, Lcom/a/a/b/ao;

    const-string v1, "WEAK_EVICTABLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/al;->k:Lcom/a/a/b/al;

    .line 498
    new-instance v0, Lcom/a/a/b/ap;

    const-string v1, "WEAK_EXPIRABLE_EVICTABLE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/al;->l:Lcom/a/a/b/al;

    .line 352
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/a/a/b/al;

    sget-object v1, Lcom/a/a/b/al;->a:Lcom/a/a/b/al;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/b/al;->b:Lcom/a/a/b/al;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/b/al;->c:Lcom/a/a/b/al;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/b/al;->d:Lcom/a/a/b/al;

    aput-object v1, v0, v6

    sget-object v1, Lcom/a/a/b/al;->e:Lcom/a/a/b/al;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/a/a/b/al;->f:Lcom/a/a/b/al;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/a/a/b/al;->g:Lcom/a/a/b/al;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/a/a/b/al;->h:Lcom/a/a/b/al;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/a/a/b/al;->i:Lcom/a/a/b/al;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/a/a/b/al;->j:Lcom/a/a/b/al;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/a/a/b/al;->k:Lcom/a/a/b/al;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/a/a/b/al;->l:Lcom/a/a/b/al;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/b/al;->n:[Lcom/a/a/b/al;

    .line 525
    new-array v0, v6, [[Lcom/a/a/b/al;

    new-array v1, v7, [Lcom/a/a/b/al;

    sget-object v2, Lcom/a/a/b/al;->a:Lcom/a/a/b/al;

    aput-object v2, v1, v3

    sget-object v2, Lcom/a/a/b/al;->b:Lcom/a/a/b/al;

    aput-object v2, v1, v4

    sget-object v2, Lcom/a/a/b/al;->c:Lcom/a/a/b/al;

    aput-object v2, v1, v5

    sget-object v2, Lcom/a/a/b/al;->d:Lcom/a/a/b/al;

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v7, [Lcom/a/a/b/al;

    sget-object v2, Lcom/a/a/b/al;->e:Lcom/a/a/b/al;

    aput-object v2, v1, v3

    sget-object v2, Lcom/a/a/b/al;->f:Lcom/a/a/b/al;

    aput-object v2, v1, v4

    sget-object v2, Lcom/a/a/b/al;->g:Lcom/a/a/b/al;

    aput-object v2, v1, v5

    sget-object v2, Lcom/a/a/b/al;->h:Lcom/a/a/b/al;

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Lcom/a/a/b/al;

    sget-object v2, Lcom/a/a/b/al;->i:Lcom/a/a/b/al;

    aput-object v2, v1, v3

    sget-object v2, Lcom/a/a/b/al;->j:Lcom/a/a/b/al;

    aput-object v2, v1, v4

    sget-object v2, Lcom/a/a/b/al;->k:Lcom/a/a/b/al;

    aput-object v2, v1, v5

    sget-object v2, Lcom/a/a/b/al;->l:Lcom/a/a/b/al;

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    sput-object v0, Lcom/a/a/b/al;->m:[[Lcom/a/a/b/al;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/a/a/b/ai;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    invoke-direct {p0, p1, p2}, Lcom/a/a/b/al;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Lcom/a/a/b/br;ZZ)Lcom/a/a/b/al;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 533
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :cond_0
    or-int/2addr v0, v1

    .line 534
    sget-object v1, Lcom/a/a/b/al;->m:[[Lcom/a/a/b/al;

    invoke-virtual {p0}, Lcom/a/a/b/br;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    move v1, v0

    .line 533
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/b/al;
    .locals 1
    .parameter "name"

    .prologue
    .line 352
    const-class v0, Lcom/a/a/b/al;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/al;

    return-object v0
.end method

.method public static values()[Lcom/a/a/b/al;
    .locals 1

    .prologue
    .line 352
    sget-object v0, Lcom/a/a/b/al;->n:[Lcom/a/a/b/al;

    invoke-virtual {v0}, [Lcom/a/a/b/al;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/b/al;

    return-object v0
.end method


# virtual methods
.method a(Lcom/a/a/b/bl;Lcom/a/a/b/bk;Lcom/a/a/b/bk;)Lcom/a/a/b/bk;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/bl",
            "<TK;TV;>;",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 557
    invoke-interface {p2}, Lcom/a/a/b/bk;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/a/a/b/bk;->c()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/a/a/b/al;->a(Lcom/a/a/b/bl;Ljava/lang/Object;ILcom/a/a/b/bk;)Lcom/a/a/b/bk;

    move-result-object v0

    return-object v0
.end method

.method abstract a(Lcom/a/a/b/bl;Ljava/lang/Object;ILcom/a/a/b/bk;)Lcom/a/a/b/bk;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/bl",
            "<TK;TV;>;TK;I",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method a(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V
    .locals 2
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
    .line 564
    invoke-interface {p1}, Lcom/a/a/b/bk;->e()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/a/a/b/bk;->a(J)V

    .line 566
    invoke-interface {p1}, Lcom/a/a/b/bk;->g()Lcom/a/a/b/bk;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/a/a/b/ah;->a(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V

    .line 567
    invoke-interface {p1}, Lcom/a/a/b/bk;->f()Lcom/a/a/b/bk;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/a/a/b/ah;->a(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V

    .line 569
    invoke-static {p1}, Lcom/a/a/b/ah;->d(Lcom/a/a/b/bk;)V

    .line 570
    return-void
.end method

.method b(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V
    .locals 1
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
    .line 576
    invoke-interface {p1}, Lcom/a/a/b/bk;->i()Lcom/a/a/b/bk;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/a/a/b/ah;->b(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V

    .line 577
    invoke-interface {p1}, Lcom/a/a/b/bk;->h()Lcom/a/a/b/bk;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/a/a/b/ah;->b(Lcom/a/a/b/bk;Lcom/a/a/b/bk;)V

    .line 579
    invoke-static {p1}, Lcom/a/a/b/ah;->e(Lcom/a/a/b/bk;)V

    .line 580
    return-void
.end method
