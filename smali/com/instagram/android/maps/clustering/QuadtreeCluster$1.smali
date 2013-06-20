.class Lcom/instagram/android/maps/clustering/QuadtreeCluster$1;
.super Ljava/lang/Object;
.source "QuadtreeCluster.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/instagram/android/maps/clustering/QuadtreePoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/clustering/QuadtreeCluster;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/clustering/QuadtreeCluster;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster$1;->this$0:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 75
    invoke-virtual {p1, p2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->compareTo(Lcom/instagram/android/maps/clustering/QuadtreePoint;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    check-cast p1, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .end local p1
    check-cast p2, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster$1;->compare(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)I

    move-result v0

    return v0
.end method
