.class final Lcom/a/a/b/gv;
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


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/a/a/b/dk;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method
