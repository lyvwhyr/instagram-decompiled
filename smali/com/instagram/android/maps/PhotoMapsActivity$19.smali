.class Lcom/instagram/android/maps/PhotoMapsActivity$19;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

.field final synthetic val$newCenter:Lcom/google/android/maps/GeoPoint;

.field final synthetic val$targetZoomLevel:I


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;ILcom/google/android/maps/GeoPoint;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$19;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    iput p2, p0, Lcom/instagram/android/maps/PhotoMapsActivity$19;->val$targetZoomLevel:I

    iput-object p3, p0, Lcom/instagram/android/maps/PhotoMapsActivity$19;->val$newCenter:Lcom/google/android/maps/GeoPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$19;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$700(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$19$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$19$1;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity$19;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 661
    return-void
.end method
