.class final Lcom/a/a/b/fn;
.super Lcom/a/a/b/fo;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/fo",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/a/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/g",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/b/fl;Lcom/a/a/a/g;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/fl;",
            "Lcom/a/a/a/g",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 995
    invoke-direct {p0, p1}, Lcom/a/a/b/fo;-><init>(Lcom/a/a/b/fl;)V

    .line 996
    invoke-static {p2}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/g;

    iput-object v0, p0, Lcom/a/a/b/fn;->a:Lcom/a/a/a/g;

    .line 997
    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 1010
    invoke-static {p1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/fn;->a:Lcom/a/a/a/g;

    invoke-interface {v0, p1}, Lcom/a/a/a/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/a/a/b/z; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    throw v0

    .line 1015
    :catch_1
    move-exception v0

    .line 1016
    new-instance v1, Lcom/a/a/b/z;

    invoke-direct {v1, v0}, Lcom/a/a/b/z;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "k"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1002
    .line 1003
    .local p0, this:Lcom/a/a/b/fn;,"Lcom/a/a/b/fn<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/a/a/b/fn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/a/a/b/fn;->a:Lcom/a/a/a/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/a/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    invoke-virtual {p0, p1, v0}, Lcom/a/a/b/fn;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1006
    return-object v0
.end method
