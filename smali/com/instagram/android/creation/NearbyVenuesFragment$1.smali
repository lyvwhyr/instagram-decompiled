.class Lcom/instagram/android/creation/NearbyVenuesFragment$1;
.super Ljava/lang/Object;
.source "NearbyVenuesFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/NearbyVenuesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$1;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 84
    check-cast p2, Landroid/location/Location;

    .line 85
    .end local p2
    check-cast p1, Lcom/instagram/android/location/BestLocationListener;

    .line 87
    .end local p1
    invoke-virtual {p1, p2}, Lcom/instagram/android/location/BestLocationListener;->isAccurateEnough(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$1;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #calls: Lcom/instagram/android/creation/NearbyVenuesFragment;->locationUpdated(Landroid/location/Location;)V
    invoke-static {v0, p2}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$000(Lcom/instagram/android/creation/NearbyVenuesFragment;Landroid/location/Location;)V

    .line 90
    :cond_0
    return-void
.end method
