.class public Lcom/a/a/b/ec;
.super Lcom/a/a/b/ek;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/ek",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/a/a/b/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/ec",
            "<",
            "Ljava/lang/Comparable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient a:Lcom/a/a/b/dl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/dl",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final transient d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private transient e:Lcom/a/a/b/dv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/dv",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient f:Lcom/a/a/b/el;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/el",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient g:Lcom/a/a/b/dg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/dg",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/a/a/b/gl;->a()Lcom/a/a/b/gl;

    move-result-object v0

    sput-object v0, Lcom/a/a/b/ec;->b:Ljava/util/Comparator;

    .line 75
    new-instance v0, Lcom/a/a/b/ec;

    invoke-static {}, Lcom/a/a/b/dl;->d()Lcom/a/a/b/dl;

    move-result-object v1

    sget-object v2, Lcom/a/a/b/ec;->b:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/ec;-><init>(Lcom/a/a/b/dl;Ljava/util/Comparator;)V

    sput-object v0, Lcom/a/a/b/ec;->c:Lcom/a/a/b/ec;

    return-void
.end method

.method constructor <init>(Lcom/a/a/b/dl;Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/dl",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/a/a/b/ek;-><init>()V

    .line 405
    iput-object p1, p0, Lcom/a/a/b/ec;->a:Lcom/a/a/b/dl;

    .line 406
    iput-object p2, p0, Lcom/a/a/b/ec;->d:Ljava/util/Comparator;

    .line 407
    return-void
.end method

.method private a(Ljava/lang/Object;Lcom/a/a/b/hr;Lcom/a/a/b/hn;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/a/a/b/ec;->m()Lcom/a/a/b/dl;

    move-result-object v0

    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/b/ec;->f()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v1, v2, p2, p3}, Lcom/a/a/b/hl;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/a/a/b/hr;Lcom/a/a/b/hn;)I

    move-result v0

    return v0
.end method

.method private a(II)Lcom/a/a/b/ec;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/a/a/b/ec",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 719
    if-ge p1, p2, :cond_0

    .line 720
    new-instance v0, Lcom/a/a/b/ec;

    iget-object v1, p0, Lcom/a/a/b/ec;->a:Lcom/a/a/b/dl;

    invoke-virtual {v1, p1, p2}, Lcom/a/a/b/dl;->a(II)Lcom/a/a/b/dl;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/ec;->d:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/ec;-><init>(Lcom/a/a/b/dl;Ljava/util/Comparator;)V

    .line 723
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/ec;->d:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/a/a/b/ec;->a(Ljava/util/Comparator;)Lcom/a/a/b/ec;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/Comparator;)Lcom/a/a/b/ec;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/a/a/b/ec",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, Lcom/a/a/b/ec;->b:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/a/a/b/ec;->c:Lcom/a/a/b/ec;

    .line 95
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/b/ec;

    invoke-static {}, Lcom/a/a/b/dl;->d()Lcom/a/a/b/dl;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/a/a/b/ec;-><init>(Lcom/a/a/b/dl;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/a/a/b/ec;->c(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic b(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/a/a/b/ec;->d(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static c(Ljava/util/List;Ljava/util/Comparator;)V
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
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Lcom/a/a/b/ed;

    invoke-direct {v0, p1}, Lcom/a/a/b/ed;-><init>(Ljava/util/Comparator;)V

    .line 277
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 278
    return-void
.end method

.method private static d(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 282
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 283
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate keys in mappings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 290
    :cond_1
    return-void
.end method

.method public static e()Lcom/a/a/b/eh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/b/eh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Lcom/a/a/b/eh;

    invoke-static {}, Lcom/a/a/b/gl;->a()Lcom/a/a/b/gl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/b/eh;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private i()Lcom/a/a/b/dv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dv",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/a/a/b/ec;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/a/a/b/dv;->d()Lcom/a/a/b/dv;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/b/ei;

    invoke-direct {v0, p0}, Lcom/a/a/b/ei;-><init>(Lcom/a/a/b/ec;)V

    goto :goto_0
.end method

.method private l()Lcom/a/a/b/el;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/el",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/a/a/b/ec;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/a/a/b/ec;->d:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/a/a/b/el;->a(Ljava/util/Comparator;)Lcom/a/a/b/el;

    move-result-object v0

    .line 524
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/b/hb;

    new-instance v1, Lcom/a/a/b/ee;

    iget-object v2, p0, Lcom/a/a/b/ec;->a:Lcom/a/a/b/dl;

    invoke-direct {v1, p0, v2}, Lcom/a/a/b/ee;-><init>(Lcom/a/a/b/ec;Lcom/a/a/b/dl;)V

    iget-object v2, p0, Lcom/a/a/b/ec;->d:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/hb;-><init>(Lcom/a/a/b/dl;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private m()Lcom/a/a/b/dl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dl",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 703
    new-instance v0, Lcom/a/a/b/eg;

    iget-object v1, p0, Lcom/a/a/b/ec;->a:Lcom/a/a/b/dl;

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/eg;-><init>(Lcom/a/a/b/ec;Lcom/a/a/b/dl;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/a/b/dv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dv",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/a/a/b/ec;->e:Lcom/a/a/b/dv;

    .line 454
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/b/ec;->i()Lcom/a/a/b/dv;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/ec;->e:Lcom/a/a/b/dv;

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/a/a/b/ec;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/a/a/b/ec",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 638
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/b/ec;->a(Ljava/lang/Object;Z)Lcom/a/a/b/ec;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;Z)Lcom/a/a/b/ec;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/a/a/b/ec",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 643
    if-eqz p2, :cond_0

    .line 644
    sget-object v0, Lcom/a/a/b/hr;->a:Lcom/a/a/b/hr;

    sget-object v1, Lcom/a/a/b/hn;->a:Lcom/a/a/b/hn;

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/b/ec;->a(Ljava/lang/Object;Lcom/a/a/b/hr;Lcom/a/a/b/hn;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 648
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/a/a/b/ec;->a(II)Lcom/a/a/b/ec;

    move-result-object v0

    return-object v0

    .line 646
    :cond_0
    sget-object v0, Lcom/a/a/b/hr;->a:Lcom/a/a/b/hr;

    sget-object v1, Lcom/a/a/b/hn;->b:Lcom/a/a/b/hn;

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/b/ec;->a(Ljava/lang/Object;Lcom/a/a/b/hr;Lcom/a/a/b/hn;)I

    move-result v0

    goto :goto_0
.end method

.method a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/a/a/b/ec;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lcom/a/a/b/ec",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 671
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-static {p3}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iget-object v0, p0, Lcom/a/a/b/ec;->d:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/a/a/a/t;->a(Z)V

    .line 674
    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/ec;->b(Ljava/lang/Object;Z)Lcom/a/a/b/ec;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/a/a/b/ec;->a(Ljava/lang/Object;Z)Lcom/a/a/b/ec;

    move-result-object v0

    return-object v0

    .line 673
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b()Lcom/a/a/b/dv;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/a/a/b/ec;->g()Lcom/a/a/b/el;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lcom/a/a/b/ec;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/a/a/b/ec",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 689
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/a/a/b/ec;->b(Ljava/lang/Object;Z)Lcom/a/a/b/ec;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/ec;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lcom/a/a/b/ec",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 666
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/a/a/b/ec;->a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/a/a/b/ec;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/Object;Z)Lcom/a/a/b/ec;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/a/a/b/ec",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 694
    if-eqz p2, :cond_0

    .line 695
    sget-object v0, Lcom/a/a/b/hr;->a:Lcom/a/a/b/hr;

    sget-object v1, Lcom/a/a/b/hn;->b:Lcom/a/a/b/hn;

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/b/ec;->a(Ljava/lang/Object;Lcom/a/a/b/hr;Lcom/a/a/b/hn;)I

    move-result v0

    .line 699
    :goto_0
    invoke-virtual {p0}, Lcom/a/a/b/ec;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/a/a/b/ec;->a(II)Lcom/a/a/b/ec;

    move-result-object v0

    return-object v0

    .line 697
    :cond_0
    sget-object v0, Lcom/a/a/b/hr;->a:Lcom/a/a/b/hr;

    sget-object v1, Lcom/a/a/b/hn;->a:Lcom/a/a/b/hn;

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/b/ec;->a(Ljava/lang/Object;Lcom/a/a/b/hr;Lcom/a/a/b/hn;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c()Lcom/a/a/b/dg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dg",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lcom/a/a/b/ec;->g:Lcom/a/a/b/dg;

    .line 541
    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/b/ej;

    invoke-direct {v0, p0}, Lcom/a/a/b/ej;-><init>(Lcom/a/a/b/ec;)V

    iput-object v0, p0, Lcom/a/a/b/ec;->g:Lcom/a/a/b/dg;

    :cond_0
    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lcom/a/a/b/ec;->d:Ljava/util/Comparator;

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 436
    .local p0, this:Lcom/a/a/b/ec;,"Lcom/a/a/b/ec<TK;TV;>;"
    if-nez p1, :cond_0

    .line 437
    const/4 v0, 0x0

    .line 439
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/a/a/b/ec;->h()Lcom/a/a/b/id;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/a/b/er;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/a/a/b/ec;->a:Lcom/a/a/b/dl;

    invoke-virtual {v0}, Lcom/a/a/b/dl;->a()Z

    move-result v0

    return v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/a/a/b/ec;->a()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/a/a/b/ec;->d:Ljava/util/Comparator;

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/a/a/b/ec;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/ec;->a:Lcom/a/a/b/dl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/b/dl;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/a/a/b/el;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/el",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lcom/a/a/b/ec;->f:Lcom/a/a/b/el;

    .line 515
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/b/ec;->l()Lcom/a/a/b/el;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/ec;->f:Lcom/a/a/b/el;

    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    .local p0, this:Lcom/a/a/b/ec;,"Lcom/a/a/b/ec<TK;TV;>;"
    const/4 v0, 0x0

    .line 423
    if-nez p1, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-object v0

    .line 428
    :cond_1
    :try_start_0
    sget-object v1, Lcom/a/a/b/hr;->a:Lcom/a/a/b/hr;

    sget-object v2, Lcom/a/a/b/hn;->c:Lcom/a/a/b/hn;

    invoke-direct {p0, p1, v1, v2}, Lcom/a/a/b/ec;->a(Ljava/lang/Object;Lcom/a/a/b/hr;Lcom/a/a/b/hn;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 432
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/a/a/b/ec;->a:Lcom/a/a/b/dl;

    invoke-virtual {v0, v1}, Lcom/a/a/b/dl;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method h()Lcom/a/a/b/id;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/id",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/a/a/b/ec;->a:Lcom/a/a/b/dl;

    invoke-virtual {v0}, Lcom/a/a/b/dl;->a_()Lcom/a/a/b/id;

    move-result-object v0

    .line 546
    new-instance v1, Lcom/a/a/b/ef;

    invoke-direct {v1, p0, v0}, Lcom/a/a/b/ef;-><init>(Lcom/a/a/b/ec;Lcom/a/a/b/id;)V

    return-object v1
.end method

.method public synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    .local p0, this:Lcom/a/a/b/ec;,"Lcom/a/a/b/ec<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/a/a/b/ec;->a(Ljava/lang/Object;)Lcom/a/a/b/ec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/a/a/b/ec;->g()Lcom/a/a/b/el;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/a/a/b/ec;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/ec;->a:Lcom/a/a/b/dl;

    invoke-virtual {p0}, Lcom/a/a/b/ec;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/a/a/b/dl;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/a/a/b/ec;->a:Lcom/a/a/b/dl;

    invoke-virtual {v0}, Lcom/a/a/b/dl;->size()I

    move-result v0

    return v0
.end method

.method public synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    .local p0, this:Lcom/a/a/b/ec;,"Lcom/a/a/b/ec<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/ec;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/ec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    .local p0, this:Lcom/a/a/b/ec;,"Lcom/a/a/b/ec<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/a/a/b/ec;->b(Ljava/lang/Object;)Lcom/a/a/b/ec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/a/a/b/ec;->c()Lcom/a/a/b/dg;

    move-result-object v0

    return-object v0
.end method
