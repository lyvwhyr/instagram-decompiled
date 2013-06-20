.class public Lcom/instagram/android/maps/PhotoMapsActivity;
.super Lcom/google/android/maps/MapActivity;
.source "PhotoMapsActivity.java"


# static fields
.field public static final BROADCAST_PHOTOMAPS_BACK_PRESSED:Ljava/lang/String; = "BROADCAST_PHOTOMAPS_BACK_PRESSED"

.field public static final MIN_ZOOM_LEVEL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PhotoMap"

.field public static final ZOOM_ACTION_DELAY_MILLIS:I = 0x15e

.field private static mMostRecentActivity:Lcom/instagram/android/maps/PhotoMapsActivity;


# instance fields
.field private mBackButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mBoundsSet:Z

.field private mCurrentClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/clustering/QuadtreeCluster;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

.field private mCurrentZoomLevel:I

.field private mEditFinishedReceiver:Landroid/content/BroadcastReceiver;

.field private mEditModePopupWindow:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

.field private mEditOrZoomPopup:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

.field private mHandler:Landroid/os/Handler;

.field private mLastMapState:Lcom/instagram/android/maps/PhotoMapsActivity$MapState;

.field private mMapController:Lcom/google/android/maps/MapController;

.field private mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

.field private mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

.field private mMapsEditManagerChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

.field private mMapsModeChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;

.field private mPanAndZoomListener:Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;

.field private mPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/maps/PhotoMapsActivity$MapState;",
            ">;"
        }
    .end annotation
.end field

.field private mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;

.field private mReviewLaunched:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mPreviousStates:Ljava/util/List;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentZoomLevel:I

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mHandler:Landroid/os/Handler;

    .line 91
    iput-boolean v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mReviewLaunched:Z

    .line 93
    new-instance v0, Lcom/instagram/android/maps/PhotoMapsActivity$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$1;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mBackButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v0, Lcom/instagram/android/maps/PhotoMapsActivity$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$2;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mEditFinishedReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    iput-boolean v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mBoundsSet:Z

    .line 974
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/MapMediaPopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    return-object v0
.end method

.method static synthetic access$002(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/MapMediaPopup;)Lcom/instagram/android/maps/ui/MapMediaPopup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    return-object p1
.end method

.method static synthetic access$100(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->processEditingResult()V

    return-void
.end method

.method static synthetic access$1000(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentClusters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/clustering/QuadtreeCluster;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->getGeoMedia(Lcom/instagram/android/maps/clustering/QuadtreeCluster;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mPreviousStates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/instagram/android/maps/PhotoMapsActivity;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->processPhotos(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->initializeMapBoundsFromTree()V

    return-void
.end method

.method static synthetic access$1500(Lcom/instagram/android/maps/PhotoMapsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->isCurrentUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/instagram/android/maps/PhotoMapsActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->updateProgressBarState(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->configureStateOfButtons()V

    return-void
.end method

.method static synthetic access$1800(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/google/android/maps/MapController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapController:Lcom/google/android/maps/MapController;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mEditOrZoomPopup:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;)Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mEditOrZoomPopup:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

    return-object p1
.end method

.method static synthetic access$200(Lcom/instagram/android/maps/PhotoMapsActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->updateClusters(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/clustering/QuadtreeCluster;Lcom/instagram/android/maps/ui/PhotoOverlay;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/maps/PhotoMapsActivity;->showPopupPhotos(Lcom/instagram/android/maps/clustering/QuadtreeCluster;Lcom/instagram/android/maps/ui/PhotoOverlay;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mBackButtonReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/maps/PhotoMapsActivity;->moveToTree(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->configureGridButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/PhotoMapsActivity$MapState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->handleStateList(Lcom/instagram/android/maps/PhotoMapsActivity$MapState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->configureZoomButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/widget/PhotoMapsOptionsWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mEditModePopupWindow:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    return-object v0
.end method

.method static synthetic access$802(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/widget/PhotoMapsOptionsWindow;)Lcom/instagram/android/widget/PhotoMapsOptionsWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mEditModePopupWindow:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    return-object p1
.end method

.method static synthetic access$900(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->startFetchGeoMediaRequest()V

    return-void
.end method

.method public static canZoom(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z
    .locals 11
    .parameter "maxGeoPoint"
    .parameter "minGeoPoint"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 682
    new-array v8, v9, [F

    .line 683
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 684
    aget v0, v8, v10

    .line 685
    const-string v1, "PhotoMap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Distance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/high16 v1, 0x43fa

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v0, v9

    :goto_0
    return v0

    :cond_0
    move v0, v10

    goto :goto_0
.end method

.method private configureEditListeners(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 575
    .local p1, photos:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;"
    new-instance v0, Lcom/instagram/android/maps/PhotoMapsActivity$17;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$17;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapsEditManagerChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    .line 589
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapsEditManagerChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->addListener(Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;)V

    .line 593
    new-instance v0, Lcom/instagram/android/maps/PhotoMapsActivity$18;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$18;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapsModeChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;

    .line 613
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapsModeChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->addModeChangeListener(Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;)V

    .line 614
    return-void
.end method

.method private configureGridButton()V
    .locals 4

    .prologue
    .line 914
    const/4 v1, 0x0

    .line 916
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .line 918
    iget-object v3, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/instagram/android/maps/ui/IgMapsView;->contains(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    const/4 v0, 0x1

    .line 924
    :goto_0
    sget v1, Lcom/facebook/g;->layout_maps_button_grid:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 925
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private configureStateOfButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 308
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    sget v0, Lcom/facebook/g;->layout_maps_button_back:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    sget v0, Lcom/facebook/g;->layout_maps_button_edit:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    sget v0, Lcom/facebook/g;->layout_maps_button_edit_cancel:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    sget v0, Lcom/facebook/g;->layout_maps_button_edit_done:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    sget v0, Lcom/facebook/g;->layout_maps_button_zoom:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    sget v0, Lcom/facebook/g;->layout_maps_button_grid:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :goto_0
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->configureZoomButton()V

    .line 342
    return-void

    .line 316
    :cond_0
    sget v0, Lcom/facebook/g;->layout_maps_button_zoom:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    sget v0, Lcom/facebook/g;->layout_maps_button_grid:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 319
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    sget v0, Lcom/facebook/g;->layout_maps_button_back:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    sget v0, Lcom/facebook/g;->layout_maps_button_edit:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getNumToBeRemoved()I

    move-result v0

    if-lez v0, :cond_1

    .line 324
    sget v0, Lcom/facebook/g;->layout_maps_button_edit_cancel:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :goto_1
    sget v0, Lcom/facebook/g;->layout_maps_button_edit_done:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 326
    :cond_1
    sget v0, Lcom/facebook/g;->layout_maps_button_edit_cancel:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 330
    :cond_2
    sget v0, Lcom/facebook/g;->layout_maps_button_back:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    sget v0, Lcom/facebook/g;->layout_maps_button_edit:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 337
    :goto_2
    sget v0, Lcom/facebook/g;->layout_maps_button_edit_cancel:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    sget v0, Lcom/facebook/g;->layout_maps_button_edit_done:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 335
    :cond_3
    sget v0, Lcom/facebook/g;->layout_maps_button_edit:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private configureZoomButton()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mPreviousStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 422
    sget v0, Lcom/facebook/g;->layout_maps_button_zoom:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    sget v0, Lcom/facebook/g;->layout_maps_button_zoom:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private disablePanAndZoomListener()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgMapsView;->setOnPanListener(Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;)V

    .line 396
    return-void
.end method

.method private enablePanAndZoomListener()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mPanAndZoomListener:Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgMapsView;->setOnPanListener(Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;)V

    .line 400
    return-void
.end method

.method private getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    invoke-static {}, Lcom/instagram/util/BuildInfoUtil;->getAppType()Lcom/instagram/android/InstagramAppType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/InstagramAppType;->getMapsApiKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGeoMedia(Lcom/instagram/android/maps/clustering/QuadtreeCluster;)Ljava/util/List;
    .locals 3
    .parameter "cluster"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/maps/clustering/QuadtreeCluster;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 928
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 929
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 930
    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getItem()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 932
    :cond_0
    return-object v1
.end method

.method public static getMostRecent()Lcom/instagram/android/maps/PhotoMapsActivity;
    .locals 1

    .prologue
    .line 971
    sget-object v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMostRecentActivity:Lcom/instagram/android/maps/PhotoMapsActivity;

    return-object v0
.end method

.method private getZoomForBounds(IDDDD)I
    .locals 10
    .parameter "mapdisplay"
    .parameter "min_lat"
    .parameter "max_lat"
    .parameter "min_lon"
    .parameter "max_lon"

    .prologue
    .line 1008
    const-wide v0, 0x40b8e30000000000L

    const-wide v2, 0x404ca5dcc63f1412L

    div-double v2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x404ca5dcc63f1412L

    div-double v4, p4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x404ca5dcc63f1412L

    div-double v4, p2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const-wide v6, 0x404ca5dcc63f1412L

    div-double v6, p4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x404ca5dcc63f1412L

    div-double v6, p8, v6

    const-wide v8, 0x404ca5dcc63f1412L

    div-double v8, p6, v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 1011
    const-wide/high16 v2, 0x4020

    const-wide v4, 0x3ffa504816f0068eL

    mul-double/2addr v0, v4

    mul-int v4, p1, p1

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 1013
    cmpl-double v2, p2, p4

    if-nez v2, :cond_0

    cmpl-double v2, p2, p4

    if-nez v2, :cond_0

    .line 1014
    const-wide/high16 v0, 0x4026

    .line 1017
    :cond_0
    double-to-int v0, v0

    return v0
.end method

.method private handleStateList(Lcom/instagram/android/maps/PhotoMapsActivity$MapState;)V
    .locals 3
    .parameter "ms"

    .prologue
    const/4 v2, 0x0

    .line 403
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mPreviousStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mPreviousStates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;

    invoke-virtual {v0}, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;->getZoomLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;->getZoomLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mPreviousStates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mLastMapState:Lcom/instagram/android/maps/PhotoMapsActivity$MapState;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;->getZoomLevel()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mLastMapState:Lcom/instagram/android/maps/PhotoMapsActivity$MapState;

    invoke-virtual {v1}, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;->getZoomLevel()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mLastMapState:Lcom/instagram/android/maps/PhotoMapsActivity$MapState;

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mPreviousStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mPreviousStates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;

    invoke-virtual {v0}, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;->getZoomLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;->getZoomLevel()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mLastMapState:Lcom/instagram/android/maps/PhotoMapsActivity$MapState;

    if-eqz v0, :cond_3

    .line 413
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mPreviousStates:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mLastMapState:Lcom/instagram/android/maps/PhotoMapsActivity$MapState;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 417
    :cond_3
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mLastMapState:Lcom/instagram/android/maps/PhotoMapsActivity$MapState;

    .line 418
    return-void
.end method

.method private initializeMapBoundsFromTree()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 274
    .line 276
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentClusters:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .line 279
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getPoints()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getPoints()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v4, v5, :cond_5

    :cond_0
    :goto_1
    move-object v1, v0

    .line 282
    goto :goto_0

    .line 283
    :cond_1
    if-eqz v1, :cond_4

    .line 284
    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getCenter()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    move-object v4, v2

    .line 288
    :goto_2
    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/Quadtree;->getMaxGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/Quadtree;->getMinGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/Quadtree;->getMaxGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitudeE6()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/Quadtree;->getMinGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitudeE6()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 290
    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/Quadtree;->getMaxGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitudeE6()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/Quadtree;->getMinGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitudeE6()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 291
    new-instance v4, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v4, v0, v1}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 294
    :cond_2
    if-eqz v4, :cond_3

    .line 295
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 298
    :cond_3
    new-instance v0, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/IgMapsView;->getLatitudeSpan()I

    move-result v2

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/IgMapsView;->getLongitudeSpan()I

    move-result v3

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/IgMapsView;->getZoomLevel()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;IILcom/google/android/maps/GeoPoint;I)V

    invoke-direct {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->handleStateList(Lcom/instagram/android/maps/PhotoMapsActivity$MapState;)V

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mBoundsSet:Z

    .line 300
    return-void

    :cond_4
    move-object v4, v2

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private isCurrentUser()Z
    .locals 2

    .prologue
    .line 303
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private moveToTree(Lcom/instagram/android/maps/clustering/Quadtree;)V
    .locals 3
    .parameter "quadtree"

    .prologue
    .line 696
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/Quadtree;->getMinGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/Quadtree;->getMaxGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/maps/PhotoMapsActivity;->moveToTree(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;Ljava/lang/Runnable;)V

    .line 697
    return-void
.end method

.method private moveToTree(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;Ljava/lang/Runnable;)V
    .locals 4
    .parameter "minGeoPoint"
    .parameter "maxGeoPoint"
    .parameter "runnable"

    .prologue
    .line 702
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitudeE6()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitudeE6()I

    move-result v2

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitudeE6()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 709
    if-eqz p3, :cond_0

    .line 710
    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v1, v0, p3}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;)V

    .line 714
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    goto :goto_0
.end method

.method private processEditingResult()V
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->takeEditingResult()Ljava/util/List;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 373
    invoke-direct {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->processPhotos(Ljava/util/List;)V

    .line 375
    iget-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mBoundsSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mReviewLaunched:Z

    if-eqz v0, :cond_1

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->initializeMapBoundsFromTree()V

    .line 392
    :cond_1
    :goto_0
    return-void

    .line 378
    :cond_2
    iget-boolean v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mReviewLaunched:Z

    if-eqz v1, :cond_3

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mReviewLaunched:Z

    .line 381
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$12;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$12;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 387
    :cond_3
    if-eqz v0, :cond_1

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->processPhotos(Ljava/util/List;)V

    goto :goto_0
.end method

.method private processPhotos(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, photos:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 501
    invoke-static {}, Lcom/instagram/android/maps/clustering/Quadtree;->getGlobalQuadtree()Lcom/instagram/android/maps/clustering/Quadtree;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;

    .line 502
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mPanAndZoomListener:Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgMapsView;->setOnPanListener(Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;)V

    .line 504
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/instagram/android/maps/clustering/GeoPhoto;

    .line 505
    iget-object v7, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;

    new-instance v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-interface {v5}, Lcom/instagram/android/maps/clustering/GeoPhoto;->getLatitude()D

    move-result-wide v1

    invoke-interface {v5}, Lcom/instagram/android/maps/clustering/GeoPhoto;->getLongitude()D

    move-result-wide v3

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DDLjava/lang/Comparable;)V

    invoke-virtual {v7, v0}, Lcom/instagram/android/maps/clustering/Quadtree;->add(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    goto :goto_0

    .line 508
    :cond_0
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mPhotos:Ljava/util/List;

    .line 511
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    sget v0, Lcom/facebook/g;->layout_maps_button_edit:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mPhotos:Ljava/util/List;

    .line 514
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mPhotos:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->configureEditListeners(Ljava/util/List;)V

    .line 516
    :cond_1
    invoke-direct {p0, v9}, Lcom/instagram/android/maps/PhotoMapsActivity;->updateClusters(Z)V

    .line 517
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->configureGridButton()V

    .line 519
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 520
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    sget v1, Lcom/facebook/h;->popup_photo_maps_empty_map_intro:I

    sget v2, Lcom/facebook/l;->IgDialogFull:I

    invoke-direct {v0, p0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;II)V

    sget v1, Lcom/facebook/k;->ok:I

    new-instance v2, Lcom/instagram/android/maps/PhotoMapsActivity$14;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$14;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    .line 531
    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$15;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$15;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 538
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 568
    :cond_2
    :goto_1
    return-void

    .line 540
    :cond_3
    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-static {p0}, Lcom/instagram/android/service/UserStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/UserStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/service/UserStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 544
    const/4 v1, 0x0

    .line 546
    if-eqz v0, :cond_5

    .line 547
    const-string v1, "@%s"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 550
    :goto_2
    if-eqz v0, :cond_4

    .line 551
    sget v1, Lcom/facebook/k;->user_has_no_geotagged_photos:I

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/maps/PhotoMapsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 556
    :goto_3
    new-instance v1, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 557
    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;

    .line 558
    sget v0, Lcom/facebook/k;->return_to_profile:I

    new-instance v2, Lcom/instagram/android/maps/PhotoMapsActivity$16;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$16;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    .line 565
    invoke-virtual {v1}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 553
    :cond_4
    sget v0, Lcom/facebook/k;->could_not_load_photo_map_information:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private showPopupPhotos(Lcom/instagram/android/maps/clustering/QuadtreeCluster;Lcom/instagram/android/maps/ui/PhotoOverlay;)Z
    .locals 4
    .parameter "cluster"
    .parameter "overlay"

    .prologue
    const/4 v3, 0x0

    .line 887
    new-instance v0, Lcom/instagram/android/maps/ui/MapMediaPopup;

    invoke-direct {p0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->getGeoMedia(Lcom/instagram/android/maps/clustering/QuadtreeCluster;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/instagram/android/maps/ui/MapMediaPopup;-><init>(Landroid/app/Activity;Ljava/util/List;Landroid/view/View;Lcom/instagram/android/maps/ui/PhotoOverlay;)V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    .line 888
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/instagram/android/maps/ui/MapMediaPopup;->showAtLocation(Landroid/view/View;III)V

    .line 889
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$22;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$22;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->setDismissRunnable(Ljava/lang/Runnable;)V

    .line 898
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$23;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$23;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->setFinishedAnimationListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;)V

    .line 909
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->configureStateOfButtons()V

    .line 910
    const/4 v0, 0x1

    return v0
.end method

.method private startFetchGeoMediaRequest()V
    .locals 3

    .prologue
    .line 448
    sget v0, Lcom/facebook/g;->layout_maps_button_retry:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 450
    new-instance v0, Lcom/instagram/api/loaderrequest/FetchGeoMediaRequest;

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getSupportLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/maps/PhotoMapsActivity$13;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$13;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/instagram/api/loaderrequest/FetchGeoMediaRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/FetchGeoMediaRequest;->perform(Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method private updateClusters(Z)V
    .locals 17
    .parameter "forceRecluster"

    .prologue
    .line 719
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;

    if-nez v1, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    if-nez v1, :cond_4

    .line 724
    invoke-static {}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getGlobalRegion()Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    .line 742
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/IgMapsView;->getZoomLevel()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentZoomLevel:I

    if-le v1, v2, :cond_8

    const/4 v1, 0x1

    move v3, v1

    .line 744
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/IgMapsView;->getZoomLevel()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentZoomLevel:I

    .line 746
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/IgMapsView;->getOverlays()Ljava/util/List;

    move-result-object v8

    .line 747
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 749
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/IgMapsView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v10

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/e;->clustering_distance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v2, v4, v1, v10}, Lcom/instagram/android/maps/clustering/Quadtree;->getClustersUsingPixelDistance(Lcom/instagram/android/maps/clustering/QuadtreeRegion;ILcom/google/android/maps/Projection;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentClusters:Ljava/util/ArrayList;

    .line 754
    const-string v1, "PhotoMap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clusters: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 758
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentClusters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .line 760
    new-instance v11, Lcom/instagram/android/maps/ui/PhotoOverlay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual/range {p0 .. p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v11, v1, v2, v4}, Lcom/instagram/android/maps/ui/PhotoOverlay;-><init>(Lcom/instagram/android/maps/clustering/QuadtreeCluster;Lcom/instagram/android/maps/ui/IgMapsView;Landroid/content/Context;)V

    .line 762
    new-instance v2, Lcom/instagram/android/maps/PhotoMapsActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lcom/instagram/android/maps/PhotoMapsActivity$20;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/PhotoOverlay;)V

    invoke-virtual {v11, v2}, Lcom/instagram/android/maps/ui/PhotoOverlay;->setOnTapListener(Lcom/instagram/android/maps/ui/events/OnTapListener;)V

    .line 788
    new-instance v2, Lcom/instagram/android/maps/PhotoMapsActivity$21;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lcom/instagram/android/maps/PhotoMapsActivity$21;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/PhotoOverlay;)V

    invoke-virtual {v11, v2}, Lcom/instagram/android/maps/ui/PhotoOverlay;->setOnDoubleTapListener(Lcom/instagram/android/maps/ui/events/OnDoubleTapListener;)V

    .line 831
    const/4 v4, 0x0

    .line 833
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/Overlay;

    .line 834
    instance-of v13, v2, Lcom/instagram/android/maps/ui/PhotoOverlay;

    if-eqz v13, :cond_3

    .line 835
    check-cast v2, Lcom/instagram/android/maps/ui/PhotoOverlay;

    .line 836
    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v13

    invoke-virtual {v2}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getCluster()Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    move-result-object v14

    invoke-virtual {v14}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->isEqual(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 844
    :goto_4
    if-eqz v2, :cond_9

    .line 845
    iput-wide v5, v2, Lcom/instagram/android/maps/ui/PhotoOverlay;->lastMatchingTimestamp:J

    .line 846
    invoke-virtual {v2, v1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->setCluster(Lcom/instagram/android/maps/clustering/QuadtreeCluster;)V

    .line 847
    invoke-virtual {v2}, Lcom/instagram/android/maps/ui/PhotoOverlay;->updateCounts()V

    goto :goto_3

    .line 726
    :cond_4
    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/IgMapsView;->getZoomLevel()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_6

    .line 727
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->isGlobalRegion()Z

    move-result v1

    if-nez v1, :cond_5

    .line 728
    invoke-static {}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getGlobalRegion()Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    goto/16 :goto_1

    .line 729
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentZoomLevel:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v2}, Lcom/instagram/android/maps/ui/IgMapsView;->getZoomLevel()I

    move-result v2

    if-ne v1, v2, :cond_2

    goto/16 :goto_0

    .line 733
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/IgMapsView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v2}, Lcom/instagram/android/maps/ui/IgMapsView;->getLatitudeSpan()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v3}, Lcom/instagram/android/maps/ui/IgMapsView;->getLongitudeSpan()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->fromMapViewGeometry(Lcom/google/android/maps/GeoPoint;II)Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    move-result-object v1

    .line 734
    if-nez p1, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    invoke-virtual {v2, v1}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->containsRegion(Lcom/instagram/android/maps/clustering/QuadtreeRegion;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 735
    :cond_7
    const-wide/high16 v2, 0x4000

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/maps/clustering/QuadtreeRegion;->getScaledCopy(D)Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentRegion:Lcom/instagram/android/maps/clustering/QuadtreeRegion;

    goto/16 :goto_1

    .line 742
    :cond_8
    const/4 v1, 0x0

    move v3, v1

    goto/16 :goto_2

    .line 849
    :cond_9
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 854
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    long-to-double v4, v5

    invoke-virtual {v1, v4, v5}, Lcom/instagram/android/maps/ui/IgMapsView;->clearOldOverlays(D)V

    .line 856
    if-eqz v3, :cond_e

    .line 857
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/maps/ui/PhotoOverlay;

    .line 858
    const-wide/16 v4, 0x0

    .line 859
    const/4 v3, 0x0

    .line 860
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/Overlay;

    .line 861
    instance-of v6, v2, Lcom/instagram/android/maps/ui/PhotoOverlay;

    if-eqz v6, :cond_f

    .line 862
    check-cast v2, Lcom/instagram/android/maps/ui/PhotoOverlay;

    .line 863
    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getCluster()Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v6

    invoke-virtual {v2}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getCluster()Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    move-result-object v7

    invoke-virtual {v7}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getMeterDistance(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)D

    move-result-wide v6

    .line 864
    const-wide v13, 0x415312d000000000L

    cmpg-double v13, v6, v13

    if-gez v13, :cond_f

    if-eqz v3, :cond_c

    cmpg-double v13, v6, v4

    if-gez v13, :cond_f

    :cond_c
    move-wide v3, v6

    :goto_7
    move-wide v15, v3

    move-wide v4, v15

    move-object v3, v2

    .line 869
    goto :goto_6

    .line 871
    :cond_d
    if-eqz v3, :cond_b

    .line 872
    invoke-virtual {v3}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getCluster()Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getCluster()Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v4

    invoke-static {v2, v4, v10}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getPixelDistance(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/google/android/maps/Projection;)D

    move-result-wide v4

    .line 873
    const-wide/high16 v6, 0x4079

    cmpg-double v2, v4, v6

    if-gez v2, :cond_b

    .line 874
    invoke-virtual {v3}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getCluster()Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v2

    iput-object v2, v1, Lcom/instagram/android/maps/ui/PhotoOverlay;->closestPoint:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    goto :goto_5

    .line 881
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v1, v9}, Lcom/instagram/android/maps/ui/IgMapsView;->addPhotoOverlays(Ljava/util/Collection;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/IgMapsView;->invalidate()V

    goto/16 :goto_0

    :cond_f
    move-object v2, v3

    move-wide v15, v4

    move-wide v3, v15

    goto :goto_7

    :cond_10
    move-object v2, v4

    goto/16 :goto_4
.end method

.method private updateProgressBarState(Z)V
    .locals 2
    .parameter "isLoading"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/instagram/android/widget/ListUtil;->updateProgressBarState(Landroid/os/Handler;ZLandroid/view/View;)V

    .line 1022
    return-void
.end method

.method private zoomToGeoPoint(Lcom/google/android/maps/GeoPoint;)V
    .locals 3
    .parameter "newCenter"

    .prologue
    .line 690
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 691
    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/IgMapsView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 692
    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapController:Lcom/google/android/maps/MapController;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/MapController;->zoomInFixing(II)Z

    .line 693
    return-void
.end method


# virtual methods
.method public getPhotos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mPhotos:Ljava/util/List;

    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/af;
    .locals 1

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/af;

    move-result-object v0

    return-object v0
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 963
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 1053
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "BROADCAST_PHOTOMAPS_BACK_PRESSED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    const-string v0, "PhotoMapsActivity"

    const-string v1, "broadcast"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :goto_0
    return-void

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1058
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->onBackPressed()V

    goto :goto_0

    .line 1060
    :cond_1
    const-string v0, "PhotoMapsActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 117
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    sget v0, Lcom/facebook/h;->layout_maps:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->setContentView(I)V

    .line 122
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->setMostRecentMapsUserId(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->setEditMode(Z)V

    .line 127
    :cond_0
    new-instance v0, Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/maps/ui/IgMapsView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    .line 128
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v0, v4}, Lcom/instagram/android/maps/ui/IgMapsView;->setBuiltInZoomControls(Z)V

    .line 129
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$3;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$3;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgMapsView;->setDetachWindowListener(Lcom/instagram/android/maps/ui/IgMapsView$DetachWindowListener;)V

    .line 137
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v0, v3}, Lcom/instagram/android/maps/ui/IgMapsView;->setClickable(Z)V

    .line 138
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v0, v3}, Lcom/instagram/android/maps/ui/IgMapsView;->setEnabled(Z)V

    .line 139
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 145
    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/ui/IgMapsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    sget v0, Lcom/facebook/g;->layout_maps_container:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapController:Lcom/google/android/maps/MapController;

    .line 150
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapController:Lcom/google/android/maps/MapController;

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    const v2, 0x25353cb

    const v3, -0x1dede0d

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 151
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapController:Lcom/google/android/maps/MapController;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 153
    new-instance v0, Lcom/instagram/android/maps/PhotoMapsActivity$4;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$4;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mPanAndZoomListener:Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;

    .line 180
    sget v0, Lcom/facebook/g;->layout_maps_button_back:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$5;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$5;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    sget v0, Lcom/facebook/g;->layout_maps_button_edit:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$6;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$6;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    sget v0, Lcom/facebook/g;->layout_maps_button_edit_cancel:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$7;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$7;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    sget v0, Lcom/facebook/g;->layout_maps_button_edit_done:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$8;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$8;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    sget v0, Lcom/facebook/g;->layout_maps_button_edit:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    sget v0, Lcom/facebook/g;->layout_maps_button_retry:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$9;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$9;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->configureStateOfButtons()V

    .line 224
    sget v0, Lcom/facebook/g;->layout_maps_button_grid:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$10;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$10;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    sget v0, Lcom/facebook/g;->layout_maps_button_grid:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 239
    sget v0, Lcom/facebook/g;->layout_maps_button_zoom:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$11;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$11;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->startFetchGeoMediaRequest()V

    .line 259
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1031
    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapsEditManagerChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->removeListener(Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;)V

    .line 1033
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapsModeChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->removeModeChangeListener(Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;)V

    .line 1036
    :cond_0
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mBackButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 1039
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMostRecentActivity:Lcom/instagram/android/maps/PhotoMapsActivity;

    .line 1041
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 1042
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->dismissAll()V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mEditModePopupWindow:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mEditModePopupWindow:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    invoke-virtual {v0}, Lcom/instagram/android/widget/PhotoMapsOptionsWindow;->dismiss()V

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mEditOrZoomPopup:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mEditOrZoomPopup:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;->dismiss()V

    .line 440
    :cond_2
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mBackButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 441
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mEditFinishedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 443
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 444
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 346
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 349
    const/4 v0, 0x0

    sput v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->NUM_ANIMATING_ITEMS:I

    .line 352
    invoke-static {}, Lcom/instagram/android/maps/ui/PhotoOverlay;->removeLock()V

    .line 356
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->setMostRecentMapsUserId(Ljava/lang/String;)V

    .line 360
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mEditFinishedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.maps.manager.MapReviewed"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 363
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->processEditingResult()V

    .line 367
    :cond_0
    sput-object p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMostRecentActivity:Lcom/instagram/android/maps/PhotoMapsActivity;

    .line 368
    return-void
.end method

.method public startReviewFragment()V
    .locals 2

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mReviewLaunched:Z

    .line 267
    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->startFragment(Ljava/lang/String;Landroid/support/v4/app/p;)V

    .line 270
    return-void
.end method

.method public zoomToBoundingBox(Lcom/instagram/android/maps/clustering/QuadtreeCluster;Z)Z
    .locals 13
    .parameter "cluster"
    .parameter "animate"

    .prologue
    const-wide v5, 0x3fef5c28f5c28f5cL

    .line 623
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v0

    .line 624
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMinGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v1

    .line 625
    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v10

    .line 626
    new-instance v11, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitudeE6()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitudeE6()I

    move-result v3

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitudeE6()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v11, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 631
    invoke-static {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->canZoom(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    move-result v12

    .line 633
    if-eqz v12, :cond_0

    .line 635
    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 636
    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 637
    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 638
    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 640
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->getWidth()I

    move-result v1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/instagram/android/maps/PhotoMapsActivity;->getZoomForBounds(IDDDD)I

    move-result v0

    .line 643
    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v10}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/maps/PhotoMapsActivity$19;

    invoke-direct {v3, p0, v0, v11}, Lcom/instagram/android/maps/PhotoMapsActivity$19;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;ILcom/google/android/maps/GeoPoint;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;)V

    .line 678
    :goto_0
    return v12

    .line 666
    :cond_0
    if-eqz p2, :cond_1

    .line 667
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, v11}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    goto :goto_0

    .line 669
    :cond_1
    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v2, v11}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 670
    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->mMapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitudeE6()I

    move-result v3

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitudeE6()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitudeE6()I

    move-result v0

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitudeE6()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    mul-double/2addr v0, v5

    double-to-int v0, v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/MapController;->zoomToSpan(II)V

    goto :goto_0
.end method
