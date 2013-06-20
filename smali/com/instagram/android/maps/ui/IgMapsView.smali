.class public Lcom/instagram/android/maps/ui/IgMapsView;
.super Lcom/google/android/maps/MapView;
.source "IgMapsView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IgMapsView"

.field public static final MAX_CACHE_SIZE:I = 0xc8

.field private static final TIME_DOUBLE_TAP:J = 0xfaL

.field private static final TIME_INITIAL:J = -0x1L


# instance fields
.field private lastTouchTime:J

.field private mAnimatingObject:I

.field private mDetachWindowListener:Lcom/instagram/android/maps/ui/IgMapsView$DetachWindowListener;

.field private mHandler:Landroid/os/Handler;

.field private mHashtable:Ljava/util/Hashtable;

.field private mListener:Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;

.field private mTimer:Ljava/util/Timer;

.field private oldCenterGeoPoint:Lcom/google/android/maps/GeoPoint;

.field private oldZoomLevel:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->oldZoomLevel:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mAnimatingObject:I

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->lastTouchTime:J

    .line 46
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->init()V

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attributeSet"
    .parameter "i"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->oldZoomLevel:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mAnimatingObject:I

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->lastTouchTime:J

    .line 51
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "apiKey"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->oldZoomLevel:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mAnimatingObject:I

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->lastTouchTime:J

    .line 41
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->init()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/maps/ui/IgMapsView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getHashtable()Ljava/util/Hashtable;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 212
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mHashtable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mMap"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 214
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 215
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mapService"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 218
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 219
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mapCache"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 222
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mHashtable:Ljava/util/Hashtable;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mHashtable:Ljava/util/Hashtable;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method private trimCache()V
    .locals 2

    .prologue
    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getHashtable()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getHashtable()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    const-string v0, "IgMapsView"

    const-string v1, "clear cache failed"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addAnimatingObject()V
    .locals 6

    .prologue
    .line 156
    iget v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mAnimatingObject:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mAnimatingObject:I

    .line 157
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mTimer:Ljava/util/Timer;

    .line 159
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/instagram/android/maps/ui/IgMapsView$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/IgMapsView$1;-><init>(Lcom/instagram/android/maps/ui/IgMapsView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 171
    :cond_0
    return-void
.end method

.method public declared-synchronized addPhotoOverlays(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/android/maps/ui/PhotoOverlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, newOverlays:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/instagram/android/maps/ui/PhotoOverlay;>;"
    const/4 v0, 0x0

    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getOverlays()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/instagram/android/maps/ui/MapsShadowOverlay;

    if-eqz v1, :cond_1

    .line 231
    const/4 v0, 0x1

    move v1, v0

    .line 233
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/PhotoOverlay;

    .line 234
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getOverlays()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 236
    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public declared-synchronized clearOldOverlays(D)V
    .locals 4
    .parameter "matchingTimestamp"

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 102
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/Overlay;

    .line 104
    instance-of v2, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;

    if-eqz v2, :cond_0

    .line 105
    check-cast v0, Lcom/instagram/android/maps/ui/PhotoOverlay;

    .line 106
    iget-wide v2, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;->lastMatchingTimestamp:J

    long-to-double v2, v2

    cmpl-double v0, v2, p1

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public contains(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z
    .locals 5
    .parameter "point"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getLatitudeSpan()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 185
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getLatitudeSpan()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 186
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getLongitudeSpan()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 187
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getLongitudeSpan()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 188
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitudeE6()I

    move-result v4

    if-le v4, v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitudeE6()I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitudeE6()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitudeE6()I

    move-result v0

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 130
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getZoomLevel()I

    move-result v0

    iget v1, p0, Lcom/instagram/android/maps/ui/IgMapsView;->oldZoomLevel:I

    if-eq v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mListener:Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mListener:Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;

    invoke-interface {v0}, Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;->onZoom()V

    .line 133
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->trimCache()V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getZoomLevel()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->oldZoomLevel:I

    .line 137
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->draw(Landroid/graphics/Canvas;)V

    .line 65
    return-void
.end method

.method public fireOnOverlayTouched()V
    .locals 2

    .prologue
    .line 96
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->lastTouchTime:J

    .line 97
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mTimer:Ljava/util/Timer;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mDetachWindowListener:Lcom/instagram/android/maps/ui/IgMapsView$DetachWindowListener;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mDetachWindowListener:Lcom/instagram/android/maps/ui/IgMapsView$DetachWindowListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/maps/ui/IgMapsView$DetachWindowListener;->onDetachedFromWindow(Landroid/view/View;)V

    .line 148
    :cond_1
    invoke-super {p0}, Lcom/google/android/maps/MapView;->onDetachedFromWindow()V

    .line 149
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 117
    iget-wide v2, p0, Lcom/instagram/android/maps/ui/IgMapsView;->lastTouchTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/MapController;->zoomInFixing(II)Z

    .line 119
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->lastTouchTime:J

    .line 124
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 121
    :cond_1
    iput-wide v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->lastTouchTime:J

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mListener:Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/instagram/android/maps/ui/IgMapsView;->oldCenterGeoPoint:Lcom/google/android/maps/GeoPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instagram/android/maps/ui/IgMapsView;->oldCenterGeoPoint:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/instagram/android/maps/ui/IgMapsView;->oldCenterGeoPoint:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mListener:Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;

    invoke-interface {v0}, Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;->onPan()V

    .line 76
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->trimCache()V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgMapsView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->oldCenterGeoPoint:Lcom/google/android/maps/GeoPoint;

    .line 81
    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeAnimatingObject()V
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mAnimatingObject:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mAnimatingObject:I

    .line 175
    iget v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mAnimatingObject:I

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mTimer:Ljava/util/Timer;

    .line 181
    :cond_0
    return-void
.end method

.method public setDetachWindowListener(Lcom/instagram/android/maps/ui/IgMapsView$DetachWindowListener;)V
    .locals 0
    .parameter "detachWindowListener"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mDetachWindowListener:Lcom/instagram/android/maps/ui/IgMapsView$DetachWindowListener;

    .line 153
    return-void
.end method

.method public setOnPanListener(Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgMapsView;->mListener:Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;

    .line 60
    return-void
.end method
