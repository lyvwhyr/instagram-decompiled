.class public Lcom/instagram/android/maps/clustering/Quadtree;
.super Ljava/lang/Object;
.source "Quadtree.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private MAX_NODE_CAPACITY:I

.field private mAllPointsInChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/clustering/QuadtreePoint",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/android/maps/clustering/QuadtreePoint",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/android/maps/clustering/QuadtreePoint",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mNortheast:Lcom/instagram/android/maps/clustering/Quadtree;

.field private mNorthwest:Lcom/instagram/android/maps/clustering/Quadtree;

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/clustering/QuadtreePoint",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

.field private mSoutheast:Lcom/instagram/android/maps/clustering/Quadtree;

.field private mSouthwest:Lcom/instagram/android/maps/clustering/Quadtree;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/instagram/android/maps/clustering/Quadtree;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getGlobalRegion()Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/maps/clustering/Quadtree;-><init>(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)V
    .locals 1
    .parameter "region"

    .prologue
    .line 30
    .local p0, this:Lcom/instagram/android/maps/clustering/Quadtree;,"Lcom/instagram/android/maps/clustering/Quadtree<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->MAX_NODE_CAPACITY:I

    .line 31
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getCopy()Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mPoints:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mAllPointsInChildren:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public static getGlobalQuadtree()Lcom/instagram/android/maps/clustering/Quadtree;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-static {}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getGlobalRegion()Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/maps/clustering/Quadtree;-><init>(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)V

    return-object v0
.end method

.method private subdivide()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000

    .line 536
    new-instance v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    iget-object v1, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getCenter()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getHalfDimension()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v3

    div-double/2addr v3, v10

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getCenter()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getHalfDimension()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v5

    div-double/2addr v5, v10

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DD)V

    .line 537
    new-instance v1, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    iget-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getCenter()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v4}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getHalfDimension()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v4

    div-double/2addr v4, v10

    add-double/2addr v2, v4

    iget-object v4, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v4}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getCenter()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v4

    iget-object v6, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v6}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getHalfDimension()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v6

    div-double/2addr v6, v10

    sub-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DD)V

    .line 538
    new-instance v2, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    iget-object v3, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getCenter()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getHalfDimension()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v5

    div-double/2addr v5, v10

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getCenter()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v5

    iget-object v7, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v7}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getHalfDimension()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v7

    div-double/2addr v7, v10

    sub-double/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DD)V

    .line 539
    new-instance v3, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    iget-object v4, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v4}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getCenter()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v4

    iget-object v6, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v6}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getHalfDimension()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v6

    div-double/2addr v6, v10

    sub-double/2addr v4, v6

    iget-object v6, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v6}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getCenter()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v6

    iget-object v8, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v8}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getHalfDimension()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v8

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DD)V

    .line 541
    iget-object v4, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v4}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getHalfDimension()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v4

    const-wide/high16 v5, 0x3fe0

    invoke-virtual {v4, v5, v6}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getScaledCopy(D)Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v4

    .line 543
    new-instance v5, Lcom/instagram/android/maps/clustering/Quadtree;

    new-instance v6, Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-direct {v6, v0, v4}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;-><init>(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    invoke-direct {v5, v6}, Lcom/instagram/android/maps/clustering/Quadtree;-><init>(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)V

    iput-object v5, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mNorthwest:Lcom/instagram/android/maps/clustering/Quadtree;

    .line 544
    new-instance v0, Lcom/instagram/android/maps/clustering/Quadtree;

    new-instance v5, Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-direct {v5, v1, v4}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;-><init>(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    invoke-direct {v0, v5}, Lcom/instagram/android/maps/clustering/Quadtree;-><init>(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)V

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mNortheast:Lcom/instagram/android/maps/clustering/Quadtree;

    .line 545
    new-instance v0, Lcom/instagram/android/maps/clustering/Quadtree;

    new-instance v1, Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-direct {v1, v2, v4}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;-><init>(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    invoke-direct {v0, v1}, Lcom/instagram/android/maps/clustering/Quadtree;-><init>(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)V

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mSouthwest:Lcom/instagram/android/maps/clustering/Quadtree;

    .line 546
    new-instance v0, Lcom/instagram/android/maps/clustering/Quadtree;

    new-instance v1, Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-direct {v1, v3, v4}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;-><init>(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    invoke-direct {v0, v1}, Lcom/instagram/android/maps/clustering/Quadtree;-><init>(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)V

    iput-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mSoutheast:Lcom/instagram/android/maps/clustering/Quadtree;

    .line 547
    return-void
.end method


# virtual methods
.method public add(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/maps/clustering/QuadtreePoint",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/instagram/android/maps/clustering/Quadtree;,"Lcom/instagram/android/maps/clustering/Quadtree<TT;>;"
    .local p1, point:Lcom/instagram/android/maps/clustering/QuadtreePoint;,"Lcom/instagram/android/maps/clustering/QuadtreePoint<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 42
    iget-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v2, p1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->containsPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mAllPointsInChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    if-nez v2, :cond_2

    .line 50
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getCopy()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 56
    :goto_1
    iget-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    if-nez v2, :cond_3

    .line 57
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getCopy()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 63
    :goto_2
    iget-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/instagram/android/maps/clustering/Quadtree;->MAX_NODE_CAPACITY:I

    if-ge v2, v3, :cond_4

    .line 64
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 65
    goto :goto_0

    .line 52
    :cond_2
    iget-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->setLatitude(D)V

    .line 53
    iget-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->setLongitude(D)V

    goto :goto_1

    .line 59
    :cond_3
    iget-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->setLatitude(D)V

    .line 60
    iget-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->setLongitude(D)V

    goto :goto_2

    .line 68
    :cond_4
    iget-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mNorthwest:Lcom/instagram/android/maps/clustering/Quadtree;

    if-nez v2, :cond_5

    .line 69
    invoke-direct {p0}, Lcom/instagram/android/maps/clustering/Quadtree;->subdivide()V

    .line 72
    :cond_5
    iget-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mNorthwest:Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-virtual {v2, p1}, Lcom/instagram/android/maps/clustering/Quadtree;->add(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 73
    goto/16 :goto_0

    .line 76
    :cond_6
    iget-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mNortheast:Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-virtual {v2, p1}, Lcom/instagram/android/maps/clustering/Quadtree;->add(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    .line 77
    goto/16 :goto_0

    .line 80
    :cond_7
    iget-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mSouthwest:Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-virtual {v2, p1}, Lcom/instagram/android/maps/clustering/Quadtree;->add(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    .line 81
    goto/16 :goto_0

    .line 84
    :cond_8
    iget-object v2, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mSoutheast:Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-virtual {v2, p1}, Lcom/instagram/android/maps/clustering/Quadtree;->add(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v0, v1

    .line 85
    goto/16 :goto_0

    .line 88
    :cond_9
    sget-boolean v1, Lcom/instagram/android/maps/clustering/Quadtree;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public containsPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z
    .locals 1
    .parameter "point"

    .prologue
    .line 554
    .local p0, this:Lcom/instagram/android/maps/clustering/Quadtree;,"Lcom/instagram/android/maps/clustering/Quadtree<TT;>;"
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->containsPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    move-result v0

    return v0
.end method

.method public containsRegion(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Z
    .locals 1
    .parameter "region"

    .prologue
    .line 558
    .local p0, this:Lcom/instagram/android/maps/clustering/Quadtree;,"Lcom/instagram/android/maps/clustering/Quadtree<TT;>;"
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->containsRegion(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Z

    move-result v0

    return v0
.end method

.method public getAllPointsInTree()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/clustering/QuadtreePoint",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mAllPointsInChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClustersUsingLocationNames()Ljava/util/ArrayList;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/clustering/QuadtreeCluster;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    const/16 v18, 0x4

    .line 167
    const/16 v19, 0x61a8

    .line 168
    const/16 v20, 0xfa

    .line 169
    const/16 v21, 0x1f4

    .line 170
    const/16 v22, 0x64

    .line 172
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 173
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 180
    new-instance v26, Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-direct/range {v26 .. v26}, Lcom/instagram/android/maps/clustering/Quadtree;-><init>()V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/instagram/android/maps/clustering/Quadtree;->getAllPointsInTree()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 184
    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getItem()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Lcom/instagram/android/maps/clustering/GeoPhoto;

    .line 186
    invoke-interface {v3}, Lcom/instagram/android/maps/clustering/GeoPhoto;->getLocationName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 188
    invoke-interface {v3}, Lcom/instagram/android/maps/clustering/GeoPhoto;->getLocationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 189
    if-nez v4, :cond_0

    .line 190
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-interface {v3}, Lcom/instagram/android/maps/clustering/GeoPhoto;->getLocationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_0
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_1
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 205
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/ArrayList;

    .line 207
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 209
    new-instance v7, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-direct {v7}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;-><init>()V

    .line 210
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->setIsClusteredAroundLocationName(Z)V

    .line 212
    new-instance v2, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual/range {v17 .. v17}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {v17 .. v17}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v5

    invoke-direct/range {v2 .. v7}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DDLjava/lang/Comparable;)V

    .line 213
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/instagram/android/maps/clustering/Quadtree;->add(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    .line 215
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_4
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 217
    const/4 v3, 0x0

    .line 218
    const/4 v4, 0x1

    new-array v0, v4, [F

    move-object/from16 v16, v0

    .line 220
    move-object/from16 v0, v17

    if-ne v2, v0, :cond_6

    .line 221
    const/4 v3, 0x1

    .line 233
    :cond_5
    :goto_2
    if-eqz v3, :cond_7

    .line 235
    invoke-virtual {v7, v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->addPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    goto :goto_1

    .line 224
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual/range {v17 .. v17}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v14

    invoke-static/range {v8 .. v16}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 225
    const/4 v4, 0x0

    aget v4, v16, v4

    .line 227
    move/from16 v0, v21

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 228
    const/4 v3, 0x1

    goto :goto_2

    .line 239
    :cond_7
    invoke-static {}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getGlobalRegion()Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/instagram/android/maps/clustering/Quadtree;->query(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Ljava/util/ArrayList;

    move-result-object v4

    .line 240
    const/4 v6, 0x0

    .line 242
    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getItem()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Lcom/instagram/android/maps/clustering/GeoPhoto;

    .line 244
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_8
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 246
    invoke-virtual {v4}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getItem()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .line 247
    invoke-virtual {v4}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getItem()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Lcom/instagram/android/maps/clustering/GeoPhoto;

    .line 249
    invoke-interface {v5}, Lcom/instagram/android/maps/clustering/GeoPhoto;->getLocationName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcom/instagram/android/maps/clustering/GeoPhoto;->getLocationName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 251
    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v4}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v4}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v14

    invoke-static/range {v8 .. v16}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 252
    const/4 v5, 0x0

    aget v5, v16, v5

    .line 254
    move/from16 v0, v21

    int-to-float v8, v0

    cmpg-float v5, v5, v8

    if-gez v5, :cond_8

    .line 255
    invoke-virtual {v4, v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->addPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    .line 256
    const/4 v3, 0x1

    .line 264
    :goto_3
    if-nez v3, :cond_4

    .line 266
    new-instance v13, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-direct {v13}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;-><init>()V

    .line 267
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->setIsClusteredAroundLocationName(Z)V

    .line 268
    invoke-virtual {v13, v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->addPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    .line 270
    new-instance v8, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v11

    invoke-direct/range {v8 .. v13}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DDLjava/lang/Comparable;)V

    .line 271
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/instagram/android/maps/clustering/Quadtree;->add(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    goto/16 :goto_1

    .line 281
    :cond_9
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 283
    :goto_4
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 285
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 287
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Lcom/instagram/android/maps/clustering/Quadtree;->query(Lcom/instagram/android/maps/clustering/QuadtreePoint;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 288
    const/16 v16, 0x0

    .line 290
    invoke-virtual {v11}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getItem()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/clustering/GeoPhoto;

    .line 292
    const/4 v14, 0x0

    .line 293
    const/4 v13, 0x0

    .line 294
    const/4 v2, 0x1

    new-array v10, v2, [F

    .line 296
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 298
    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getItem()Ljava/lang/Comparable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .line 299
    invoke-virtual {v11}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v11}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v12}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v12}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 300
    const/4 v2, 0x0

    aget v2, v10, v2

    .line 302
    move/from16 v0, v20

    int-to-float v3, v0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1e

    .line 303
    if-eqz v14, :cond_a

    cmpg-float v3, v2, v13

    if-gez v3, :cond_1e

    :cond_a
    :goto_6
    move v13, v2

    move-object v14, v12

    .line 309
    goto :goto_5

    .line 311
    :cond_b
    if-eqz v14, :cond_1d

    .line 313
    invoke-virtual {v14, v11}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->addPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    .line 314
    const/4 v2, 0x1

    .line 318
    :goto_7
    if-nez v2, :cond_c

    .line 319
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 326
    :cond_d
    invoke-virtual/range {v26 .. v26}, Lcom/instagram/android/maps/clustering/Quadtree;->getAllPointsInTree()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 328
    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getItem()Ljava/lang/Comparable;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .line 330
    invoke-virtual {v11}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->isClusteredAroundLocationName()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 334
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Lcom/instagram/android/maps/clustering/Quadtree;->query(Lcom/instagram/android/maps/clustering/QuadtreePoint;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 336
    const/4 v14, 0x0

    .line 337
    const/4 v13, 0x0

    .line 338
    const/4 v3, 0x1

    new-array v10, v3, [F

    .line 340
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_f
    :goto_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 342
    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getItem()Ljava/lang/Comparable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .line 344
    invoke-virtual {v12}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->isClusteredAroundLocationName()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eq v12, v11, :cond_f

    .line 348
    invoke-virtual {v11}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v11}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v12}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v12}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 349
    const/4 v2, 0x0

    aget v2, v10, v2

    .line 351
    move/from16 v0, v22

    int-to-float v3, v0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1c

    .line 352
    if-eqz v14, :cond_10

    cmpg-float v3, v2, v13

    if-gez v3, :cond_1c

    :cond_10
    :goto_9
    move v13, v2

    move-object v14, v12

    .line 358
    goto :goto_8

    .line 360
    :cond_11
    if-eqz v14, :cond_e

    .line 361
    invoke-virtual {v14}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getPoints()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 362
    invoke-virtual {v11, v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->addPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    .line 363
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->setIsClusteredAroundLocationName(Z)V

    goto :goto_a

    .line 369
    :cond_12
    invoke-virtual/range {v26 .. v26}, Lcom/instagram/android/maps/clustering/Quadtree;->getAllPointsInTree()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 371
    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getItem()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .line 373
    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->isClusteredAroundLocationName()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 374
    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getPoints()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-lt v4, v0, :cond_14

    .line 375
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 377
    :cond_14
    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getPoints()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    .line 383
    :cond_15
    new-instance v2, Lcom/instagram/android/maps/clustering/Quadtree$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/instagram/android/maps/clustering/Quadtree$2;-><init>(Lcom/instagram/android/maps/clustering/Quadtree;)V

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v3, v15

    .line 396
    :goto_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1a

    .line 398
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 399
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 401
    const/4 v2, 0x1

    new-array v10, v2, [F

    .line 403
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 404
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_16
    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 408
    if-eq v11, v12, :cond_16

    .line 412
    invoke-virtual {v11}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v11}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v12}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v12}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 413
    const/4 v2, 0x0

    aget v2, v10, v2

    .line 415
    move/from16 v0, v19

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_17

    .line 416
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 418
    :cond_17
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 422
    :cond_18
    new-instance v2, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-direct {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;-><init>()V

    .line 424
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_19

    .line 426
    invoke-virtual {v2, v14}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->addPoints(Ljava/util/List;)V

    .line 430
    :cond_19
    invoke-virtual {v2, v12}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->addPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    .line 431
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v13

    .line 434
    goto :goto_c

    .line 436
    :cond_1a
    new-instance v2, Lcom/instagram/android/maps/clustering/Quadtree$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/instagram/android/maps/clustering/Quadtree$3;-><init>(Lcom/instagram/android/maps/clustering/Quadtree;)V

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 449
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 451
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .line 452
    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->sort()V

    goto :goto_e

    .line 455
    :cond_1b
    return-object v24

    :cond_1c
    move v2, v13

    move-object v12, v14

    goto/16 :goto_9

    :cond_1d
    move/from16 v2, v16

    goto/16 :goto_7

    :cond_1e
    move v2, v13

    move-object v12, v14

    goto/16 :goto_6

    :cond_1f
    move v3, v6

    goto/16 :goto_3
.end method

.method public getClustersUsingPixelDistance(Lcom/instagram/android/maps/clustering/QuadtreeRegion;ILcom/google/android/maps/Projection;)Ljava/util/ArrayList;
    .locals 15
    .parameter "region"
    .parameter "maxPixelDistance"
    .parameter "mapViewProjection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/maps/clustering/QuadtreeRegion;",
            "I",
            "Lcom/google/android/maps/Projection;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/clustering/QuadtreeCluster;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    .local p0, this:Lcom/instagram/android/maps/clustering/Quadtree;,"Lcom/instagram/android/maps/clustering/Quadtree<TT;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 464
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/maps/clustering/Quadtree;->query(Lcom/instagram/android/maps/clustering/QuadtreeRegion;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 466
    const-string v2, "PhotoMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clustering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " points"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    .line 468
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 470
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 471
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 473
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->toPixelPoint(Lcom/google/android/maps/Projection;)Landroid/graphics/Point;

    move-result-object v11

    .line 475
    const/4 v9, 0x0

    .line 477
    const/4 v8, 0x0

    .line 478
    const-wide/16 v4, 0x0

    .line 480
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .line 481
    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->toPixelPoint(Lcom/google/android/maps/Projection;)Landroid/graphics/Point;

    move-result-object v6

    .line 483
    iget v7, v11, Landroid/graphics/Point;->x:I

    iget v13, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v13

    int-to-double v13, v7

    .line 484
    iget v7, v11, Landroid/graphics/Point;->y:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v6, v7, v6

    int-to-double v6, v6

    .line 486
    mul-double/2addr v13, v13

    mul-double/2addr v6, v6

    add-double/2addr v6, v13

    .line 488
    move/from16 v0, p2

    int-to-double v13, v0

    cmpg-double v13, v6, v13

    if-gez v13, :cond_7

    .line 489
    if-eqz v8, :cond_0

    cmpg-double v13, v6, v4

    if-gez v13, :cond_7

    :cond_0
    move-wide v4, v6

    :goto_2
    move-object v8, v2

    .line 495
    goto :goto_1

    .line 497
    :cond_1
    if-eqz v8, :cond_6

    .line 498
    invoke-virtual {v8, v1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->addPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    .line 499
    const/4 v2, 0x1

    .line 502
    :goto_3
    if-nez v2, :cond_5

    .line 504
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 505
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 507
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 509
    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v11}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getDistanceInPixelsTo(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/google/android/maps/Projection;Landroid/graphics/Point;)D

    move-result-wide v6

    .line 510
    move/from16 v0, p2

    int-to-double v8, v0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 511
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 513
    :cond_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 518
    :cond_3
    new-instance v2, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-direct {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;-><init>()V

    .line 520
    invoke-virtual {v2, v1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->addPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    .line 521
    invoke-virtual {v2, v5}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->addPoints(Ljava/util/List;)V

    .line 523
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v4

    :goto_5
    move-object v3, v1

    .line 529
    goto/16 :goto_0

    .line 531
    :cond_4
    return-object v10

    :cond_5
    move-object v1, v3

    goto :goto_5

    :cond_6
    move v2, v9

    goto :goto_3

    :cond_7
    move-object v2, v8

    goto :goto_2
.end method

.method public getMaxGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/android/maps/clustering/QuadtreePoint",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mMaxGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    return-object v0
.end method

.method public getMinGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/android/maps/clustering/QuadtreePoint",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mMinGeoPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    return-object v0
.end method

.method public getNumPointsInTree()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mAllPointsInChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRegion()Lcom/instagram/android/maps/clustering/QuadtreeRegion;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    return-object v0
.end method

.method public intersectsRegion(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Z
    .locals 1
    .parameter "region"

    .prologue
    .line 562
    .local p0, this:Lcom/instagram/android/maps/clustering/Quadtree;,"Lcom/instagram/android/maps/clustering/Quadtree<TT;>;"
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->intersectsRegion(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Z

    move-result v0

    return v0
.end method

.method public query(Lcom/instagram/android/maps/clustering/QuadtreePoint;I)Ljava/util/ArrayList;
    .locals 13
    .parameter "center"
    .parameter "distanceInMetersToBoundary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/maps/clustering/QuadtreePoint;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/clustering/QuadtreePoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/instagram/android/maps/clustering/Quadtree;,"Lcom/instagram/android/maps/clustering/Quadtree<TT;>;"
    const-wide v0, 0x3f647ae147ae147bL

    .line 109
    const/4 v2, 0x1

    new-array v8, v2, [F

    move-wide v9, v0

    move-wide v11, v0

    .line 113
    :goto_0
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v4

    add-double/2addr v4, v11

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v6

    add-double/2addr v6, v9

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 114
    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-double v0, v0

    .line 115
    int-to-double v2, p2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 124
    new-instance v0, Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    new-instance v1, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-direct {v1, v11, v12, v9, v10}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DD)V

    invoke-direct {v0, p1, v1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;-><init>(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/clustering/Quadtree;->query(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    const-wide/high16 v0, 0x4000

    mul-double v2, v11, v0

    .line 120
    const-wide/high16 v0, 0x4000

    mul-double/2addr v0, v9

    move-wide v9, v0

    move-wide v11, v2

    .line 122
    goto :goto_0
.end method

.method public query(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Ljava/util/ArrayList;
    .locals 1
    .parameter "queryRegion"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/maps/clustering/QuadtreeRegion;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/clustering/QuadtreePoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Lcom/instagram/android/maps/clustering/Quadtree;,"Lcom/instagram/android/maps/clustering/Quadtree<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/android/maps/clustering/Quadtree;->query(Lcom/instagram/android/maps/clustering/QuadtreeRegion;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public query(Lcom/instagram/android/maps/clustering/QuadtreeRegion;Z)Ljava/util/ArrayList;
    .locals 4
    .parameter "queryRegion"
    .parameter "sortResultByValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/maps/clustering/QuadtreeRegion;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/clustering/QuadtreePoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Lcom/instagram/android/maps/clustering/Quadtree;,"Lcom/instagram/android/maps/clustering/Quadtree<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {p1, v0}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->containsRegion(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mAllPointsInChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 152
    new-instance v0, Lcom/instagram/android/maps/clustering/Quadtree$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/clustering/Quadtree$1;-><init>(Lcom/instagram/android/maps/clustering/Quadtree;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 160
    :cond_1
    return-object v1

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->intersectsRegion(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 137
    invoke-virtual {p1, v0}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->containsPoint(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 138
    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getCopy()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mNorthwest:Lcom/instagram/android/maps/clustering/Quadtree;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mNorthwest:Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/clustering/Quadtree;->query(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 144
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mNortheast:Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/clustering/Quadtree;->query(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mSouthwest:Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/clustering/Quadtree;->query(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    iget-object v0, p0, Lcom/instagram/android/maps/clustering/Quadtree;->mSoutheast:Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/clustering/Quadtree;->query(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
