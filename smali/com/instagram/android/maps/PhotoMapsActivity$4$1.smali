.class Lcom/instagram/android/maps/PhotoMapsActivity$4$1;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/maps/PhotoMapsActivity$4;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$4$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 168
    invoke-static {}, Lcom/instagram/android/maps/ui/PhotoOverlay;->removeLock()V

    .line 170
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$4$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$4;

    iget-object v6, v0, Lcom/instagram/android/maps/PhotoMapsActivity$4;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    new-instance v0, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$4$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$4;

    iget-object v1, v1, Lcom/instagram/android/maps/PhotoMapsActivity$4;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity$4$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$4;

    iget-object v2, v2, Lcom/instagram/android/maps/PhotoMapsActivity$4;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v2}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/ui/IgMapsView;->getLatitudeSpan()I

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/maps/PhotoMapsActivity$4$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$4;

    iget-object v3, v3, Lcom/instagram/android/maps/PhotoMapsActivity$4;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v3}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/maps/ui/IgMapsView;->getLongitudeSpan()I

    move-result v3

    iget-object v4, p0, Lcom/instagram/android/maps/PhotoMapsActivity$4$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$4;

    iget-object v4, v4, Lcom/instagram/android/maps/PhotoMapsActivity$4;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v4}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/maps/ui/IgMapsView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/android/maps/PhotoMapsActivity$4$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$4;

    iget-object v5, v5, Lcom/instagram/android/maps/PhotoMapsActivity$4;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v5}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/android/maps/ui/IgMapsView;->getZoomLevel()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;IILcom/google/android/maps/GeoPoint;I)V

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->handleStateList(Lcom/instagram/android/maps/PhotoMapsActivity$MapState;)V
    invoke-static {v6, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$500(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/PhotoMapsActivity$MapState;)V

    .line 172
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$4$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$4;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$4;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    const/4 v1, 0x1

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->updateClusters(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$200(Lcom/instagram/android/maps/PhotoMapsActivity;Z)V

    .line 173
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$4$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$4;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$4;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->configureGridButton()V
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$300(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    .line 174
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$4$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$4;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$4;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->configureZoomButton()V
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$600(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    .line 175
    return-void
.end method
