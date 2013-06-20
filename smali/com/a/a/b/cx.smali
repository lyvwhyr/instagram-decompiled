.class public abstract Lcom/a/a/b/cx;
.super Ljava/lang/Object;
.source "GenericMapMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/a/a/b/fv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/fv",
            "<TK0;TV0;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/a/a/b/fv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/a/a/b/fv",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/a/a/b/cx;->a:Lcom/a/a/b/fv;

    sget-object v1, Lcom/a/a/b/cy;->a:Lcom/a/a/b/cy;

    invoke-static {v0, v1}, Lcom/a/a/a/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/fv;

    return-object v0
.end method
