.class Lcom/a/a/b/gx;
.super Lcom/a/a/b/k;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/k",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/gw;


# direct methods
.method constructor <init>(Lcom/a/a/b/gw;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/a/a/b/gx;->a:Lcom/a/a/b/gw;

    invoke-direct {p0, p2}, Lcom/a/a/b/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/a/a/b/gx;->a:Lcom/a/a/b/gw;

    iget-object v0, v0, Lcom/a/a/b/gw;->a:Lcom/a/a/b/gq;

    invoke-static {v0}, Lcom/a/a/b/gq;->a(Lcom/a/a/b/gq;)[Lcom/a/a/b/gt;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/a/a/b/gt;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
