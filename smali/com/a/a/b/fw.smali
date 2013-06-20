.class final Lcom/a/a/b/fw;
.super Lcom/a/a/b/dk;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dk",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/b/fp;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/a/a/b/fp;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/a/a/b/fp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 819
    invoke-direct {p0, p1, p2}, Lcom/a/a/b/dk;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 820
    iput-object p3, p0, Lcom/a/a/b/fw;->a:Lcom/a/a/b/fp;

    .line 821
    return-void
.end method
