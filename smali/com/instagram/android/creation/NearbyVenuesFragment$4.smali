.class Lcom/instagram/android/creation/NearbyVenuesFragment$4;
.super Ljava/lang/Object;
.source "NearbyVenuesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/NearbyVenuesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$4;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$4;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/InstagramApplication;

    .line 186
    invoke-virtual {v0}, Lcom/instagram/android/InstagramApplication;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->isLocationValid(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$4;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    iget-object v2, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$4;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #getter for: Lcom/instagram/android/creation/NearbyVenuesFragment;->mPresetSearchString:Ljava/lang/String;
    invoke-static {v2}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$800(Lcom/instagram/android/creation/NearbyVenuesFragment;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/instagram/android/creation/NearbyVenuesFragment;->fetchVenues(Landroid/location/Location;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$900(Lcom/instagram/android/creation/NearbyVenuesFragment;Landroid/location/Location;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$4;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #calls: Lcom/instagram/android/creation/NearbyVenuesFragment;->startUpdatingLocation()V
    invoke-static {v0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$1000(Lcom/instagram/android/creation/NearbyVenuesFragment;)V

    goto :goto_0
.end method
