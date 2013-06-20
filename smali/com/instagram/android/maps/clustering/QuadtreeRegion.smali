.class public Lcom/instagram/android/maps/clustering/QuadtreeRegion;
.super Ljava/lang/Object;
.source "QuadtreeRegion.java"


# instance fields
.field private mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

.field private mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

.field private mNorthwestPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

.field private mSoutheastPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;


# direct methods
.method public constructor <init>(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)V
    .locals 1
    .parameter "center"
    .parameter "halfDimension"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getCopy()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 17
    invoke-virtual {p2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getCopy()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 18
    return-void
.end method

.method public static fromMapViewGeometry(Lcom/google/android/maps/GeoPoint;II)Lcom/instagram/android/maps/clustering/QuadtreeRegion;
    .locals 10
    .parameter "mapCenter"
    .parameter "latitudeSpan"
    .parameter "longitudeSpan"

    .prologue
    const-wide v8, 0x412e848000000000L

    const-wide/high16 v6, 0x4000

    .line 26
    invoke-static {p0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->fromGeoPoint(Lcom/google/android/maps/GeoPoint;)Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    int-to-double v2, p1

    div-double/2addr v2, v8

    div-double/2addr v2, v6

    int-to-double v4, p2

    div-double/2addr v4, v8

    div-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DD)V

    .line 28
    new-instance v2, Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-direct {v2, v0, v1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;-><init>(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    return-object v2
.end method

.method public static getGlobalRegion()Lcom/instagram/android/maps/clustering/QuadtreeRegion;
    .locals 6

    .prologue
    const-wide/16 v1, 0x0

    .line 77
    new-instance v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DD)V

    .line 78
    new-instance v1, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    const-wide v2, 0x4056800000000000L

    const-wide v4, 0x4066800000000000L

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DD)V

    .line 79
    new-instance v2, Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-direct {v2, v0, v1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;-><init>(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    return-object v2
.end method


# virtual methods
.method public containsPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z
    .locals 9
    .parameter "point"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v3

    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v5

    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v7

    sub-double/2addr v5, v7

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v3

    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v5

    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v7

    add-double/2addr v5, v7

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_0

    move v0, v1

    .line 42
    :goto_0
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v5

    iget-object v7, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v7}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v7

    sub-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_1

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v5

    iget-object v7, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v7}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v7

    add-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_1

    move v3, v1

    .line 43
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 41
    goto :goto_0

    :cond_1
    move v3, v2

    .line 42
    goto :goto_1

    :cond_2
    move v1, v2

    .line 43
    goto :goto_2
.end method

.method public containsRegion(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Z
    .locals 1
    .parameter "region"

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getNorthwestPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->containsPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getSoutheastPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->containsPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCenter()Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    return-object v0
.end method

.method public getCopy()Lcom/instagram/android/maps/clustering/QuadtreeRegion;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    iget-object v1, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    iget-object v2, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;-><init>(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    return-object v0
.end method

.method public getHalfDimension()Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    return-object v0
.end method

.method public getNortheastPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .locals 7

    .prologue
    .line 58
    new-instance v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    iget-object v1, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v3

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DD)V

    return-object v0
.end method

.method public getNorthwestPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .locals 7

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mNorthwestPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    iget-object v1, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v3

    sub-double/2addr v1, v3

    iget-object v3, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DD)V

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mNorthwestPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mNorthwestPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    return-object v0
.end method

.method public getScaledCopy(D)Lcom/instagram/android/maps/clustering/QuadtreeRegion;
    .locals 3
    .parameter "scalar"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getScaledCopy(D)Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    iget-object v2, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-direct {v1, v2, v0}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;-><init>(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    return-object v1
.end method

.method public getSoutheastPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .locals 7

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mSoutheastPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    iget-object v1, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v3

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DD)V

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mSoutheastPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mSoutheastPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    return-object v0
.end method

.method public getSouthwestPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .locals 7

    .prologue
    .line 54
    new-instance v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    iget-object v1, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v3

    sub-double/2addr v1, v3

    iget-object v3, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DD)V

    return-object v0
.end method

.method public intersectsRegion(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Z
    .locals 4
    .parameter "region"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getNorthwestPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getSoutheastPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getSoutheastPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getNorthwestPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getNorthwestPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getSoutheastPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getSoutheastPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getNorthwestPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Z
    .locals 2
    .parameter "region"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    iget-object v1, p1, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->isEqual(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    iget-object v1, p1, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->isEqual(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobalRegion()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mCenter:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->mHalfDimension:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
