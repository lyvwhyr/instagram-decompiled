.class Lcom/a/a/b/u;
.super Lcom/a/a/b/ge;
.source "AbstractMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/ge",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/t;


# direct methods
.method constructor <init>(Lcom/a/a/b/t;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/a/a/b/u;->a:Lcom/a/a/b/t;

    invoke-direct {p0}, Lcom/a/a/b/ge;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/a/a/b/ga;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/ga",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/a/a/b/u;->a:Lcom/a/a/b/t;

    return-object v0
.end method
