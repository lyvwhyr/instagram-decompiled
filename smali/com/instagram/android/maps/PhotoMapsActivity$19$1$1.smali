.class Lcom/instagram/android/maps/PhotoMapsActivity$19$1$1;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/instagram/android/maps/PhotoMapsActivity$19$1;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity$19$1;)V
    .locals 0
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$19$1$1;->this$2:Lcom/instagram/android/maps/PhotoMapsActivity$19$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$19$1$1;->this$2:Lcom/instagram/android/maps/PhotoMapsActivity$19$1;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$19$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$19;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$19;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapController:Lcom/google/android/maps/MapController;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1800(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/google/android/maps/MapController;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$19$1$1;->this$2:Lcom/instagram/android/maps/PhotoMapsActivity$19$1;

    iget-object v1, v1, Lcom/instagram/android/maps/PhotoMapsActivity$19$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$19;

    iget-object v1, v1, Lcom/instagram/android/maps/PhotoMapsActivity$19;->val$newCenter:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 657
    return-void
.end method
