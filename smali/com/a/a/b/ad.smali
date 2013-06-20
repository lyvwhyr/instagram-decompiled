.class final Lcom/a/a/b/ad;
.super Lcom/a/a/b/aa;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/aa",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/a/a/b/fl;Lcom/a/a/a/g;)V
    .locals 0
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
    .line 385
    invoke-direct {p0, p1, p2}, Lcom/a/a/b/aa;-><init>(Lcom/a/a/b/fl;Lcom/a/a/a/g;)V

    .line 386
    return-void
.end method


# virtual methods
.method synthetic b(I)Lcom/a/a/b/bl;
    .locals 1
    .parameter

    .prologue
    .line 379
    invoke-super {p0, p1}, Lcom/a/a/b/aa;->a(I)Lcom/a/a/b/ae;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, this:Lcom/a/a/b/ad;,"Lcom/a/a/b/ad<TK;TV;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/a/a/b/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 400
    if-nez v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/a/a/b/ad;->a:Lcom/a/a/a/g;

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

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 396
    const-class v1, Lcom/a/a/b/z;

    invoke-static {v0, v1}, Lcom/a/a/a/w;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 397
    new-instance v1, Lcom/a/a/b/z;

    invoke-direct {v1, v0}, Lcom/a/a/b/z;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 403
    :cond_0
    return-object v0
.end method
