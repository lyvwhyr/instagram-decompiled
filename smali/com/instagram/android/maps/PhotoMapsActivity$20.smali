.class Lcom/instagram/android/maps/PhotoMapsActivity$20;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Lcom/instagram/android/maps/ui/events/OnTapListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

.field final synthetic val$overlay:Lcom/instagram/android/maps/ui/PhotoOverlay;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/PhotoOverlay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 762
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$20;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    iput-object p2, p0, Lcom/instagram/android/maps/PhotoMapsActivity$20;->val$overlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTap(Lcom/instagram/android/maps/clustering/QuadtreeCluster;)Z
    .locals 6
    .parameter "cluster"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 766
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 767
    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity$20;->val$overlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    invoke-virtual {v2}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getCluster()Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 768
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/maps/PhotoMapsActivity$20;->val$overlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    invoke-virtual {v3}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getCluster()Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-virtual {v2, v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->reverse(Lcom/instagram/android/model/GeoMedia;)V

    :goto_0
    move v0, v1

    .line 784
    :cond_0
    :goto_1
    return v0

    .line 770
    :cond_1
    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity$20;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    new-instance v3, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

    iget-object v4, p0, Lcom/instagram/android/maps/PhotoMapsActivity$20;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    iget-object v5, p0, Lcom/instagram/android/maps/PhotoMapsActivity$20;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v5}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/android/maps/ui/IgMapsView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v5

    invoke-direct {v3, v4, p1, v5}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/clustering/QuadtreeCluster;Lcom/google/android/maps/Projection;)V

    #setter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mEditOrZoomPopup:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;
    invoke-static {v2, v3}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1902(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;)Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

    .line 771
    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity$20;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mEditOrZoomPopup:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;
    invoke-static {v2}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1900(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/maps/PhotoMapsActivity$20;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v3}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v4, v0, v0}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 776
    :cond_2
    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity$20;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v2}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/ui/IgMapsView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    .line 779
    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity$20;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-virtual {v2, p1, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->zoomToBoundingBox(Lcom/instagram/android/maps/clustering/QuadtreeCluster;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 782
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$20;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$20;->val$overlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->showPopupPhotos(Lcom/instagram/android/maps/clustering/QuadtreeCluster;Lcom/instagram/android/maps/ui/PhotoOverlay;)Z
    invoke-static {v0, p1, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$2000(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/clustering/QuadtreeCluster;Lcom/instagram/android/maps/ui/PhotoOverlay;)Z

    move-result v0

    goto :goto_1
.end method
