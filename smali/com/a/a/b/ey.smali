.class public final Lcom/a/a/b/ey;
.super Lcom/a/a/b/m;
.source "LinkedHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/m",
        "<TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/a/a/b/m;-><init>(Ljava/util/Map;)V

    .line 80
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/a/a/b/fx;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/a/a/b/m;-><init>(Ljava/util/Map;)V

    .line 85
    return-void
.end method

.method public static a(I)Lcom/a/a/b/ey;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/a/a/b/ey",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/a/a/b/ey;

    invoke-direct {v0, p0}, Lcom/a/a/b/ey;-><init>(I)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/a/a/b/ey;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/a/a/b/ey",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p0}, Lcom/a/a/b/gc;->a(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lcom/a/a/b/ey;->a(I)Lcom/a/a/b/ey;

    move-result-object v0

    .line 74
    invoke-static {v0, p0}, Lcom/a/a/b/eo;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 75
    return-object v0
.end method

.method public static h()Lcom/a/a/b/ey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/b/ey",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/a/a/b/ey;

    invoke-direct {v0}, Lcom/a/a/b/ey;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/a/a/b/m;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/a/a/b/m;->a(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    .local p0, this:Lcom/a/a/b/ey;,"Lcom/a/a/b/ey<TE;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/m;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    .local p0, this:Lcom/a/a/b/ey;,"Lcom/a/a/b/ey<TE;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/m;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/a/a/b/m;->b(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/a/a/b/m;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/a/a/b/m;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    .local p0, this:Lcom/a/a/b/ey;,"Lcom/a/a/b/ey<TE;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/m;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    .local p0, this:Lcom/a/a/b/ey;,"Lcom/a/a/b/ey<TE;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Ljava/util/Set;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/a/a/b/m;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/a/a/b/m;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/a/a/b/m;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/a/a/b/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    .local p0, this:Lcom/a/a/b/ey;,"Lcom/a/a/b/ey<TE;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/m;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    .local p0, this:Lcom/a/a/b/ey;,"Lcom/a/a/b/ey<TE;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/m;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    .local p0, this:Lcom/a/a/b/ey;,"Lcom/a/a/b/ey<TE;>;"
    invoke-super {p0, p1}, Lcom/a/a/b/m;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/a/a/b/m;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/a/a/b/m;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
