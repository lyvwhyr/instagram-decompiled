.class Lcom/instagram/android/maps/PhotoMapsActivity$19$1;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/maps/PhotoMapsActivity$19;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity$19;)V
    .locals 0
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$19$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 652
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$19$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$19;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$19;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapController:Lcom/google/android/maps/MapController;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1800(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/google/android/maps/MapController;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$19$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$19;

    iget v1, v1, Lcom/instagram/android/maps/PhotoMapsActivity$19;->val$targetZoomLevel:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 653
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$19$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$19;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$19;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$700(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$19$1$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$19$1$1;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity$19$1;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 659
    return-void
.end method
