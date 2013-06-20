.class public Lcom/instagram/android/maps/ui/PhotoOverlay;
.super Lcom/google/android/maps/Overlay;
.source "PhotoOverlay.java"


# static fields
.field public static TOUCH_LOCK:Z

.field private static mManyPileBitmap:Landroid/graphics/Bitmap;

.field private static mPileBitmap:Landroid/graphics/Bitmap;

.field private static mTwoPileBitmap:Landroid/graphics/Bitmap;


# instance fields
.field ANIMATION_TIME:D

.field public closestPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

.field public lastMatchingTimestamp:J

.field private mAnimationRemoved:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBubbleEditCountCache:I

.field private mCluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

.field private mContext:Landroid/content/Context;

.field private mFinalPoint:Landroid/graphics/Point;

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mHide:Z

.field private mImageView:Lcom/instagram/android/mediacache/IgImageView;

.field private mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

.field private mNinepatch:Landroid/graphics/drawable/NinePatchDrawable;

.field private mOnDoubleTapListener:Lcom/instagram/android/maps/ui/events/OnDoubleTapListener;

.field private mOnTapListener:Lcom/instagram/android/maps/ui/events/OnTapListener;

.field mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mPileBitmap:Landroid/graphics/Bitmap;

    .line 52
    sput-object v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mTwoPileBitmap:Landroid/graphics/Bitmap;

    .line 53
    sput-object v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mManyPileBitmap:Landroid/graphics/Bitmap;

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->TOUCH_LOCK:Z

    return-void
.end method

.method public constructor <init>(Lcom/instagram/android/maps/clustering/QuadtreeCluster;Lcom/instagram/android/maps/ui/IgMapsView;Landroid/content/Context;)V
    .locals 6
    .parameter "cluster"
    .parameter "mapView"
    .parameter "context"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    .line 42
    iput-wide v4, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->lastMatchingTimestamp:J

    .line 44
    const-wide/high16 v0, 0x4079

    iput-wide v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->ANIMATION_TIME:D

    .line 46
    iput-wide v4, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mStartTime:J

    .line 48
    iput-object v2, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->closestPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 55
    iput-object v2, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mNinepatch:Landroid/graphics/drawable/NinePatchDrawable;

    .line 57
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/instagram/android/maps/ui/PhotoOverlay$DoubleTapGestureDetector;

    invoke-direct {v1, p0, v2}, Lcom/instagram/android/maps/ui/PhotoOverlay$DoubleTapGestureDetector;-><init>(Lcom/instagram/android/maps/ui/PhotoOverlay;Lcom/instagram/android/maps/ui/PhotoOverlay$1;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    .line 59
    iput-boolean v3, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mHide:Z

    .line 60
    iput-boolean v3, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mAnimationRemoved:Z

    .line 67
    iput-object p3, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    .line 69
    new-instance v0, Lcom/instagram/android/widget/ConstrainedImageView;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/ConstrainedImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mImageView:Lcom/instagram/android/mediacache/IgImageView;

    .line 70
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mImageView:Lcom/instagram/android/mediacache/IgImageView;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->map_photo_overlay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mImageView:Lcom/instagram/android/mediacache/IgImageView;

    new-instance v1, Lcom/instagram/android/maps/ui/PhotoOverlay$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/PhotoOverlay$1;-><init>(Lcom/instagram/android/maps/ui/PhotoOverlay;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->setOnLoadListener(Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->setCluster(Lcom/instagram/android/maps/clustering/QuadtreeCluster;)V

    .line 79
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getBubbleEditCount()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mBubbleEditCountCache:I

    .line 80
    return-void
.end method

.method static synthetic access$102(Lcom/instagram/android/maps/ui/PhotoOverlay;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/instagram/android/maps/ui/PhotoOverlay;)Lcom/instagram/android/maps/ui/IgMapsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/maps/ui/PhotoOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->checkLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/instagram/android/maps/ui/PhotoOverlay;)Lcom/instagram/android/maps/ui/events/OnTapListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mOnTapListener:Lcom/instagram/android/maps/ui/events/OnTapListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/maps/ui/PhotoOverlay;)Lcom/instagram/android/maps/clustering/QuadtreeCluster;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mCluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    return-object v0
.end method

.method static synthetic access$600(Lcom/instagram/android/maps/ui/PhotoOverlay;)Lcom/instagram/android/maps/ui/events/OnDoubleTapListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mOnDoubleTapListener:Lcom/instagram/android/maps/ui/events/OnDoubleTapListener;

    return-object v0
.end method

.method private declared-synchronized checkLock()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 478
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/instagram/android/maps/ui/PhotoOverlay;->TOUCH_LOCK:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 491
    :goto_0
    monitor-exit p0

    return v0

    .line 482
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->TOUCH_LOCK:Z

    .line 484
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/ui/PhotoOverlay$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/PhotoOverlay$2;-><init>(Lcom/instagram/android/maps/ui/PhotoOverlay;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    const/4 v0, 0x0

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private geoPointFromScreenCoords(IILcom/google/android/maps/MapView;)Lcom/google/android/maps/GeoPoint;
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "vw"

    .prologue
    const/4 v1, 0x0

    .line 421
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p3}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 422
    :cond_0
    const/4 v0, 0x0

    .line 432
    :goto_0
    return-object v0

    .line 425
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    .line 426
    invoke-interface {v0, v1, v1}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    .line 427
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 429
    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 431
    invoke-interface {v0, p1, p2}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    goto :goto_0
.end method

.method private getBubbleCount()I
    .locals 1

    .prologue
    .line 303
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mBubbleEditCountCache:I

    .line 306
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mCluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method private getBubbleEditCount()I
    .locals 2

    .prologue
    .line 311
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mCluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->photosToBePublished(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDrawRect(Landroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 6
    .parameter "point"

    .prologue
    .line 323
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getSquareSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getSquareSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getSquareSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getSquareSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getPileRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .parameter "r"

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getPileRectSize()I

    move-result v0

    .line 319
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private getPileRectSize()I
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/e;->maps_pile_rect_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private performPixelOffset(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .parameter "point"

    .prologue
    const/4 v1, 0x0

    .line 461
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 462
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 464
    iget-object v2, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v2}, Lcom/instagram/android/maps/ui/IgMapsView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 465
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 466
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 467
    return-object p1
.end method

.method private pointFromGeoPoint(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Landroid/graphics/Point;
    .locals 4
    .parameter "gp"
    .parameter "vw"

    .prologue
    const/4 v2, 0x0

    .line 443
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 444
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    .line 445
    invoke-interface {v1, p1, v0}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 447
    invoke-interface {v1, v2, v2}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    .line 448
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 450
    invoke-interface {v1, v2, v3}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 451
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 452
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 453
    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_1

    .line 455
    :cond_0
    const/4 v0, 0x0

    .line 457
    :cond_1
    return-object v0
.end method

.method public static declared-synchronized removeLock()V
    .locals 2

    .prologue
    .line 495
    const-class v0, Lcom/instagram/android/maps/ui/PhotoOverlay;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/instagram/android/maps/ui/PhotoOverlay;->TOUCH_LOCK:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    monitor-exit v0

    return-void

    .line 495
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 18
    .parameter "canvas"
    .parameter "mapV"
    .parameter "shadow"

    .prologue
    .line 154
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mHide:Z

    if-eqz v1, :cond_0

    .line 155
    invoke-super/range {p0 .. p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 300
    :goto_0
    return-void

    .line 159
    :cond_0
    if-eqz p3, :cond_8

    .line 161
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v4

    .line 163
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mFinalPoint:Landroid/graphics/Point;

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mCluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mFinalPoint:Landroid/graphics/Point;

    invoke-interface {v4, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 166
    const/4 v3, 0x0

    .line 167
    const-wide/16 v1, 0x0

    .line 169
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mStartTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_9

    .line 170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v4}, Lcom/instagram/android/maps/ui/IgMapsView;->addAnimatingObject()V

    .line 171
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mStartTime:J

    .line 192
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/e;->maps_font_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getBubbleCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 195
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 196
    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 197
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 198
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 199
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/facebook/d;->white:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    .line 202
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/facebook/e;->maps_bubble_padding_x:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 203
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/facebook/e;->maps_bubble_padding_y:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 204
    mul-int/lit8 v4, v4, 0x2

    .line 205
    const/4 v10, 0x0

    .line 206
    const/4 v11, 0x0

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mFinalPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getDrawRect(Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v12

    .line 209
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mFinalPoint:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p0 .. p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getSquareSize()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    add-int v15, v7, v8

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    sub-int/2addr v14, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mFinalPoint:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getSquareSize()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    div-int/lit8 v16, v4, 0x2

    sub-int v15, v15, v16

    add-int/2addr v15, v10

    div-int/lit8 v16, v9, 0x2

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mFinalPoint:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getSquareSize()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v7, v7, v16

    sub-int/2addr v7, v11

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mFinalPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getSquareSize()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v8, v11

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v8

    add-int/2addr v4, v10

    div-int/lit8 v8, v9, 0x2

    add-int/2addr v4, v8

    invoke-direct {v13, v14, v15, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 214
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 215
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v4, v7

    .line 217
    iget v7, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v7

    iput v4, v13, Landroid/graphics/Rect;->right:I

    .line 220
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/facebook/e;->maps_bubble_rect_offset_left:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 221
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/facebook/e;->maps_bubble_rect_offset_top:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 223
    new-instance v8, Landroid/graphics/Rect;

    iget v9, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v9

    iget v9, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v9

    iget v9, v13, Landroid/graphics/Rect;->right:I

    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v8, v4, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 225
    if-eqz v3, :cond_3

    .line 226
    iget v4, v12, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v7

    iput v4, v12, Landroid/graphics/Rect;->left:I

    .line 227
    iget v4, v12, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v7

    iput v4, v12, Landroid/graphics/Rect;->right:I

    .line 228
    iget v4, v12, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v7

    iput v4, v12, Landroid/graphics/Rect;->top:I

    .line 229
    iget v4, v12, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v7

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    .line 231
    iget v4, v13, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v7

    iput v4, v13, Landroid/graphics/Rect;->left:I

    .line 232
    iget v4, v13, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v7

    iput v4, v13, Landroid/graphics/Rect;->right:I

    .line 233
    iget v4, v13, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v7

    iput v4, v13, Landroid/graphics/Rect;->top:I

    .line 234
    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v4

    iput v3, v13, Landroid/graphics/Rect;->bottom:I

    .line 237
    :cond_3
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 238
    const-wide v9, 0x406fe00000000000L

    mul-double/2addr v1, v9

    double-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 239
    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mNinepatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v1, :cond_4

    .line 242
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 243
    invoke-direct/range {p0 .. p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getBubbleCount()I

    move-result v1

    if-lez v1, :cond_b

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->map_counter_bubble_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mNinepatch:Landroid/graphics/drawable/NinePatchDrawable;

    .line 251
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->map_photo_overlay_1:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/instagram/android/maps/ui/PhotoOverlay;->mPileBitmap:Landroid/graphics/Bitmap;

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->map_photo_overlay_2:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/instagram/android/maps/ui/PhotoOverlay;->mTwoPileBitmap:Landroid/graphics/Bitmap;

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->map_photo_overlay_3:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/instagram/android/maps/ui/PhotoOverlay;->mManyPileBitmap:Landroid/graphics/Bitmap;

    .line 256
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getCluster()Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 258
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getPileRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/facebook/e;->maps_pile_offset_size:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 262
    const/4 v7, 0x1

    if-ne v1, v7, :cond_d

    .line 263
    sget-object v1, Lcom/instagram/android/maps/ui/PhotoOverlay;->mPileBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 276
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_f

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 284
    :goto_4
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getBubbleCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_8

    .line 285
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mNinepatch:Landroid/graphics/drawable/NinePatchDrawable;

    iget v2, v13, Landroid/graphics/Rect;->left:I

    iget v4, v13, Landroid/graphics/Rect;->top:I

    iget v7, v13, Landroid/graphics/Rect;->right:I

    iget v9, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v4, v7, v9}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mNinepatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mNinepatch:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 289
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 290
    iget v1, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/e;->maps_pile_text_left_offset_double_digits:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v8, Landroid/graphics/Rect;->left:I

    .line 293
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/e;->maps_pile_text_top_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 294
    iget v2, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v2, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 298
    :cond_8
    invoke-super/range {p0 .. p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    goto/16 :goto_0

    .line 173
    :cond_9
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mStartTime:J

    sub-long/2addr v1, v5

    .line 174
    long-to-double v5, v1

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->ANIMATION_TIME:D

    cmpg-double v5, v5, v7

    if-gez v5, :cond_a

    .line 175
    long-to-double v1, v1

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->ANIMATION_TIME:D

    div-double/2addr v1, v5

    .line 177
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->closestPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    if-eqz v5, :cond_1

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->closestPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    .line 179
    new-instance v3, Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mFinalPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff0

    sub-double/2addr v7, v1

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mFinalPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v6

    int-to-double v6, v4

    const-wide/high16 v8, 0x3ff0

    sub-double/2addr v8, v1

    mul-double/2addr v6, v8

    double-to-int v4, v6

    invoke-direct {v3, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    goto/16 :goto_1

    .line 184
    :cond_a
    const-wide/high16 v1, 0x3ff0

    .line 185
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mAnimationRemoved:Z

    if-nez v4, :cond_1

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v4}, Lcom/instagram/android/maps/ui/IgMapsView;->removeAnimatingObject()V

    .line 187
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mAnimationRemoved:Z

    goto/16 :goto_1

    .line 246
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->map_counter_bubble_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mNinepatch:Landroid/graphics/drawable/NinePatchDrawable;

    goto/16 :goto_2

    .line 249
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->map_counter_bubble_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mNinepatch:Landroid/graphics/drawable/NinePatchDrawable;

    goto/16 :goto_2

    .line 264
    :cond_d
    const/4 v7, 0x1

    if-le v1, v7, :cond_5

    .line 265
    iget v7, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v4

    iput v7, v2, Landroid/graphics/Rect;->top:I

    .line 266
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v4

    iput v7, v2, Landroid/graphics/Rect;->left:I

    .line 267
    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v4

    iput v7, v2, Landroid/graphics/Rect;->right:I

    .line 268
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v7

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 269
    const/4 v4, 0x2

    if-ne v1, v4, :cond_e

    .line 270
    sget-object v1, Lcom/instagram/android/maps/ui/PhotoOverlay;->mTwoPileBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 272
    :cond_e
    sget-object v1, Lcom/instagram/android/maps/ui/PhotoOverlay;->mManyPileBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 279
    :cond_f
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 280
    const v2, -0x555556

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_4
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 472
    const-string v0, "PhotoOverlay"

    const-string v1, "finalized!"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 474
    return-void
.end method

.method public getCluster()Lcom/instagram/android/maps/clustering/QuadtreeCluster;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mCluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    return-object v0
.end method

.method public getImageView()Lcom/instagram/android/mediacache/IgImageView;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mImageView:Lcom/instagram/android/mediacache/IgImageView;

    return-object v0
.end method

.method public getOnDoubleTapListener()Lcom/instagram/android/maps/ui/events/OnDoubleTapListener;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mOnDoubleTapListener:Lcom/instagram/android/maps/ui/events/OnDoubleTapListener;

    return-object v0
.end method

.method public getOnTapListener()Lcom/instagram/android/maps/ui/events/OnTapListener;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mOnTapListener:Lcom/instagram/android/maps/ui/events/OnTapListener;

    return-object v0
.end method

.method public getSquareSize()I
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/e;->maps_square_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTopLeftPixelPoint()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    .line 404
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 405
    iget-object v2, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mCluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 406
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getDrawRect(Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v0

    .line 407
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 408
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 409
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 410
    return-object v1
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mHide:Z

    .line 342
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->invalidate()V

    .line 343
    return-void
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .locals 1
    .parameter "geoPoint"
    .parameter "mapView"

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/Overlay;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 7
    .parameter "motionEvent"
    .parameter "mapView"

    .prologue
    const/4 v0, 0x0

    .line 112
    sget-boolean v1, Lcom/instagram/android/maps/ui/PhotoOverlay;->TOUCH_LOCK:Z

    if-nez v1, :cond_0

    sget v1, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->NUM_ANIMATING_ITEMS:I

    if-lez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/IgMapsView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    .line 117
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 119
    iget-object v3, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mCluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 122
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getSquareSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getSquareSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getSquareSize()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getSquareSize()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    invoke-direct {v1, v3, v4, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/IgMapsView;->fireOnOverlayTouched()V

    .line 125
    iget-object v1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1, p2}, Lcom/google/android/maps/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->updateCounts()V

    .line 357
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->invalidate()V

    .line 358
    return-void
.end method

.method public setCluster(Lcom/instagram/android/maps/clustering/QuadtreeCluster;)V
    .locals 2
    .parameter "mCluster"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mCluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .line 336
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getItem()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/clustering/GeoPhoto;

    .line 337
    iget-object v1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mImageView:Lcom/instagram/android/mediacache/IgImageView;

    invoke-interface {v0}, Lcom/instagram/android/maps/clustering/GeoPhoto;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public setOnDoubleTapListener(Lcom/instagram/android/maps/ui/events/OnDoubleTapListener;)V
    .locals 0
    .parameter "onDoubleTapListener"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mOnDoubleTapListener:Lcom/instagram/android/maps/ui/events/OnDoubleTapListener;

    .line 149
    return-void
.end method

.method public setOnTapListener(Lcom/instagram/android/maps/ui/events/OnTapListener;)V
    .locals 0
    .parameter "onTapListener"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mOnTapListener:Lcom/instagram/android/maps/ui/events/OnTapListener;

    .line 145
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mHide:Z

    .line 347
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->invalidate()V

    .line 348
    return-void
.end method

.method public updateCounts()V
    .locals 1

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getBubbleEditCount()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mBubbleEditCountCache:I

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay;->mNinepatch:Landroid/graphics/drawable/NinePatchDrawable;

    .line 353
    return-void
.end method
