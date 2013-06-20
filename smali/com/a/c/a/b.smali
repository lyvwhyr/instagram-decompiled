.class Lcom/a/c/a/b;
.super Ljava/lang/Object;
.source "Annotations.java"


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/a/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/g",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/a/c/a/c;

    invoke-direct {v0, p0}, Lcom/a/c/a/c;-><init>(Lcom/a/c/a/b;)V

    iput-object v0, p0, Lcom/a/c/a/b;->c:Lcom/a/a/a/g;

    .line 76
    new-instance v0, Lcom/a/a/b/fl;

    invoke-direct {v0}, Lcom/a/a/b/fl;-><init>()V

    invoke-virtual {v0}, Lcom/a/a/b/fl;->f()Lcom/a/a/b/fl;

    move-result-object v0

    iget-object v1, p0, Lcom/a/c/a/b;->c:Lcom/a/a/a/g;

    invoke-virtual {v0, v1}, Lcom/a/a/b/fl;->a(Lcom/a/a/a/g;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/a/c/a/b;->a:Ljava/util/Map;

    .line 83
    iput-object p1, p0, Lcom/a/c/a/b;->b:Ljava/util/Collection;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/a/c/a/b;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/a/c/a/b;->b:Ljava/util/Collection;

    return-object v0
.end method
