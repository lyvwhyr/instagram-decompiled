.class Lcom/a/a/b/be;
.super Lcom/a/a/b/ak;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/ak",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/a/a/b/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/a/a/b/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/a/a/b/bd;


# direct methods
.method constructor <init>(Lcom/a/a/b/bd;)V
    .locals 0
    .parameter

    .prologue
    .line 3285
    iput-object p1, p0, Lcom/a/a/b/be;->c:Lcom/a/a/b/bd;

    invoke-direct {p0}, Lcom/a/a/b/ak;-><init>()V

    .line 3295
    iput-object p0, p0, Lcom/a/a/b/be;->a:Lcom/a/a/b/bk;

    .line 3307
    iput-object p0, p0, Lcom/a/a/b/be;->b:Lcom/a/a/b/bk;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 3293
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
    .line 3304
    iput-object p1, p0, Lcom/a/a/b/be;->a:Lcom/a/a/b/bk;

    .line 3305
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
    .line 3316
    iput-object p1, p0, Lcom/a/a/b/be;->b:Lcom/a/a/b/bk;

    .line 3317
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 3289
    const-wide v0, 0x7fffffffffffffffL

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
    .line 3299
    iget-object v0, p0, Lcom/a/a/b/be;->a:Lcom/a/a/b/bk;

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
    .line 3311
    iget-object v0, p0, Lcom/a/a/b/be;->b:Lcom/a/a/b/bk;

    return-object v0
.end method
