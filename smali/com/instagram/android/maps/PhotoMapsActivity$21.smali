.class Lcom/instagram/android/maps/PhotoMapsActivity$21;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Lcom/instagram/android/maps/ui/events/OnDoubleTapListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

.field final synthetic val$overlay:Lcom/instagram/android/maps/ui/PhotoOverlay;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/PhotoOverlay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    iput-object p2, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21;->val$overlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Lcom/instagram/android/maps/clustering/QuadtreeCluster;)Z
    .locals 4
    .parameter "cluster"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    .line 794
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMinGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;

    invoke-direct {v3, p0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity$21;Lcom/instagram/android/maps/clustering/QuadtreeCluster;)V

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->moveToTree(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;Ljava/lang/Runnable;)V
    invoke-static {v0, v1, v2, v3}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$2200(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;Ljava/lang/Runnable;)V

    .line 827
    const/4 v0, 0x1

    return v0
.end method
