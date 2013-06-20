.class final Lcom/a/a/b/bp;
.super Lcom/a/a/b/bm;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/a/a/b/bk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/bm",
        "<TK;TV;>;",
        "Lcom/a/a/b/bk",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile d:J

.field e:Lcom/a/a/b/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field f:Lcom/a/a/b/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field g:Lcom/a/a/b/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field h:Lcom/a/a/b/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/a/a/b/bk;)V
    .locals 2
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
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1405
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/b/bm;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/a/a/b/bk;)V

    .line 1410
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/a/a/b/bp;->d:J

    .line 1422
    invoke-static {}, Lcom/a/a/b/ah;->h()Lcom/a/a/b/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/bp;->e:Lcom/a/a/b/bk;

    .line 1435
    invoke-static {}, Lcom/a/a/b/ah;->h()Lcom/a/a/b/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/bp;->f:Lcom/a/a/b/bk;

    .line 1450
    invoke-static {}, Lcom/a/a/b/ah;->h()Lcom/a/a/b/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/bp;->g:Lcom/a/a/b/bk;

    .line 1463
    invoke-static {}, Lcom/a/a/b/ah;->h()Lcom/a/a/b/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/bp;->h:Lcom/a/a/b/bk;

    .line 1406
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 1419
    iput-wide p1, p0, Lcom/a/a/b/bp;->d:J

    .line 1420
    return-void
.end method

.method public a(Lcom/a/a/b/bk;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/a/a/b/bp;->e:Lcom/a/a/b/bk;

    .line 1433
    return-void
.end method

.method public b(Lcom/a/a/b/bk;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/a/a/b/bp;->f:Lcom/a/a/b/bk;

    .line 1446
    return-void
.end method

.method public c(Lcom/a/a/b/bk;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/a/a/b/bp;->g:Lcom/a/a/b/bk;

    .line 1461
    return-void
.end method

.method public d(Lcom/a/a/b/bk;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/a/a/b/bp;->h:Lcom/a/a/b/bk;

    .line 1474
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 1414
    iget-wide v0, p0, Lcom/a/a/b/bp;->d:J

    return-wide v0
.end method

.method public f()Lcom/a/a/b/bk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/a/a/b/bp;->e:Lcom/a/a/b/bk;

    return-object v0
.end method

.method public g()Lcom/a/a/b/bk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/a/a/b/bp;->f:Lcom/a/a/b/bk;

    return-object v0
.end method

.method public h()Lcom/a/a/b/bk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/a/a/b/bp;->g:Lcom/a/a/b/bk;

    return-object v0
.end method

.method public i()Lcom/a/a/b/bk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/a/a/b/bp;->h:Lcom/a/a/b/bk;

    return-object v0
.end method
