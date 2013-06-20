.class final Lcom/a/a/b/gu;
.super Lcom/a/a/b/dk;
.source "RegularImmutableMap.java"

# interfaces
.implements Lcom/a/a/b/gt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dk",
        "<TK;TV;>;",
        "Lcom/a/a/b/gt",
        "<TK;TV;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field final a:Lcom/a/a/b/gt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/gt",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/a/a/b/gt;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/a/a/b/gt",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/a/a/b/dk;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    iput-object p3, p0, Lcom/a/a/b/gu;->a:Lcom/a/a/b/gt;

    .line 118
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/b/gt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/gt",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/a/a/b/gu;->a:Lcom/a/a/b/gt;

    return-object v0
.end method
