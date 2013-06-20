.class Lcom/instagram/android/maps/PhotoMapsActivity$21$1;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

.field final synthetic val$cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity$21;Lcom/instagram/android/maps/clustering/QuadtreeCluster;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iput-object p2, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->val$cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 797
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    new-instance v1, Lcom/instagram/android/maps/ui/MapMediaPopup;

    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v2, v2, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    iget-object v3, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v3, v3, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    iget-object v4, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->val$cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->getGeoMedia(Lcom/instagram/android/maps/clustering/QuadtreeCluster;)Ljava/util/List;
    invoke-static {v3, v4}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1100(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/clustering/QuadtreeCluster;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v4, v4, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v4}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v5, v5, Lcom/instagram/android/maps/PhotoMapsActivity$21;->val$overlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/instagram/android/maps/ui/MapMediaPopup;-><init>(Landroid/app/Activity;Ljava/util/List;Landroid/view/View;Lcom/instagram/android/maps/ui/PhotoOverlay;)V

    #setter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;
    invoke-static {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$002(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/MapMediaPopup;)Lcom/instagram/android/maps/ui/MapMediaPopup;

    .line 798
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$000(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/MapMediaPopup;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v1, v1, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v6, v6}, Lcom/instagram/android/maps/ui/MapMediaPopup;->showAtLocation(Landroid/view/View;III)V

    .line 799
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v1, v1, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mBackButtonReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$2100(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BROADCAST_PHOTOMAPS_BACK_PRESSED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 801
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$000(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/MapMediaPopup;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$21$1$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$21$1$1;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity$21$1;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->setDismissRunnable(Ljava/lang/Runnable;)V

    .line 811
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$000(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/MapMediaPopup;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$21$1$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$21$1$2;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity$21$1;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->setFinishedAnimationListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;)V

    .line 822
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->configureStateOfButtons()V
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1700(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    .line 824
    return-void
.end method
