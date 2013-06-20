.class Lcom/instagram/android/maps/PhotoMapsActivity$4;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Lcom/instagram/android/maps/ui/events/OnPanAndZoomListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$4;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPan()V
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcom/instagram/android/maps/ui/PhotoOverlay;->removeLock()V

    .line 158
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$4;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    const/4 v1, 0x0

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->updateClusters(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$200(Lcom/instagram/android/maps/PhotoMapsActivity;Z)V

    .line 159
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$4;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->configureGridButton()V
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$300(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    .line 160
    return-void
.end method

.method public onZoom()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$4;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$700(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$4$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$4$1;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity$4;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    return-void
.end method
