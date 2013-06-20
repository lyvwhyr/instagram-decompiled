.class Lcom/instagram/android/maps/clustering/Quadtree$3;
.super Ljava/lang/Object;
.source "Quadtree.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/instagram/android/maps/clustering/QuadtreeCluster;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/clustering/Quadtree;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/clustering/Quadtree;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    .local p0, this:Lcom/instagram/android/maps/clustering/Quadtree$3;,"Lcom/instagram/android/maps/clustering/Quadtree.3;"
    iput-object p1, p0, Lcom/instagram/android/maps/clustering/Quadtree$3;->this$0:Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/instagram/android/maps/clustering/QuadtreeCluster;Lcom/instagram/android/maps/clustering/QuadtreeCluster;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 439
    .local p0, this:Lcom/instagram/android/maps/clustering/Quadtree$3;,"Lcom/instagram/android/maps/clustering/Quadtree.3;"
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 440
    const/4 v0, 0x0

    .line 444
    :goto_0
    return v0

    .line 441
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 442
    const/4 v0, -0x1

    goto :goto_0

    .line 444
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    .local p0, this:Lcom/instagram/android/maps/clustering/Quadtree$3;,"Lcom/instagram/android/maps/clustering/Quadtree.3;"
    check-cast p1, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .end local p1
    check-cast p2, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/maps/clustering/Quadtree$3;->compare(Lcom/instagram/android/maps/clustering/QuadtreeCluster;Lcom/instagram/android/maps/clustering/QuadtreeCluster;)I

    move-result v0

    return v0
.end method
