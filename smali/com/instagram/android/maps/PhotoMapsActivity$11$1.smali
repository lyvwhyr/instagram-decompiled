.class Lcom/instagram/android/maps/PhotoMapsActivity$11$1;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/maps/PhotoMapsActivity$11;

.field final synthetic val$mapState:Lcom/instagram/android/maps/PhotoMapsActivity$MapState;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity$11;Lcom/instagram/android/maps/PhotoMapsActivity$MapState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$11$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$11;

    iput-object p2, p0, Lcom/instagram/android/maps/PhotoMapsActivity$11$1;->val$mapState:Lcom/instagram/android/maps/PhotoMapsActivity$MapState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$11$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$11;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$11;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$11$1;->val$mapState:Lcom/instagram/android/maps/PhotoMapsActivity$MapState;

    invoke-virtual {v1}, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;->getZoomLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 251
    return-void
.end method
