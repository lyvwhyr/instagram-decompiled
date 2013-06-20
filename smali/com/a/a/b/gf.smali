.class Lcom/a/a/b/gf;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Lcom/a/a/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/a/g",
        "<",
        "Lcom/a/a/b/gb",
        "<TE;>;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/ge;


# direct methods
.method constructor <init>(Lcom/a/a/b/ge;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/a/a/b/gf;->a:Lcom/a/a/b/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/b/gb;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/gb",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 720
    invoke-interface {p1}, Lcom/a/a/b/gb;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 718
    .local p0, this:Lcom/a/a/b/gf;,"Lcom/a/a/b/ge.com/a/a/b/gf;"
    check-cast p1, Lcom/a/a/b/gb;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/a/a/b/gf;->a(Lcom/a/a/b/gb;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
