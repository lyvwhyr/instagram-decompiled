.class final Lcom/a/a/b/ep;
.super Lcom/a/a/b/eq;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/eq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lcom/a/a/a/g;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/a/a/a/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/a/a/b/ep;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/a/a/b/ep;->b:Lcom/a/a/a/g;

    invoke-direct {p0}, Lcom/a/a/b/eq;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 687
    iget-object v0, p0, Lcom/a/a/b/ep;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b/ep;->b:Lcom/a/a/a/g;

    invoke-static {v0, v1}, Lcom/a/a/b/er;->a(Ljava/util/Iterator;Lcom/a/a/a/g;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
