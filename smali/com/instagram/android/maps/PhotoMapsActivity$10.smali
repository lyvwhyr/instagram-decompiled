.class Lcom/instagram/android/maps/PhotoMapsActivity$10;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$10;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$10;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mCurrentClusters:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1000(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .line 229
    iget-object v3, p0, Lcom/instagram/android/maps/PhotoMapsActivity$10;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v3}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/instagram/android/maps/ui/IgMapsView;->contains(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/instagram/android/maps/PhotoMapsActivity$10;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->getGeoMedia(Lcom/instagram/android/maps/clustering/QuadtreeCluster;)Ljava/util/List;
    invoke-static {v3, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1100(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/clustering/QuadtreeCluster;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 233
    :cond_1
    invoke-static {v1}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->launchGeoGridFragment(Ljava/util/List;)V

    .line 234
    return-void
.end method
