.class public Lcom/instagram/android/maps/clustering/QuadtreePoint;
.super Ljava/lang/Object;
.source "QuadtreePoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/instagram/android/maps/clustering/QuadtreePoint;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 6
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 19
    .local p0, this:Lcom/instagram/android/maps/clustering/QuadtreePoint;,"Lcom/instagram/android/maps/clustering/QuadtreePoint<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DDLjava/lang/Comparable;)V

    .line 20
    return-void
.end method

.method public constructor <init>(DDLjava/lang/Comparable;)V
    .locals 0
    .parameter "latitude"
    .parameter "longitude"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDTT;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, this:Lcom/instagram/android/maps/clustering/QuadtreePoint;,"Lcom/instagram/android/maps/clustering/QuadtreePoint<TT;>;"
    .local p5, item:Ljava/lang/Comparable;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLatitude:D

    .line 24
    iput-wide p3, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLongitude:D

    .line 25
    iput-object p5, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mItem:Ljava/lang/Comparable;

    .line 26
    return-void
.end method

.method public static fromGeoPoint(Lcom/google/android/maps/GeoPoint;)Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .locals 7
    .parameter "point"

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 36
    new-instance v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {p0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v5

    invoke-virtual {p0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DD)V

    return-object v0
.end method

.method public static getMeterDistance(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)D
    .locals 9
    .parameter "a"
    .parameter "b"

    .prologue
    .line 60
    const/4 v0, 0x1

    new-array v8, v0, [F

    .line 61
    invoke-virtual {p0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 62
    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getPixelDistance(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/google/android/maps/Projection;)D
    .locals 4
    .parameter "a"
    .parameter "b"
    .parameter "mapViewProjection"

    .prologue
    .line 50
    invoke-virtual {p0, p2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->toPixelPoint(Lcom/google/android/maps/Projection;)Landroid/graphics/Point;

    move-result-object v0

    .line 51
    invoke-virtual {p0, p2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->toPixelPoint(Lcom/google/android/maps/Projection;)Landroid/graphics/Point;

    move-result-object v1

    .line 53
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    .line 54
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    .line 56
    mul-double/2addr v2, v2

    mul-double/2addr v0, v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public compareTo(Lcom/instagram/android/maps/clustering/QuadtreePoint;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 129
    .local p0, this:Lcom/instagram/android/maps/clustering/QuadtreePoint;,"Lcom/instagram/android/maps/clustering/QuadtreePoint<TT;>;"
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mItem:Ljava/lang/Comparable;

    iget-object v1, p1, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mItem:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    .local p0, this:Lcom/instagram/android/maps/clustering/QuadtreePoint;,"Lcom/instagram/android/maps/clustering/QuadtreePoint<TT;>;"
    check-cast p1, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->compareTo(Lcom/instagram/android/maps/clustering/QuadtreePoint;)I

    move-result v0

    return v0
.end method

.method public distanceInDegreesSquared(Lcom/instagram/android/maps/clustering/QuadtreePoint;)D
    .locals 6
    .parameter "other"

    .prologue
    .line 66
    .local p0, this:Lcom/instagram/android/maps/clustering/QuadtreePoint;,"Lcom/instagram/android/maps/clustering/QuadtreePoint<TT;>;"
    iget-wide v0, p1, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLatitude:D

    iget-wide v2, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLatitude:D

    sub-double/2addr v0, v2

    .line 67
    iget-wide v2, p1, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLongitude:D

    iget-wide v4, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLongitude:D

    sub-double/2addr v2, v4

    .line 68
    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getCopy()Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/android/maps/clustering/QuadtreePoint",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    iget-wide v1, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLatitude:D

    iget-wide v3, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLongitude:D

    iget-object v5, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mItem:Ljava/lang/Comparable;

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DDLjava/lang/Comparable;)V

    return-object v0
.end method

.method public getDistanceInPixelsTo(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/google/android/maps/Projection;Landroid/graphics/Point;)D
    .locals 5
    .parameter "other"
    .parameter "mapViewProjection"
    .parameter "optionalCachedPoint"

    .prologue
    .line 73
    .local p0, this:Lcom/instagram/android/maps/clustering/QuadtreePoint;,"Lcom/instagram/android/maps/clustering/QuadtreePoint<TT;>;"
    invoke-virtual {p1, p2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->toPixelPoint(Lcom/google/android/maps/Projection;)Landroid/graphics/Point;

    move-result-object v0

    .line 74
    if-nez p3, :cond_0

    .line 75
    invoke-virtual {p0, p2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->toPixelPoint(Lcom/google/android/maps/Projection;)Landroid/graphics/Point;

    move-result-object p3

    .line 78
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    .line 79
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v3

    int-to-double v3, v0

    .line 80
    mul-double v0, v1, v1

    mul-double v2, v3, v3

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getItem()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mItem:Ljava/lang/Comparable;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLatitude:D

    return-wide v0
.end method

.method public getLatitudeE6()I
    .locals 4

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLatitude:D

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLongitude:D

    return-wide v0
.end method

.method public getLongitudeE6()I
    .locals 4

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLongitude:D

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getScaledCopy(D)Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .locals 3
    .parameter "scalar"

    .prologue
    .line 29
    .local p0, this:Lcom/instagram/android/maps/clustering/QuadtreePoint;,"Lcom/instagram/android/maps/clustering/QuadtreePoint<TT;>;"
    invoke-virtual {p0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getCopy()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    .line 30
    iget-wide v1, v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLatitude:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLatitude:D

    .line 31
    iget-wide v1, v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLongitude:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLongitude:D

    .line 32
    return-object v0
.end method

.method public isEqual(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z
    .locals 4
    .parameter "other"

    .prologue
    .line 88
    .local p0, this:Lcom/instagram/android/maps/clustering/QuadtreePoint;,"Lcom/instagram/android/maps/clustering/QuadtreePoint<TT;>;"
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLatitude:D

    iget-wide v2, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLatitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLongitude:D

    iget-wide v2, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLongitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMoreNorthwestern(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z
    .locals 4
    .parameter "other"

    .prologue
    .line 92
    .local p0, this:Lcom/instagram/android/maps/clustering/QuadtreePoint;,"Lcom/instagram/android/maps/clustering/QuadtreePoint<TT;>;"
    iget-wide v0, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLatitude:D

    iget-wide v2, p1, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLatitude:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLongitude:D

    iget-wide v2, p1, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLongitude:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMoreSoutheastern(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z
    .locals 4
    .parameter "other"

    .prologue
    .line 96
    .local p0, this:Lcom/instagram/android/maps/clustering/QuadtreePoint;,"Lcom/instagram/android/maps/clustering/QuadtreePoint<TT;>;"
    iget-wide v0, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLatitude:D

    iget-wide v2, p1, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLatitude:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLongitude:D

    iget-wide v2, p1, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLongitude:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLatitude(D)V
    .locals 0
    .parameter "mLatitude"

    .prologue
    .line 104
    .local p0, this:Lcom/instagram/android/maps/clustering/QuadtreePoint;,"Lcom/instagram/android/maps/clustering/QuadtreePoint<TT;>;"
    iput-wide p1, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLatitude:D

    .line 105
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .parameter "mLongitude"

    .prologue
    .line 120
    .local p0, this:Lcom/instagram/android/maps/clustering/QuadtreePoint;,"Lcom/instagram/android/maps/clustering/QuadtreePoint<TT;>;"
    iput-wide p1, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLongitude:D

    .line 121
    return-void
.end method

.method public toGeoPoint()Lcom/google/android/maps/GeoPoint;
    .locals 6

    .prologue
    const-wide v4, 0x412e848000000000L

    .line 40
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    iget-wide v1, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLatitude:D

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iget-wide v2, p0, Lcom/instagram/android/maps/clustering/QuadtreePoint;->mLongitude:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method public toPixelPoint(Lcom/google/android/maps/Projection;)Landroid/graphics/Point;
    .locals 2
    .parameter "mapViewProjection"

    .prologue
    .line 44
    .local p0, this:Lcom/instagram/android/maps/clustering/QuadtreePoint;,"Lcom/instagram/android/maps/clustering/QuadtreePoint<TT;>;"
    invoke-virtual {p0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 45
    return-object v0
.end method
