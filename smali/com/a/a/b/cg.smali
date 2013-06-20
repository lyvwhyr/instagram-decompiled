.class final Lcom/a/a/b/cg;
.super Lcom/a/a/b/cd;
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
        "Lcom/a/a/b/cd",
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
    .line 1663
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/b/cd;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/a/a/b/bk;)V

    .line 1668
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/a/a/b/cg;->d:J

    .line 1680
    invoke-static {}, Lcom/a/a/b/ah;->h()Lcom/a/a/b/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/cg;->e:Lcom/a/a/b/bk;

    .line 1693
    invoke-static {}, Lcom/a/a/b/ah;->h()Lcom/a/a/b/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/cg;->f:Lcom/a/a/b/bk;

    .line 1708
    invoke-static {}, Lcom/a/a/b/ah;->h()Lcom/a/a/b/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/cg;->g:Lcom/a/a/b/bk;

    .line 1721
    invoke-static {}, Lcom/a/a/b/ah;->h()Lcom/a/a/b/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/cg;->h:Lcom/a/a/b/bk;

    .line 1664
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 1677
    iput-wide p1, p0, Lcom/a/a/b/cg;->d:J

    .line 1678
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
    .line 1690
    iput-object p1, p0, Lcom/a/a/b/cg;->e:Lcom/a/a/b/bk;

    .line 1691
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
    .line 1703
    iput-object p1, p0, Lcom/a/a/b/cg;->f:Lcom/a/a/b/bk;

    .line 1704
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
    .line 1718
    iput-object p1, p0, Lcom/a/a/b/cg;->g:Lcom/a/a/b/bk;

    .line 1719
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
    .line 1731
    iput-object p1, p0, Lcom/a/a/b/cg;->h:Lcom/a/a/b/bk;

    .line 1732
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 1672
    iget-wide v0, p0, Lcom/a/a/b/cg;->d:J

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
    .line 1685
    iget-object v0, p0, Lcom/a/a/b/cg;->e:Lcom/a/a/b/bk;

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
    .line 1698
    iget-object v0, p0, Lcom/a/a/b/cg;->f:Lcom/a/a/b/bk;

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
    .line 1713
    iget-object v0, p0, Lcom/a/a/b/cg;->g:Lcom/a/a/b/bk;

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
    .line 1726
    iget-object v0, p0, Lcom/a/a/b/cg;->h:Lcom/a/a/b/bk;

    return-object v0
.end method
