.class Lcom/a/a/b/bb;
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

.field final synthetic c:Lcom/a/a/b/ba;


# direct methods
.method constructor <init>(Lcom/a/a/b/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 3157
    iput-object p1, p0, Lcom/a/a/b/bb;->c:Lcom/a/a/b/ba;

    invoke-direct {p0}, Lcom/a/a/b/ak;-><init>()V

    .line 3159
    iput-object p0, p0, Lcom/a/a/b/bb;->a:Lcom/a/a/b/bk;

    .line 3171
    iput-object p0, p0, Lcom/a/a/b/bb;->b:Lcom/a/a/b/bk;

    return-void
.end method


# virtual methods
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
    .line 3168
    iput-object p1, p0, Lcom/a/a/b/bb;->a:Lcom/a/a/b/bk;

    .line 3169
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
    .line 3180
    iput-object p1, p0, Lcom/a/a/b/bb;->b:Lcom/a/a/b/bk;

    .line 3181
    return-void
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
    .line 3163
    iget-object v0, p0, Lcom/a/a/b/bb;->a:Lcom/a/a/b/bk;

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
    .line 3175
    iget-object v0, p0, Lcom/a/a/b/bb;->b:Lcom/a/a/b/bk;

    return-object v0
.end method
