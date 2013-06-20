.class final Lcom/a/a/b/bh;
.super Lcom/a/a/b/bg;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/ah",
        "<TK;TV;>.com/a/a/b/bg;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/ah;


# direct methods
.method constructor <init>(Lcom/a/a/b/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 3753
    iput-object p1, p0, Lcom/a/a/b/bh;->a:Lcom/a/a/b/ah;

    invoke-direct {p0, p1}, Lcom/a/a/b/bg;-><init>(Lcom/a/a/b/ah;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3757
    invoke-virtual {p0}, Lcom/a/a/b/bh;->e()Lcom/a/a/b/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/ci;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
