.class public Lcom/instagram/android/maps/clustering/QuadtreeCluster;
.super Ljava/lang/Object;
.source "QuadtreeCluster.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/instagram/android/maps/clustering/QuadtreeCluster;",
        ">;"
    }
.end annotation


# instance fields
.field private mCachedLocationName:Ljava/lang/String;

.field private mIsClusteredAroundLocationName:Z

.field private mIsSorted:Z

.field private mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

.field private mMaxValuePoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

.field private mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/clustering/QuadtreePoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mCachedLocationName:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mPoints:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public addPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)V
    .locals 5
    .parameter "point"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getCopy()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    if-nez v0, :cond_2

    .line 54
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getCopy()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 60
    :goto_1
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMaxValuePoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    if-nez v0, :cond_3

    .line 61
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getCopy()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMaxValuePoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 66
    :cond_0
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mIsSorted:Z

    .line 68
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->setLatitude(D)V

    .line 50
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->setLongitude(D)V

    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->setLatitude(D)V

    .line 57
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->setLongitude(D)V

    goto :goto_1

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMaxValuePoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {p1, v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->compareTo(Lcom/instagram/android/maps/clustering/QuadtreePoint;)I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getCopy()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMaxValuePoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    goto :goto_2
.end method

.method public addPoints(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/maps/clustering/QuadtreePoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, points:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/maps/clustering/QuadtreePoint;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 39
    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->addPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/instagram/android/maps/clustering/QuadtreeCluster;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 119
    const/4 v0, -0x1

    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->compareTo(Lcom/instagram/android/maps/clustering/QuadtreeCluster;)I

    move-result v0

    return v0
.end method

.method public getCenter()Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMaxValuePoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    return-object v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 109
    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getItem()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_0
    return-object v1
.end method

.method public getLocationNameForClusterOfGeoMediaPoints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->isClusteredAroundLocationName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mCachedLocationName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/model/GeoMedia;->getLocatioNameForPoints(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mCachedLocationName:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mCachedLocationName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mCachedLocationName:Ljava/lang/String;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mCachedLocationName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mCachedLocationName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mCachedLocationName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMaxGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    return-object v0
.end method

.method public getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMaxValuePoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    return-object v0
.end method

.method public getMinGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    return-object v0
.end method

.method public getPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/clustering/QuadtreePoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPointsOfType()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/clustering/QuadtreePoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isClusteredAroundLocationName()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mIsClusteredAroundLocationName:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    iput-object v1, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMaxValuePoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 32
    iput-object v1, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 33
    iput-object v1, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mIsSorted:Z

    .line 35
    return-void
.end method

.method public setIsClusteredAroundLocationName(Z)V
    .locals 0
    .parameter "isClusteredAroundLocationName"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mIsClusteredAroundLocationName:Z

    .line 131
    return-void
.end method

.method public sort()V
    .locals 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mIsSorted:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mPoints:Ljava/util/ArrayList;

    new-instance v1, Lcom/instagram/android/maps/clustering/QuadtreeCluster$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/clustering/QuadtreeCluster$1;-><init>(Lcom/instagram/android/maps/clustering/QuadtreeCluster;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->mIsSorted:Z

    .line 80
    :cond_0
    return-void
.end method
