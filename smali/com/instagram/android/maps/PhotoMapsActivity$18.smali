.class Lcom/instagram/android/maps/PhotoMapsActivity$18;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$18;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modeChange(Z)V
    .locals 3
    .parameter "isEditing"

    .prologue
    const/4 v2, 0x0

    .line 596
    const-string v0, "PhotoMapsActivity"

    const-string v1, "MODE CHANGE!"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    if-eqz p1, :cond_2

    .line 598
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$18;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$18;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/maps/ui/MapsShadowOverlay;

    if-nez v0, :cond_1

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$18;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->getOverlays()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/ui/MapsShadowOverlay;

    invoke-direct {v1}, Lcom/instagram/android/maps/ui/MapsShadowOverlay;-><init>()V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 609
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$18;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->configureStateOfButtons()V
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1700(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    .line 610
    return-void

    .line 602
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$18;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$18;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/maps/ui/MapsShadowOverlay;

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$18;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method
