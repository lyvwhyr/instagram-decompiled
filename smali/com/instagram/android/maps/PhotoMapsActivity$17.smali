.class Lcom/instagram/android/maps/PhotoMapsActivity$17;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$17;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapsChanged()V
    .locals 3

    .prologue
    .line 578
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$17;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/Overlay;

    .line 579
    instance-of v2, v0, Lcom/instagram/android/maps/ui/PhotoOverlay;

    if-eqz v2, :cond_0

    .line 580
    check-cast v0, Lcom/instagram/android/maps/ui/PhotoOverlay;

    .line 581
    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->reset()V

    goto :goto_0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$17;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->configureStateOfButtons()V
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1700(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    .line 586
    return-void
.end method
