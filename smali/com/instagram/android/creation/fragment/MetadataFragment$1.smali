.class Lcom/instagram/android/creation/fragment/MetadataFragment$1;
.super Ljava/lang/Object;
.source "MetadataFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$1;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 121
    check-cast p2, Landroid/location/Location;

    .line 122
    .end local p2
    check-cast p1, Lcom/instagram/android/location/BestLocationListener;

    .line 124
    .end local p1
    invoke-virtual {p1, p2}, Lcom/instagram/android/location/BestLocationListener;->isAccurateEnough(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$1;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #calls: Lcom/instagram/android/creation/fragment/MetadataFragment;->setLocation(Landroid/location/Location;)V
    invoke-static {v0, p2}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$100(Lcom/instagram/android/creation/fragment/MetadataFragment;Landroid/location/Location;)V

    .line 128
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$1;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-virtual {v1}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/instagram/foursquare/NearbyVenuesService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    const-string v1, "location"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$1;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-virtual {v1}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 133
    :cond_0
    return-void
.end method
